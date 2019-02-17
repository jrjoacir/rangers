require_dir 'app'
require 'database_cleaner'

module Seeds
  APP = { name: 'Rangers',
          description: 'Ranges Application Description' }.freeze
  UNIVERSE = { name: 'Solar System',
               description: 'Solar System description' }.freeze

  def self.execute
    DatabaseCleaner.strategy = :deletion
    DatabaseCleaner.clean
    Services::App::Create.execute(APP)

    universe = Models::Universe.create(UNIVERSE)

    elements = [{ name: 'Earth', universe_id: universe.id },
                { name: 'Pluto', universe_id: universe.id }]
    elements.each { |element| Models::Element.create(element) }
  end
end
