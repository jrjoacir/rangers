RSpec.describe Models::Universe do
  context '#initialize' do
    let(:universe) { Models::Universe.new(universe_hash) }
    let(:universe_hash) { { name: 'Universe', description: 'Description' } }

    it 'universe returns name' do
      expect(universe.name).to eq universe_hash[:name]
    end

    it 'universe returns description' do
      expect(universe.description).to eq universe_hash[:description]
    end
  end
end
