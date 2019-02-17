module Models
  class Element < Sequel::Model(:element)
    many_to_one :universe
  end
end
