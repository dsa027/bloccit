require 'rails_helper'
require_relative '../../db/random_data'

RSpec.describe Topic, type: :model do
  let(:name) { RandomData.random_name }
  let(:description) { RandomData.random_paragraph }
  let(:public) { true }
  let(:topic) { Topic.create!(name: name, description: description) }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(topic).to have_attributes(name: name, description: description, public: public)
    end

    it "is public by default" do
      expect(topic.public).to be(true)
    end

    it { is_expected.to have_many(:posts) }
  end
end