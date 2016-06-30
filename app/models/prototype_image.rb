class PrototypeImage < ActiveRecord::Base
  belongs_to :prototype
  validates :prototype_id
end
