class Log < ApplicationRecord
    belongs_to :patient
    has_many :doses
end
