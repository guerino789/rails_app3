class Vessel < ApplicationRecord
    has_many :work_scopes
    has_many :shops, through: :work_scopes
end
