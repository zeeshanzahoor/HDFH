Rails.application.routes.draw do
  root 'home#index'
  get ':controller(/:action(/:id))'
  match '/:leaguename-highlights' => 'home#index',:via => [:get]
  match '/:team1-vs-:team2-highlights/:id' => 'home#play',:via => [:get]
end
