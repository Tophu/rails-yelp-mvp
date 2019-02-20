class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

# 'presence' and 'true' = must include :key
# 'inclusion { in: ["new array"] }' = Must include elements inside the NEW Array
