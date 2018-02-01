require 'rails_helper'
require_relative '../../db/random_data'

RSpec.describe AdvertisementsController, type: :controller do
  let(:my_ad) { Advertisement.create!(title: RandomData.random_title, copy: RandomData.random_paragraph, price: rand(1..255)) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: my_ad.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "increases the number of Question by 1" do
      expect{ post :create, params: { advertisement: { title: RandomData.random_title, copy: RandomData.random_paragraph, price: 32 } } }.to change(Advertisement,:count).by(1)
    end
  end

end
