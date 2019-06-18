Rails.application.routes.draw do
  root to: 'pz_discover#sampler_name'
  get 'pz_discover/sampler_form'
  get 'sampler-form', to: 'pz_discover#sampler_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
