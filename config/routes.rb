Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Setup subdomain for rails applications in /etc/hosts.
  # 127.0.0.1 api.task-manager.dev

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do

  end
end
