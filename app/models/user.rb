class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15 }
    validates :email, presence: true, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
    validates :password, presence: true, length: {maxmum: 8,maximum: 32}, format: { with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/ }
                         
    has_secure_password
end
