class Dose < ApplicationRecord
  belongs_to :medicine
  belongs_to :log
end
