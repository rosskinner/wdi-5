days_of_the_week  = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

this = days_of_the_week.pop
p days_of_the_week.unshift this

#days_of_the_week.unshift days_of_the_week.pop

week = []
weekdays = days_of_the_week[(1..5)]
p weekdays.length
weekends = days_of_the_week.last, days_of_the_week.first

p weekdays
p weekends
p week << weekdays << weekends

p week.delete_at 1

p week
p week.flatten!.sort!

