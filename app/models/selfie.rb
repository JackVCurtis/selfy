class Selfie < ActiveRecord::Base
  validates :body, presence: true
end
