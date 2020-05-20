class Strain < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true

    has_many :conection_strains
    has_many :wine, through: :conection_strains

    def to_s
        name
    end
end
