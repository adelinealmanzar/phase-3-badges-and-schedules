def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator attendees
    attendees.map do |attendee|
        badge_maker(attendee)
    end
end

def assign_rooms speakers
    new_arr = speakers.map do |speaker|
        "Hello, #{speaker}! You'll be assigned to room #{speakers.index("#{speaker }") + 1}!"
    end
    new_arr
end

def printer(arr)
    batch_badge_creator(arr).each do |el|
        puts el
    end
    assign_rooms(arr).each do |el|
        puts el
    end
end
