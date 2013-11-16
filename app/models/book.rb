class Book < ActiveRecord::Base
  attr_accessible :ISBN, :content, :contributor, :language, :name, :picture, :publication_date, :rating

  def to_param
    "#{id}-#{name.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
  end
end
