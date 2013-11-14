class Book < ActiveRecord::Base
  attr_accessible :ISBN, :content, :contributor, :language, :name, :picture, :publication_date, :rating
end
