class User < ApplicationRecord
    has_many :reviews
    has_secure_password

    validates :name, {presence: true, uniqueness: true, length: { minimum: 3, maximum: 12 }}
    validates :email, {presence: true, uniqueness: true}
    validates :password, presence: true
    
end
