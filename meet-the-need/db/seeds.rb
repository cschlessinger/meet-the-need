# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.create(first_name: "Bob", last_name: "Smith", email: "bobsmith@example.com", zipcode: "90210")
Developer.create(first_name: "Sally", last_name: "Jones", email: "sallyjones@example.com", zipcode: "81239")
Developer.create(first_name: "Fionnuala", last_name: "Jones", email: "fionnualajones@example.com", zipcode: "81239")
Developer.create(first_name: "Adeodatus", last_name: "Jones", email: "adeodatusjones@example.com", zipcode: "94110")
Project.create(title: "LGBT Chat Room", body: "This is a support chat room for LGBT youth", customer_id: 1)
Project.create(title: "Bowling league", body: "BOWLING!!!!!!!!!!!!!!!", customer_id: 1)
Project.create(title: "Bulletin board", body: "some shit", customer_id: 1)

Technology.create(name: "chat")
Technology.create(name: "iOS")
Topic.create(name: "LGBT")
Topic.create(name: "Youth")
DeveloperTechnology.create(developer_id: 1, technology_id: 1)
DeveloperTechnology.create(developer_id: 1, technology_id: 2)
DeveloperTopic.create(developer_id: 1, topic_id: 1)
DeveloperTopic.create(developer_id: 1, topic_id: 2)
ProjectTechnology.create(project_id: 1, technology_id: 1)
ProjectTechnology.create(project_id: 1, technology_id: 2)
ProjectTopic.create(project_id: 1, topic_id: 1)
ProjectTopic.create(project_id: 1, topic_id: 2)
