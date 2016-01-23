class CategoryLink < ActiveRecord::Base
  belongs_to :item, polymorphic: true
  belongs_to :category
end
