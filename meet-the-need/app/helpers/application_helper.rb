module ApplicationHelper
  def find_msg_developers
    # find all developers you have had conversations with
    all_msg_developers = []
    current_customer.conversations.each do |conv|
      all_msg_developers << conv.developer
    end
    all_msg_developers.uniq.compact

  end
end

