class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{last_name}, #{first_name}"
  end
end
