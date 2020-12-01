class Post < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :comments
    validates_presence_of :title, :content
end