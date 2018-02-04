require_relative '../../db/random_data'

FactoryBot.define do
  factory :comment do
    body RandomData.random_paragraph
    post
    user
  end
end
