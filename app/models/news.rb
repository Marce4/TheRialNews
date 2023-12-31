class News < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :users, through: :reactions
end
