# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.create(first_name: "Bob", last_name: "Smith", email: "bobsmith@example.com", zipcode: "90210", password: "password")
Developer.create(first_name: "Sally", last_name: "Jones", email: "sallyjones@example.com", zipcode: "81239", password: "password")
Developer.create(first_name: "Frannie", last_name: "Frankie", email: "franniefrankie@example.com", zipcode: "81239", password: "password")
Developer.create(first_name: "Shawn", last_name: "John", email: "shawnjohn@example.com", zipcode: "81239", password: "password")
Project.create(title: "LGBT Chat Room", body: "This is a support chat room for LGBT youth", customer_id: 1)
Project.create(title: "Bowling league", body: "BOWLING!!!!!!!!!!!!!!!", customer_id: 1)
Project.create(title: "Bulletin board", body: "some shit", customer_id: 1)

Technology.create(name: "chat")
Technology.create(name: "iOS")
Topic.create(name: "LGBT")
Topic.create(name: "Youth")
Topic.create(name: "Finance")
Topic.create(name: "Healthcare")
Topic.create(name: "Government")
DeveloperTechnology.create(developer_id: 1, technology_id: 1)
DeveloperTechnology.create(developer_id: 1, technology_id: 2)

DeveloperTopic.create(developer_id: 2, topic_id: 1)
DeveloperTopic.create(developer_id: 2, topic_id: 2)
DeveloperTopic.create(developer_id: 2, topic_id: 3)
DeveloperTopic.create(developer_id: 2, topic_id: 4)
DeveloperTopic.create(developer_id: 2, topic_id: 5)

DeveloperTopic.create(developer_id: 1, topic_id: 1)
DeveloperTopic.create(developer_id: 1, topic_id: 2)
DeveloperTopic.create(developer_id: 1, topic_id: 3)

DeveloperTopic.create(developer_id: 3, topic_id: 1)

ProjectTechnology.create(project_id: 1, technology_id: 1)
ProjectTechnology.create(project_id: 1, technology_id: 2)

ProjectTopic.create(project_id: 1, topic_id: 1)
ProjectTopic.create(project_id: 1, topic_id: 2)
ProjectTopic.create(project_id: 1, topic_id: 3)
ProjectTopic.create(project_id: 1, topic_id: 4)
ProjectTopic.create(project_id: 1, topic_id: 5)

