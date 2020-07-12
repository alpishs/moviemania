FactoryBot.define do
  factory :movie do
    sequence :title do |n| 
      "MI-6 fallout #{n}"
    end
    plot { "Hey its mission." }
  end
end