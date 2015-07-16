class Startup < ActiveRecord::Base
  validates :description, :name, :price, :url, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 0}
  has_many :reviews
  belongs_to :user
end
