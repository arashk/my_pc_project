# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  ##
  # This will return a string that can be used as the page title.
  
  def page_title
    "Animal Site : #{controller.action_name}"
  end
  
end
