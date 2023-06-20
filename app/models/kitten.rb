class Kitten < ApplicationRecord

  validates :name, presence: true
  validates :age, presence: true
  validates :cuteness, presence: true
  validates :softness, presence: true

  def kitten_info
    "Name: #{self.name} | Age: #{self.age} | Cuteness: #{self.cuteness} | Softness: #{self.softness}"
  end
end
