require_relative '../../db/random_data'

FactoryBot.define do
  factory :post do
    title RandomData.random_title
    body RandomData.random_paragraph
    topic
    user
    rank 0.0
  end
end
