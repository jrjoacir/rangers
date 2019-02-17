module Services
  module Universe
    class Create
      include Validators::Universe::Create

      def initialize(universe)
        self.universe = universe
      end

      def self.execute(params)
        new(Models::Universe.new(params)).execute
      end

      def execute
        validate!
        universe.save
      end

      private

      attr_accessor :universe
    end
  end
end
