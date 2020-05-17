class Wine < ApplicationRecord
    has_many :conection_strains
    has_many :strain, through: :conection_strains
    has_and_belongs_to_many :oenologists

    def to_s
        name
    end
end
