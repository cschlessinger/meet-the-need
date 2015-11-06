# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Customer.create(first_name: "Masha", last_name: "Lifshin", email: "masha@example.com", password: "password", bio: "I do art and wear cool leggings. Yeah technology!", avatar_url: "masha.jpg")
Customer.create(first_name: "Julian", last_name: "Bouma", email: "julian@example.com", password: "password", bio: "That's Mr. Bouma to you.", avatar_url: "julian.jpg")

Developer.create(first_name: "Claire", last_name: "Schlessinger", email: "claire@example.com", password: "password", tagline: "Out to make the world a better place with technology", bio: "I like pugs and chocolate.", avatar_url: "claire.jpg")
Developer.create(first_name: "Katie", last_name: "Ok", email: "katie@example.com", password: "password", tagline: "Animal lover", bio: "I want to travel the world!", avatar_url: "katie.jpg")
Developer.create(first_name: "Andrew", last_name: "Dowd", email: "andrew@example.com", password: "password", tagline: "I like playing bass and riding motorcycles.", bio: "I develop web applications. Please send me a message about your project.", avatar_url: "andrew.jpg")
Developer.create(first_name: "Sasha", last_name: "Goldenson", email: "sasha@example.com", password: "password", tagline: "Developer for hire.", bio: "I learned web development at DBC and have 7 years of software testing and development experience.  I enjoy playing piano, doing yoga, and connecting with friends.  Message me!", avatar_url: "sasha.jpg")

Project.create(title: "My Neighborhood", body: "Track happenings in local politics and get involved in your community.", customer_id: 2, cost: 350)
Project.create(title: "Simple Budget Tracker", body: "Empower users to simply manage their finances.", customer_id: 1, cost: 350)
Project.create(title: "Virtual Bowling League", body: "Play games with your friends on your phone.", customer_id: 2, cost: 950)
Project.create(title: "Tennis Tracker", body: "This robot will analyze your games and suggest technique improvements.", customer_id: 2, cost: 525, assigned_date: '2015-11-01', developer_id: 4, is_completed: false)
Project.create(title: "What's for Dinner?", body: "This app allows you to store your recipes and suggest which ones to make based on what food you already have.", customer_id: 1, assigned_date: '2015-11-01', developer_id: 4, cost: 400, is_completed: true, completed_date: '2015-11-02')

Technology.create(name: "Android") #1
Technology.create(name: "Blog") #2
Technology.create(name: "Data analysis") #3
Technology.create(name: "iOS") #4
Technology.create(name: "Gaming") #5
Technology.create(name: "Hardware") #6
Technology.create(name: "Social Media") #7
Technology.create(name: "Web") #8

Topic.create(name: "Education") #1
Topic.create(name: "Event Planning") #2
Topic.create(name: "Finance") #3
Topic.create(name: "Food") #4
Topic.create(name: "Games") #5
Topic.create(name: "Health") #6
Topic.create(name: "Local") #7
Topic.create(name: "News and Media") #8
Topic.create(name: "Photo and Video") #9
Topic.create(name: "Politics") #10
Topic.create(name: "Productivity") #11
Topic.create(name: "Reference") #12
Topic.create(name: "Science") #13
Topic.create(name: "Social issues") #14
Topic.create(name: "Sports") #15
Topic.create(name: "Travel") #16
Topic.create(name: "Youth") #17

ProjectTechnology.create(project_id: 1, technology_id: 7)
ProjectTechnology.create(project_id: 1, technology_id: 9)
ProjectTechnology.create(project_id: 2, technology_id: 8)
ProjectTechnology.create(project_id: 2, technology_id: 3)
ProjectTechnology.create(project_id: 3, technology_id: 5)
ProjectTechnology.create(project_id: 3, technology_id: 1)
ProjectTechnology.create(project_id: 3, technology_id: 4)
ProjectTechnology.create(project_id: 4, technology_id: 6)
ProjectTechnology.create(project_id: 4, technology_id: 3)
ProjectTechnology.create(project_id: 5, technology_id: 3)
ProjectTechnology.create(project_id: 5, technology_id: 8)
ProjectTechnology.create(project_id: 5, technology_id: 4)

DeveloperTechnology.create(developer_id: 1, technology_id: 7)
DeveloperTechnology.create(developer_id: 1, technology_id: 8)
DeveloperTechnology.create(developer_id: 1, technology_id:9)
DeveloperTechnology.create(developer_id: 2, technology_id: 3)
DeveloperTechnology.create(developer_id: 2, technology_id: 8)
DeveloperTechnology.create(developer_id: 2, technology_id: 4)
DeveloperTechnology.create(developer_id: 3, technology_id: 8)
DeveloperTechnology.create(developer_id: 3, technology_id: 3)
DeveloperTechnology.create(developer_id: 3, technology_id: 1)
DeveloperTechnology.create(developer_id: 4, technology_id: 4)
DeveloperTechnology.create(developer_id: 4, technology_id: 5)
DeveloperTechnology.create(developer_id: 4, technology_id: 1)

ProjectTopic.create(project_id: 1, topic_id: 7)
ProjectTopic.create(project_id: 1, topic_id: 10)
ProjectTopic.create(project_id: 1, topic_id: 14)

ProjectTopic.create(project_id: 2, topic_id: 3)
ProjectTopic.create(project_id: 2, topic_id: 11)

ProjectTopic.create(project_id: 3, topic_id: 5)
ProjectTopic.create(project_id: 3, topic_id: 15)

ProjectTopic.create(project_id: 4, topic_id: 15)

ProjectTopic.create(project_id: 5, topic_id: 4)

DeveloperTopic.create(developer_id: 1, topic_id: 7)
DeveloperTopic.create(developer_id: 1, topic_id: 10)
DeveloperTopic.create(developer_id: 1, topic_id: 4)
DeveloperTopic.create(developer_id: 2, topic_id: 5)
DeveloperTopic.create(developer_id: 2, topic_id: 7)
DeveloperTopic.create(developer_id: 3, topic_id: 5)
DeveloperTopic.create(developer_id: 3, topic_id: 4)
DeveloperTopic.create(developer_id: 4, topic_id: 1)
DeveloperTopic.create(developer_id: 4, topic_id: 3)


Conversation.create(developer_id: 4, customer_id: 1, initiated_by: "Customer", body: "Masha to Sasha")
Conversation.create(developer_id: 4, customer_id: 1, initiated_by: "Developer", body: "Sasha to Masha")
Conversation.create(developer_id: 3, customer_id: 1, initiated_by: "Developer", body: "Katie to Masha")
Conversation.create(developer_id: 2, customer_id: 1, initiated_by: "Customer", body: "Masha to Claire")
Conversation.create(developer_id: 2, customer_id: 2, initiated_by: "Customer", body: "Claire to Julian")

Request.create(developer_id: 4, project_id: 4, customer_id: 2)
Request.create(developer_id: 4, project_id: 3, customer_id: 2)

ReviewRequest.create(developer_id: 4, project_id: 4, customer_id: 2)
