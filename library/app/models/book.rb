class Book < ActiveRecord::Base
  belongs_to :location, foreign_key: :location
end
