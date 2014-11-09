class PrescriptionInstancesController < ApplicationController
  def index
    binding.pry
    @instances = PrescriptionInstance.occurrences_between Date.today, 1.week.from_now
  end
end
