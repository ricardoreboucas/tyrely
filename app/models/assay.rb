class Assay < ActiveRecord::Base
  belongs_to :fleet
  has_many :tires
end
