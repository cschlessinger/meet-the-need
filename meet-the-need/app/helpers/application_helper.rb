module ApplicationHelper
  def find_msg_developers
    # find all developers you have had conversations with
    all_msg_developers = []
    current_customer.conversations.each do |conv|
      all_msg_developers << conv.developer
    end
    all_msg_developers.uniq.compact
  end

  def find_msg_customers
    # find all customers you have had conversations with
    all_msg_customers = []
    current_developer.conversations.each do |conv|
      all_msg_customers << conv.customer
    end
    all_msg_customers.uniq.compact
  end
end

