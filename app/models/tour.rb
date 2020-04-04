class Tour < ActiveRecord::Base
  validates_presence_of :cities, :venues, :tickets_sold
  belongs_to :musicians
end
