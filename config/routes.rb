Rails.application.routes.draw do
  root to: 'test_mail#index'
  post "/send_mail" => "test_mail#send_mail"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
