class Post < ApplicationRecord
    has_many :name, dependent: :destroy
end
