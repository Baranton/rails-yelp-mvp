class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, presence: :true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :phone_number, presence: true

  # before_validation :downcase

  # def downcase
  #   self.category = self.category.downcase
  # end
end
