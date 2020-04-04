class Musician < ActiveRecord::Base
    validates_presence_of :songs, :monthly_listeners, :fans
    has_many :tour
end
