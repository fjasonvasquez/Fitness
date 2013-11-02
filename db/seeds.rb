# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Workout.destroy_all

Workout.create([
	{name: 'Pushup', repetitions: 'integer', sets: 'integer'},
	#{name: 'Java', typing_system: 'static', memory_management: 'garbage collection'},
	#{name: 'C++', typing_system: 'static', memory_management: 'manual'},
	#{name: 'ObjC', typing_system: 'static', memory_management: 'reference count'}
	])

User.destroy_all

User.create([
	{user: 'Email address', password: 'dynamic' password_confirmation: 'confirm'}
	])
