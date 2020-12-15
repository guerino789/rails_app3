class Shop < ApplicationRecord
    has_many :work_scopes
    has_many :vessels, through: :work_scopes
end
