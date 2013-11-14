class Sfjob < ActiveRecord::Base
  attr_accessible :company, :description, :name, :price, :published_date
end
