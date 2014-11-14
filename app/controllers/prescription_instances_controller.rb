class PrescriptionInstancesController < ApplicationController
  def index
    @instances = PrescriptionInstance.occurrences_between Date.today, 1.week.from_now
  end
end
