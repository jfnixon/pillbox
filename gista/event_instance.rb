class EventInstance
  include ActiveModel::AttributeMethods
  
  attr_accessor :title, :start, :end, :allDay, :event_id
  
  def self.occurrences_between(begin_date,end_date)
    # Using Squeel
    # line 1 = Event doesn't repeat, but ends in window
    # line 2 = Event doesn't repeat, but starts in window
    # line 2 = Event doesn't repeat, but starts before and ends after
    # line 4 = Event starts before our end date and repeats until a certain point of time, and that point of time after our begin date
    # line 5 = Event repeats indefinitely, then all we care about is that it has started at somepoint in the last
    results = Event.where{
      ( 
        (repeats == 'never') & 
        (from_date >= begin_date) & 
        (from_date <= end_date)
      ) | ( 
        (repeats == 'never') & 
        (to_date >= begin_date) & 
        (to_date <= end_date)
      ) | ( 
        (repeats == 'never') & 
        (from_date <= begin_date) & 
        (to_date >= end_date)
      ) | ( 
        (repeats != 'never') & 
        (from_date <= end_date) & 
        (repeat_ends == 'on') & 
        (repeat_ends_on >= begin_date)
      ) | ( 
        (repeats != 'never') & 
        (repeat_ends == 'never') & 
        (from_date <= end_date)
      )  
    }
    results.map { |event| 
      event.schedule.occurrences_between(begin_date,end_date).map { |date|
        i = EventInstance.new()
        i.title = event.name
        i.start = date
        i.end = date + event.duration
        i.allDay = event.is_all_day
        i.event_id = event.id
        i
      }
    }.flatten.sort! {|x,y| x.start <=> y.start }
  end
  
end
