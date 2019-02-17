RSpec.describe Endpoints::V1::Universe::Post do
  subject { post('v1/universe', params) }
  let(:params) { { name: 'Universe', description: 'Universe description' } }

  context 'when exist an universe' do
    before { FactoryBot.create(:universe) }
    let(:response_body) { { message: "Universe #{params[:name]} already exists" }.to_json }

    it 'return http status 409 - Conflict' do
      expect(subject.status).to eq 409
    end

    it 'return error response body' do
      expect(subject.body).to eq response_body
    end
  end

  context 'when no exist universe' do
    let(:response_body) { Models::Universe.last.to_hash.to_json }

    it 'return http status 201 - Created' do
      expect(subject.status).to eq 201
    end

    it 'return universe response body' do
      expect(subject.body).to eq response_body
    end
  end
end
