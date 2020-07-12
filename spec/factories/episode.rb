FactoryBot.define do
  factory :episode do
    sequence(:title) { |n| "Episode: #{n}" }
    plot { "The winter is coming." }
  end
end