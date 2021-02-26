# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Subject.destroy_all
Word.destroy_all

Subject.create(name: "bank")
Word.create(spelling: "deposit", pos: "verb", definition: "put money in a bank account", sentences: "I want to deposit this check.", subject_id: 1)
Word.create(spelling: "withdraw", pos: "verb", definition: "take money out of a bank account", sentences: "They withdraw $700 every week.", subject_id: 1)

Subject.create(name: "dinner")
Word.create(spelling: "eat out", pos: "verb", definition: "have a meal away from home", sentences: "We eat out on Fridays.", subject_id: 2)
Word.create(spelling: "cook", pos: "verb", definition: "prepare food using heat", sentences: "I like to cook healthy meals", subject_id: 2)





