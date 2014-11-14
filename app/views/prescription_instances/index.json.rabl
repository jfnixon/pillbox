collection @instances

node(:start) { |event| event.start.to_datetime }
node(:end)   { |event| event.end.to_datetime }
node(:color) { "blue" }
