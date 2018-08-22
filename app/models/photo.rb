class Photo < ApplicationRecord
  belongs_to :profile, polymorphic: true
  mount_uploader :photo, PhotoUploader
end
