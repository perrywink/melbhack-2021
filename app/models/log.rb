class Log < ApplicationRecord
    belongs_to :patient
    has_many :doses

    def start_time
        time_admr
    end

    def end_time
        time_admr
    end
end
