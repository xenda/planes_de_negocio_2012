class BusinessPlane < ActiveRecord::Base
  attr_accessible :acknowledgment, :category, :duration, :gross_margin, :roi, :title, :total_investment, :vision
  validates :acknowledgment, :category, :duration, :gross_margin, :roi, :title, :total_investment, :vision, :presence => true

  belongs_to :entrepreneur

  CATEGORIES = ["World Peace", "Tech", "IT", "Education (urgently needed)"]

  def self.search(title)
    BusinessPlane.where("title like ?", "%#{title}%")
  end

end
