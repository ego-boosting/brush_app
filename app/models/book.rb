class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy

  validates :body, presence: true, length: { maximum: 200 }
  validates :title, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
