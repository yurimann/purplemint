class Event < ApplicationRecord

  self.per_page = 10
  
  def self.newest_first
    Event.order('date DESC')
  end

  def self.most_recent
    Event.newest_first.limit(10)
  end
end
