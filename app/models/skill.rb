class Skill < ApplicationRecord
    has_many :skill_uses, dependent: :destroy
end
