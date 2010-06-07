class Tire < ActiveRecord::Base
  belongs_to :fleet
  belongs_to :assay
  belongs_to :faults
  belongs_to :causes

end
