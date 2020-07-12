FactoryBot.define do
  factory :purchase_option do
    factory :purchase_option_movie_hd do
      price { 23.00 }
      video_quality { "HD" }
      association :content, factory: :movie
    end

    factory :purchase_option_movie_sd do
      price { 12.45 }
      video_quality { "SD" }
      association :content, factory: :movie
    end

    factory :purchase_option_season_hd do
      price { 5.59 }
      video_quality { "HD" }
      association :content, factory: :season
    end

    factory :purchase_option_season_sd do
      price { 4.60 }
      video_quality { "SD" }
      association :content, factory: :season
    end
  end
end