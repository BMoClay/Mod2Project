class Comment < ApplicationRecord
    belongs_to :post, dependent: :destroy
    belongs_to :user
    validates_presence_of :comment
end