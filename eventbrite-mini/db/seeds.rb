# Demo User
Person.create(firstname: "Ben", lastname: "Stewart", email: "example1234@gmail.com")

#Demo Events
Event.create(name: "Basketball Game", date: Time.now )
Event.create(name: "Dinner", date: Time.now + 1 )
Event.create(name: "Personal Trainer", date: Time.now + 2)
Event.create(name: "Movie", date: Time.now + 1.5 )
Event.create(name: "Walk The Dog", date: Time.now + 2.5 )

person = Person.first
event = Event.first

#Demo Invites
person.invites.create(event: event)
event.invites.create(person: person)
