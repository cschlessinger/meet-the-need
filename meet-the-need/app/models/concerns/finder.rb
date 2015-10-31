module Finder
  extend ActiveSupport::Concern
  def finder(matcher, tag, matchee) #Matcher is instance of an object; tag is either technology or topic; matchee is class of what collection of results we want to get back

    tags_by_matcher = matcher.send(tag) #Returns tags associated with matcher

    tags_by_matchee = []
    temp = []
    matchee.constantize.all.map {|obj| temp << obj.send(tag) } #Iterate through all matchees and calling the tag method, pushing result to temp array of active record tags associated with matchees (result is AR CollectionProxy object)

    temp.first.map {|dev| tags_by_matchee << dev } # Strips CollectionProxy and returns array of tags associated with the matchee

    tags_by_matchee.to_a & tags_by_matchee # Returns union of tags from the input matcher and result matchee
  end

end