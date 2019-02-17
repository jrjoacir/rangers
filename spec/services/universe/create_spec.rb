RSpec.describe Services::Universe::Create do
  context '#execute' do
    subject { Services::Universe::Create.execute(universe_hash) }
    let(:universe_hash) { { name: 'Universe', description: 'Description' } }

    context 'when is valid' do
      it 'return an universe model' do
        expect(subject).to be_an Models::Universe
        expect(subject.id).to be_an Integer
      end

      it 'create universe in database' do
        expect(subject).to eq Models::Universe.last
      end
    end

    context 'when is invalid' do
      context 'when universe already exists' do
        before { FactoryBot.create(:universe) }
        let(:error) { Errors::AlreadyExist }
        let(:error_message) { "Universe #{universe_hash[:name]} already exists" }

        it 'raise Errors::AlreadyExist' do
          expect { subject }.to raise_error(error, error_message)
        end
      end
    end
  end
end
