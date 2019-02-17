module Models
  class Universe < Sequel::Model(:universe)
    one_to_many :elements
  end
end
