class Startup < ActiveRecord::Base
  validates :description,  :price, :url, presence: true
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {only_integer: true, greater_than: 0}

  validates :url, uniqueness: true, format: {
  with: URI::regexp(%w(http https)), 
  multiline: true, 
  message: 'must be a url for gif, jpg, or png image.'
  }
  has_many :reviews, dependent: :destroy

  def formatted_price
  	#rice_in_dollars = price.to_f / 100
  	format("%.2f", price)
  end

  belongs_to :user
end

