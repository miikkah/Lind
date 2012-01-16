class Category < ActiveRecord::Base
  has_and_belongs_to_many :guidelines
  
  def subcategories
    Category.where(:parentId => id)
  end
end
