class Kitten < ApplicationRecord
  def kitten_info
    "Name: #{self.name} | Age: #{self.age} | Cuteness: #{self.cuteness} | Softness: #{self.softness}"
  end
end
