class Pet < ApplicationRecord
  SPECIES = ["Dog", "Cat", "Finch", "Turtle", "Horse", "Fish"]
  validates :species, inclusion: {in: SPECIES}
  validates :date_found, presence: true

  def found_days_ago
    (Date.today - date_found).to_i
  end
end
