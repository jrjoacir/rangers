module Validators
  module Universe
    module Create
      include Validators::Universe

      def validate!
        already_exist!
      end
    end
  end
end
