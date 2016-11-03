class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_images
  accepts_nested_attributes_for :prototype_images
  has_one :main_image, -> { where(content_type: 0) }, class_name: "PrototypeImage"
  validates :title, :concept, :catch_copy, :prototype_images, presence: true, on: [:create, :edit, :update]

end
