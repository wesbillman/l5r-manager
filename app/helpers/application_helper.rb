# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  @@selected_attribute = %( class="active").freeze
  def class_for(options)
    @@selected_attribute if current_page?(options)
  end

  def selected_navigation?(navigation)
    @@selected_attribute if current_navigation?(navigation)
  end

  def current_navigation?(navigation)
    @current_navigation ||= \
      case controller.controller_name
        when /cards/ then :card
        when /decks/ then :deck
        when /setting/ then :setting
        when /user/ then :setting
        when /card_type/ then :setting
        when /clan/ then :setting
        when /deck/ then :setting            
        else :card
      end
    @current_navigation == navigation
  end
  
end
