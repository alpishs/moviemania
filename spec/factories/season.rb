FactoryBot.define do
  factory :season do
    sequence(:title) { |n| "Its true: Season #{n}" }
    plot { "Disney the wonder land" }
    after :create do |season|
      create_list :episode, 10, season: season
    end
  end
end