class User < ApplicationRecord
    has_many :microposts
    validates :name , :email , presence: true 
    validates :name , length: { minimum: 6}
end
