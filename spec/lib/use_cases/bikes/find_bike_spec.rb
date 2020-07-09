require 'spec_helper'
require 'wisper'
require 'services/infra/logger'
require 'services/infra/fake_logger_adapter'
require 'entities/bike'
require 'repositories/repository_registry'
require 'repositories/bike_repository'
require 'use_cases/bikes/find_bike'

RSpec.describe UseCases::Bikes::FindBike do

  let(:repository) { instance_double(Repositories::BikeRepository) }

  let(:use_case) { described_class.new(bike_repository: repository) }

  before do
    Services::Infra::Logger.adapter = Services::Infra::FakeLoggerAdapter.new
  end

  describe '#call' do
    let(:bike_id) { '123' }

    context 'with an existent bike' do
      let(:bike) { Entities::Bike.new(id: bike_id, model: 'Bike Model', status: 'active') }

      before do
        allow(repository).to receive(:find_bike_by)
          .with(id: bike_id)
          .and_return(bike)
      end

      it 'broadcasts event :find_bike_success' do
        expect { use_case.call(bike_id) }.to broadcast(:find_bike_success, bike)
      end
    end

    context 'with an inexistent bike' do
      before do
        allow(repository).to receive(:find_bike_by)
          .with(id: bike_id)
          .and_raise('Not found')
      end

      it 'broadcasts event :find_bike_fail' do
        expect { use_case.call(bike_id) }.to broadcast(:find_bike_fail)
      end
    end
  end

end
