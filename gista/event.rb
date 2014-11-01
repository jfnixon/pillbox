class Event < ActiveRecord::Base
  include IceCubeMethods
  
  # My custom attributes. Modify to suite your needs.
  # attr_accessible :description, :name, :host_id, :location_id
  
  # validates :name, :presence => true
  # validates :host_id, :presence => true
  # validates :location_id, :presence => true
  
  # belongs_to :host, :class_name => 'Place'
  # belongs_to :location, :class_name => 'Place'

end
