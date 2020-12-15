class WorkScope < ApplicationRecord
    belongs_to :shops
    has_many :vessels
end
