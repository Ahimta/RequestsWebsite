# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
comings = [
	{ applicant: 'capplicant1', reason: 'creason1', user_id: 0, accepted: true },
	{ applicant: 'capplicant2', reason: 'creason2', user_id: 0, accepted: false },
	{ applicant: 'capplicant3', reason: 'creason3', user_id: 0 }
]

leaves = [
	{ applicant: 'lapplicant1', reason: 'lreason1', user_id: 0, accepted: true },
	{ applicant: 'lapplicant2', reason: 'lreason2', user_id: 0, accepted: false },
	{ applicant: 'lapplicant3', reason: 'lreason3', user_id: 0 }
]

tickets = [
	{ applicant: 'tapplicant1', line: 'line1', user_id: 0, accepted: true },
	{ applicant: 'tapplicant2', line: 'line2', user_id: 0, accepted: false },
	{ applicant: 'tapplicant3', line: 'line3', user_id: 0 }
]

vacations = [
	{ applicant: 'vapplicant1', duration: 1, from: '1/1/2013', to: '1/6/2013', user_id: 0, accepted: true },
	{ applicant: 'vapplicant2', duration: 2, from: '1/1/2014', to: '1/6/2014', user_id: 0, accepted: false },
	{ applicant: 'vapplicant3', duration: 3, from: '1/1/2015', to: '1/6/2015', user_id: 0 }
]

comings.each { |coming| Coming.where(coming).first_or_create! }
leaves.each { |leave| Leave.where(leave).first_or_create! }
tickets.each { |ticket| Ticket.where(ticket).first_or_create! }
vacations.each { |vacation| Vacation.where(vacation).first_or_create! }
