class PrototypeImage < ActiveRecord::Base
  # enum status: { main: 0, sub: 1 }
  # belongs_to :prototype
  # validates :prototype_id
  validates :image, :content_type, presence: true
  mount_uploader :content, ImageUploader
  belongs_to :prototype
  enum content_type: %i(main sub)
end
