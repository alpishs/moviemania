class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchase_option

  delegate :content, to: :purchase_option

  def alive?
    remaining_time_in_min > 0
  end

  def remaining_time_in_min
    [(expiry_date - Time.now).to_i / 1.minute, 0].max
  end

  private

  def expiry_date
    (self.created_at + 2.days)
  end
end
