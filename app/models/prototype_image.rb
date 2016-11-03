class PrototypeImage < ActiveRecord::Base
  validates :content_type, presence: true
  mount_uploader :prototype, ImageUploader
  belongs_to :prototype
  enum content_type: %i(main sub)
end
