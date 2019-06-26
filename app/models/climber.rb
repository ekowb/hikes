class Climber < ApplicationRecord
    belongs_to :mountain
    validates :name, :age, :country, presence: true
end