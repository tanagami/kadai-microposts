class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :who_favorites, through: :favorites, source: :user #投稿をお気に入りしているユーザを取得
  
end
