module ApplicationHelper
  def find_msg_developers
    # find all developers you have had conversations with
    all_msg_developers = []
    p current_customer
    p "^" * 80
    current_customer.conversations.each do |conv|
      all_msg_developers << conv.developer
    end
    p "^" * 80
    p all_msg_developers.uniq.compact
    # debugger
  end
end

