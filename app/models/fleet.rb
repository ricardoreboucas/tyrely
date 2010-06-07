class Fleet < ActiveRecord::Base
  has_many :assays
  has_many :tires
end
