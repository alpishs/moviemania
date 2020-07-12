class Movie < ApplicationRecord
  has_many :users, through: :purchases
  has_many :purchase_options, as: :content

  scope :by_date, -> { order('created_at DESC, id DESC') }

end
