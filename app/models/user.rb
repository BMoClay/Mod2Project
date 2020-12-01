class User < ApplicationRecord
    has_many :posts
    has_many :comments

    has_secure_password

    #validates :username, uniqueness: { case_sensitive: false, message: 'please pick a different username that one is taken'}
    #validates :password, uniqueness: { case_sensitive: false, message: 'please pick a different password that one is taken'}
end