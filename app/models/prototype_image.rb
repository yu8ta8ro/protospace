class PrototypeImage < ActiveRecord::Base
  validates :content, :content_type, presence: true
  mount_uploader :content, ImageUploader
  belongs_to :prototype
  enum content_type: %i(main sub)
end
