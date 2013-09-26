class Page < ActiveRecord::Base
  validates :path, :title, presence: true

  validates :path, uniqueness: true

  validates :description, :path, :title, length: { maximum: 255 }

  belongs_to :footer

  def sidebar_html(locale)
    Snippet.find_by(name: sidebar_snippet_name, locale: locale).try(:snippet)
  end
end
