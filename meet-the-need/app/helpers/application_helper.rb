module ApplicationHelper

# find associations between a project's topics and potential developers
# matcher is what you are starting with (eg instance of Project)
# matchee is the class you are matching against (eg. Developer)



end

# DeveloperTopic.first.finder(Project.first, "topics", "Developer")
# DeveloperTopic.first.finder(Project.first, "technologies", "Developer")


# dev_finder('Developer.first', "topic", "Project")
# dev_finder('Project.first', "technology", "Developer")
# dev_finder('Developer.first', "technology", "Project")