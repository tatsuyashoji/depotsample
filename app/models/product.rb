class Product < ActiveRecord::Base
  has_many :orders, :through => :line_items
  has_many :line_items;
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  validates_uniqueness_of :title
  validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i, :message => 'must be either gif, jpg or png image format'
  validate :price_must_be_at_least_a_cent
  
  def self.find_products_for_sale
    all(:order => "title")
  end
  
protected
  def price_must_be_at_least_a_cent
    errors.add(:price, 'must be at least a cent') if price.nil? || price < 0.01
  end
end
