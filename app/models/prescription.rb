require 'ice_cube_methods'

class Prescription < ActiveRecord::Base
  include IceCubeMethods
  belongs_to :user
  belongs_to :time_block

  before_validation :set_times_from_time_block

  private

  def set_times_from_time_block
    self[:to_time] = time_block.end_time
    self[:from_time] = time_block.start_time
  end

end
