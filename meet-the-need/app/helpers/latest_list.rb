module LatestList
  # item is either all project or all developer
  # number is how many items are displayed
  def list_latest(items, number)
    reversed_items = items.reverse
    latest_items = reversed_items.slice!(0..(number-1))
    latest_items
  end
end
