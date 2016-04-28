# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

reminders = Reminder.create([{ name: 'do_x', body: 'do the x', at: '12:00',  frequency: '10' },
                             # { body: 'do the y', at: , frequency: '15' },
                             # { body: 'do the z', at: , frequency: '20' }
                             ])
