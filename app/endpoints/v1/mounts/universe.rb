module Endpoints
  module V1
    module Mounts
      class Universe < Grape::API
        namespace :universe do
          mount Endpoints::V1::Universe::Post
          # mount Endpoints::V1::Universe::Delete
          # mount Endpoints::V1::Universe::Put
          # mount Endpoints::V1::Universe::Get
        end
      end
    end
  end
end
