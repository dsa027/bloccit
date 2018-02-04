require_relative '../../db/random_data'

FactoryBot.define do
  factory :vote do
    value RandomData.random_vote
    post
    user
  end
end
