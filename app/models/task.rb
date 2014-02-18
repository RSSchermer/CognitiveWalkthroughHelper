class Task < ActiveRecord::Base
  belongs_to :walkthrough
  has_many :user_actions, dependent: :destroy
end
