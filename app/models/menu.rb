class Menu < ApplicationRecord
  has_and_belongs_to_many :entrees
  has_and_belongs_to_many :beverages
  has_and_belongs_to_many :desserts
  accepts_nested_attributes_for :entrees, :desserts, :beverages, :reject_if => :all_blank, :allow_destroy => true
end
