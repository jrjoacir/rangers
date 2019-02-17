module Endpoints
  module V1
    module Universe
      class Post < Grape::API
        desc 'Create an universe'
        params do
          requires :name, type: String, desc: 'Name'
          optional :description, type: String, desc: 'Description'
        end

        post do
          params.slice!(:name, :description)
          universe = Services::Universe::Create.execute(params)
          present universe, with: Entities::V1::Universe
        end
      end
    end
  end
end
