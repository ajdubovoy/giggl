class Photo < ApplicationRecord
  belongs_to :profile, polymorphic: true
end
