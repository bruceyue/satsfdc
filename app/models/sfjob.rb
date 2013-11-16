class Sfjob < ActiveRecord::Base
  attr_accessible :company, :description, :name, :price, :published_date

  def to_param
    "#{id}-#{name.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
  end
end
