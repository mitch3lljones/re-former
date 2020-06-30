class User < ApplicationRecord
    validates :username, presence: true, length: {in: 4..20}, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :password, presence: true, length: {in: 8..30}, uniqueness: true 
end
