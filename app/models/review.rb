class Review < ApplicationRecord
  belongs_to :send, polymorphic: true
  belongs_to :receiver, polymorphic: true
  belongs_to :gig
end
