# coding: utf-8

class ImagesController < ApplicationController
  before_filter :no_browse_menu

  before_filter :find_object, :only => [:new, :edit, :create]

  VALID_BANNER_SIZES = [
      [160, 200]
    ]

  def index
    @images = @current_user.images
  end

  def new
    @image = Image.new
    if session[:image_mode] == 'property'
      @image.property_id = session[:property_id]
    end
  end

  def create
    @image = Image.new(params[:image])

    if session[:image_mode] == 'property'
      @image.property_id = session[:property_id]
    elsif ['banner_advert', 'directory_advert', 'resort'].include? session[:image_mode]
      remove_previous_image
    end

    @image.user_id = @current_user.id

    begin
      if @image.save
        if valid_size_if_banner_advert
          set_main_image_if_first
          if session[:image_mode] == 'banner_advert' || session[:image_mode] == 'directory_advert'
            set_banner_advert_dimensions if session[:image_mode] == 'banner_advert'
            if session[:edit_mode] == 'edit'
              redirect_to(edit_polymorphic_path(@object), :notice => t('images_controller.image_uploaded'))
            else
              redirect_to(basket_path, :notice => t('images_controller.image_uploaded'))
            end
            return
          end
          redirect_to(new_image_path, :notice => t('images_controller.image_uploaded')) and return
        else
          redirect_to(new_image_path, :notice => t('images_controller.invalid_dimensions')) and return
        end
      end
    rescue
    end

    @image.destroy
    redirect_to(new_image_path, :notice => t('images_controller.problem_uploading'))
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update_attributes(params[:image])
      flash[:notice] = t('images_controller.saved')
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    flash[:notice] = t('images_controller.deleted')
    redirect_to :action => 'index'
  end

  protected

  def set_main_image_if_first
    if session[:image_mode] == 'property'
      return if @object.images.count > 1
    end

    @object.image_id = @image.id
    @object.save
  end

  def find_object
    @object = object_class.find(object_id)
  end

  def object_class
    Kernel.const_get(session[:image_mode].classify)
  end

  def object_id
    session[session[:image_mode] + '_id']
  end

  def valid_size_if_banner_advert
    return true unless session[:image_mode] == 'banner_advert'

    VALID_BANNER_SIZES.each do |dimensions|
      return true if @image.dimensions == dimensions
    end

    @image.destroy
    false
  end

  def set_banner_advert_dimensions
    @object.record_dimensions(@image.dimensions)
  end

  def remove_previous_image
    @object.image.destroy if @object.image
  end
end
