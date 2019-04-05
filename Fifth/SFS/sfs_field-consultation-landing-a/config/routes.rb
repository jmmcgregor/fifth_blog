Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'application#tier_one'
  get 'tier_one', to: 'application#tier_one'
  get 'tier_two', to: 'application#tier_two'

  get 'quiz_one', to: 'application#quiz_one'
  get 'quiz_two', to: 'application#quiz_two'
  get 'quiz_three', to: 'application#quiz_three'
  get 'quiz_four', to: 'application#quiz_four'
  get 'thank_you', to: 'application#quiz_thank_you'

  get 'quiz_results', to: 'application#quiz_results'
end
