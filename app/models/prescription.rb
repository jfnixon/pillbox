require 'ice_cube_methods'

class Prescription < ActiveRecord::Base
  include IceCubeMethods
  belongs_to :user
end
