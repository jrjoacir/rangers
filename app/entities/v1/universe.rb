module Entities
  module V1
    class Universe < Grape::Entity
      expose :id
      expose :name
      expose :description
    end
  end
end
