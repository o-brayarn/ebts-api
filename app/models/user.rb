class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, :password_confirmation, presence: true, length: { minimum: 8 }
end
