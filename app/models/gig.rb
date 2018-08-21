class Gig < ApplicationRecord
  belongs_to :genre
  belongs_to :organizer, polymorphic: true
end
