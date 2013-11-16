class Training < ActiveRecord::Base
  attr_accessible :description, :name, :t_type, :t_date, :price

  def to_param
    "#{id}-#{name.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
  end
end
