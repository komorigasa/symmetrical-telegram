class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations


  #必須項目
  validates :meal_type, presence:true
  validates :guest_number, presence:true
  validates :meal_allergy, presence:true



end

