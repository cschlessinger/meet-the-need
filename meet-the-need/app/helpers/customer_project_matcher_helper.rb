module CustomerProjectMatcherHelper
  def customer_project_matcher(i)
    all_customer_projects = set_customer.projects
    @unassigned_projects = all_customer_projects.where(developer_id: nil).slice(0..2)

    # Find top three matching developers by topic and technology, put them into an array and return the top three unique results.
    matching_three_developers_by_topic = all_customer_projects[i].finder(all_customer_projects[i], "topics", "Developer")
    matching_three_developers_by_technology = all_customer_projects[i].finder(all_customer_projects[i], "technologies", "Developer")
    all_matching_developers = []
    all_matching_developers << matching_three_developers_by_technology << matching_three_developers_by_topic
    internal_results = []
    all_matching_developers.each do |matching_developer|
      internal_results << matching_developer
    end
    @top_unique_matching_three = internal_results.flatten!.uniq.slice(0..2)
  end
end