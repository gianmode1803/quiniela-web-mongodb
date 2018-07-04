Rails.application.routes.draw do
  get 'positions/index'

  resources :events
  resources :media_carrusels
  resources :media_videos
  resources :pools
  get 'search_result/result'
  get 'search_result/index'

  get 'tiemporeal/index'
  get 'tabla/preferencias'
  get 'show_calendar/fase_grupos'
  get 'show_calendar/octavos'
  get 'show_calendar/cuartos'
  get 'show_calendar/semifinal'
  get 'show_calendar/tercer_puesto'
  get 'show_calendar/final'

  resources :articles

  resources :search_result  do
    collection do
      get :search
    end
  end
  resources :media_tags
  resources :tags
  resources :media
  resources :matches
  resources :calendars
  resources :stadia
  resources :coach_teams
  resources :coaches
  resources :countries
  resources :players
  resources :tiemporeal
  resources :positions

  devise_for :users, controllers: { registrations: "registrations" , sessions: "sessions"}
  namespace :administrator do
    get 'plantillas/index1'
    get 'plantillas/index'
    get 'plantillas/form_basic'
    get 'plantillas/form_layout'
    get 'plantillas/form_validation'
    get 'plantillas/page_login'
    get 'plantillas/page_register'
    get 'plantillas/usuario_index'

    get 'plantillas/tables'
    get 'plantillas/upgrade'
    get 'plantillas/user'
    get 'plantillas/icons'
    get 'plantillas/table_list'
    get 'plantillas/typography'
    get 'plantillas/maps'
    get 'user/invitation/new'

  end

 namespace :usuario do
    get 'plantillas/index'


  end

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :countries
      resources :matches
      resources :calendars
      resources :users
      resources :media
      resources :tags
      resources :media_tags
      resources :media_videos
      resources :players
      resources :articles
      resources :coaches
      resources :coach_teams
    end
  end

#A partir de aquí para movil API



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'plantillas#landpage'
get 'plantillas/formulario' => 'plantillas#formulario', :as => "formulario"
get 'plantillas/login' => 'plantillas#login', :as => "login"
get 'administrator/plantillas/index1' => 'administrator/plantillas#index1', :as => "index1"
get 'pools/new' => 'pools#new', :as => "new"


end
