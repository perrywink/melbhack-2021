class Patient < ApplicationRecord
    belongs_to :user
    has_many :logs
end
