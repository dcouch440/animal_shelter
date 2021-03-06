require 'rails_helper'

describe 'Dog' do

  describe '#destroy', :type => :request do

    let!(:dog) { FactoryBot.create(:dog) }

    context 'when successful' do

      it 'deletes a dog' do
        delete v1_dog_path(dog.id)
        expect(response).to have_http_status :no_content
      end

    end

    context 'when unsuccessful' do

      it 'return a 404' do
        delete v1_dog_path(dog.id + 1)
        expect(response).to have_http_status :not_found
      end

    end

  end

end