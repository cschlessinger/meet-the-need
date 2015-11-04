# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.create(first_name: "Masha", last_name: "Lifshin", email: "masha@example.com", password: "password", bio: "I do art and wear cool leggings. Yeah technology!", avatar_url: "masha.jpg")
Customer.create(first_name: "Julian", last_name: "Bouma", email: "julian@example.com", password: "password", bio: "That's Mr. Bouma to you.", avatar_url: "julian.jpg")

Developer.create(first_name: "Sasha", last_name: "Goldenson", email: "sasha@example.com", password: "password", tagline: "Everything I learned, I learned at DBC", bio: "Developer for hire.", avatar_url: "sasha.jpg")
Developer.create(first_name: "Claire", last_name: "Schlessinger", email: "claire@example.com", password: "password", tagline: "I am the bestest developer ever", bio: "I like pugs and chocolate.", avatar_url: "claire.jpg")
Developer.create(first_name: "Katie", last_name: "Ok", email: "katie@example.com", password: "password", tagline: "Animal lover", bio: "I want to travel the world!", avatar_url: "katie.jpg")
Developer.create(first_name: "Andrew", last_name: "Dowd", email: "andrew@example.com", password: "password", tagline: "I eat bugs", bio: "That's all.", avatar_url: "andrew.jpg")

Project.create(title: "LGBT Chat Room App", body: "This is a support chat room for LGBT youth", customer_id: 1, developer_id: 2, cost: 350, assigned_date: '2015-11-01')
Project.create(title: "Animal Protection App", body: "This is to protect animals", customer_id: 2, cost: 350)
Project.create(title: "Finance Tracking App", body: "This is better manage my finance", customer_id: 1, cost: 350)
Project.create(title: "Bowling league App", body: "Virtual bowling app", customer_id: 2, cost: 950)
Project.create(title: "Healthcare websites App", body: "This will disrupt the healthcare industry", customer_id: 2, cost: 525, assigned_date: '2015-11-01', developer_id: 3, is_completed: false)
Project.create(title: "Environment Protection App", body: "This app will singlehandedly end global warming", customer_id: 1, assigned_date: '2015-11-01', developer_id: 3, cost: 400, is_completed: true, completed_date: '2015-11-02')


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
DeveloperTopic.create(developer_id: 3, topic_id: 2)
DeveloperTopic.create(developer_id: 2, topic_id: 3)
DeveloperTopic.create(developer_id: 4, topic_id: 4)
DeveloperTopic.create(developer_id: 2, topic_id: 5)

DeveloperTopic.create(developer_id: 1, topic_id: 1)
DeveloperTopic.create(developer_id: 1, topic_id: 2)
DeveloperTopic.create(developer_id: 1, topic_id: 3)
DeveloperTopic.create(developer_id: 4, topic_id: 5)

DeveloperTopic.create(developer_id: 3, topic_id: 1)

ProjectTechnology.create(project_id: 6, technology_id: 1)
ProjectTechnology.create(project_id: 5, technology_id: 2)
ProjectTechnology.create(project_id: 4, technology_id: 1)
ProjectTechnology.create(project_id: 3, technology_id: 2)
ProjectTechnology.create(project_id: 5, technology_id: 1)
ProjectTechnology.create(project_id: 6, technology_id: 2)

ProjectTopic.create(project_id: 5, topic_id: 1)
ProjectTopic.create(project_id: 5, topic_id: 2)
ProjectTopic.create(project_id: 4, topic_id: 3)
ProjectTopic.create(project_id: 4, topic_id: 4)
ProjectTopic.create(project_id: 6, topic_id: 5)
ProjectTopic.create(project_id: 4, topic_id: 5)

Conversation.create(developer_id: 1, customer_id: 1, initiated_by: "Customer", body: "im customer talking to dev")
Conversation.create(developer_id: 1, customer_id: 1, initiated_by: "Developer", body: "im dev talking to customer")
Conversation.create(developer_id: 2, customer_id: 1, initiated_by: "Customer", body: "im customer talking to dev 222")


