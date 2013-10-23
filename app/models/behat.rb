class Behat < ActiveRecord::Base
  attr_accessible :author, :category, :content, :title 
end
