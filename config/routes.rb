ActionController::Routing::Routes.draw do |map|

  map.resources :deck_cards
  map.resources :decks
  map.resources :clans
  map.resources :card_types
  map.resources :cards
  map.resources :setting
  map.resources :users
  map.resource  :session, :controller => 'session'
  
  map.settings '/settings', :controller => 'setting', :action => 'index'
  map.signup  '/signup', :controller => 'users', :action => 'new'
  map.terms   '/terms', :controller => 'users', :action => 'terms'
  map.login   '/login', :controller => 'session', :action => 'new'
  map.logout  '/logout', :controller => 'session', :action => 'destroy'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action.:format'
  
  map.root :controller => "home"
end
