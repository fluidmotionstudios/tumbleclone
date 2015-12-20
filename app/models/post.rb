class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :user_id, presence: true
  validates :type, presence: true
end
