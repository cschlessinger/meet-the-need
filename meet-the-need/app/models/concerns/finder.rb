module Finder
  extend ActiveSupport::Concern
  def finder(matcher, type, matchee)

    # our_matchee_ids = []
    # our_matchees = []
    # type_ids = type + "_ids"
    # type_id = type + "_id"
    # join_table = matchee + type.capitalize

    # # iterates through the ids of topics associated with the project the method is called on; returns an array of developer ids
    # matcher.send(type_ids).each do |t_id|
    #   our_matchee_ids << join_table.constantize.where(type_id: t_id)
    #   p "We found some developer IDs"
    #   p "*" * 100
    #   p our_matchee_ids
    # end

    # # iterates through developer ids to return an array of developer objects
    # our_matchee_ids.each do |matchee_id|
    #   our_matchees << matchee.constantize.where(id: matchee_id)
    #   p "We found some developer objects"
    # end

    # return our_matchees

    topics_by_project = matcher.send(type) #Returns topics/technologies associated with project

    p "#" * 100
    p topics_by_project.to_a
    p "#" * 100

    topics_by_dev = []
    temp = []
    matchee.constantize.all.map {|obj| temp << obj.topics }

    temp.first.map {|dev| topics_by_dev << dev }

    p "*" * 10
    p topics_by_dev
    p "*" * 10

    p "%" * 80
    p topics_by_project.to_a & topics_by_dev
    p "%" * 80
  end

end