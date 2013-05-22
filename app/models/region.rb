class Region < ActiveRecord::Base
  belongs_to :country, inverse_of: :regions

  validates :country_id, presence: true
  validates :name, length: { maximum: 100 }, presence: true, uniqueness: { scope: :country }
end
