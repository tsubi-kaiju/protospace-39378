class Prototype < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :comments, dependent: :destroy # prototypeが削除されたら紐づくcommentモデルも削除
  has_one_attached :image  # imageカラムとのアソシエーション

  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :image
  end
end
