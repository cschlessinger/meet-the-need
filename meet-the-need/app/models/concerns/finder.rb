module Finder
  extend ActiveSupport::Concern
  def finder(matcher, tag, matchee) #Matcher is instance of an object; tag is either technology or topic; matchee is class of what collection of results we want to get back


    #Returns tags associated with matcher (e.g. first project)
    tags_by_matcher = matcher.send(tag)

    results = []

    # Iterates through all matchees and calling the tag method, pushing all tags to a matchee_tags array
    matchee.constantize.all.map do |matchee_singular|
	  	matchee_tags = matchee_singular.send(tag)
	  	# Iterates through all matchee_tags and checks if it is included in tags_by_matcher; if so, pushes the matchee (e.g. developer object) to results array
    	matchee_tags.each do |matchee_tag|
		    if tags_by_matcher.include?(matchee_tag)
		    	results << matchee_singular
		    end
		  end

		end

    # Iterates through results array and creates hash with frequency for each result
    result_frequency_hash = {}
    results.each do |result|
    	if result_frequency_hash[result.id] == nil
    		result_frequency_hash[result.id] = 1
    	else
    		result_frequency_hash[result.id] += 1
    	end
    end

    # Converts hash to array in order to sort it (ascending) and creates temp array
    temp = result_frequency_hash.to_a.reverse.sort_by {|pair| pair[1] }

    results_array = []
    # Iterates through temp array and pushes corresponding matchee object to results_array
    temp.each do |pair|
    	results_array << matchee.constantize.find(pair[0])
    end

    # Returns last five matchee items (remember array is sorted in ascending order)
    if results_array.length <= 5
			results_array.reverse
    else
    	results_array[-5..-1].reverse
    end


  end

end

# DeveloperTopic.first.finder(Project.first, "topics", "Developer")
# DeveloperTopic.first.finder(Developer.first, "topics", "Project")
# DeveloperTopic.first.finder(Project.first, "technologies", "Developer")
# DeveloperTopic.first.finder(Developer.first, "technologies", "Project")

