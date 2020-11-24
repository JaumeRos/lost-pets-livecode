class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'elephant', 'turtle', 'horse', 'snake']
  validates :name, presence: true
  validates :location, presence: true
  validates :species, inclusion: { in: SPECIES }


  def days_since_found
    (Date.today - found_at).to_i
  end
end
