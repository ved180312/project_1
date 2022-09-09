class User < ApplicationRecord

    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 6, maximum: 30}
    validates :gender, presence: true, length: { maximum: 1}
end
