require 'rails_helper'

RSpec.describe 'Api::V1::BikeController', type: :request do

  let!(:bike) { Bike.create(model: 'M123') }

  let(:bike_id) { bike.id }

  describe "GET api/v1/bikes/:bike_id" do

    before do
      get "/api/v1/bikes/#{bike_id}"
    end

    it 'returns http :ok' do
      expect(response.status).to eq(200)
    end

  end

end
