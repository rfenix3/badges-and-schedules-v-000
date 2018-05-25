# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.map {|name| badge_maker(name)}
end

def assign_rooms(speakers)
  speakers.map{|speaker| "Hello, #{speaker}! You'll be assigned to room #{speakers.find_index(speaker)+1}!"}
end

def printer(attendees)
  batch_badge_creator(attendees).each{|guest| puts "#{guest}"}
  assign_rooms(attendees).each{|speaker| puts "#{speaker}"}
end
