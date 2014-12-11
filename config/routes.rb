Ceducation::Application.routes.draw do
  resources :planifications

  resources :programs

  resources :classrooms

  resources :schools

  resources :tweets

  resources :reports
  resources :game_tracks

  resources :lessons
  resources :quizzes
  resources :words

  devise_for :users
  resources :users


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
   #student routes
   get 'student_dashboard' => 'student_dashboard#index'

   get 'class_search' => 'student_dashboard#class_search'

   get 'join_class/:id' => 'student_dashboard#join_class'

   #teacher routes

   get 'teacher_dashboard' => 'teacher_dashboard#index'

   get 'teacher_dashboard/:vercurso' => 'teacher_dashboard#index' 

   get 'teacher_dashboard/:nuevaplanificacion' => 'teacher_dashboard#index' 

   #game routes
   get 'pron' => 'game#check_pron'

   get 'pron/:texto' => 'game#check_pron'

   get 'tt' => 'welcome#get_tweets'

   post 'save_text' => 'welcome#save_text'


   get 'search' => 'game#csearch'

   get 'dashboard' => 'game#dashboard'

   get 'game/negapos' => 'game#negapos'

   get 'game' => 'game#index'

   get 'quiz/:lesson' => 'game#quiz'

   get 'quiz/:quiz/:lesson' => 'game#quiz' #cuando este listo el tracking y el quiz creation

   get 'quiz/:quiz/:lesson/:answer' => 'game#quiz'
   #get 'game/negapos/:id/:ans' => 'game#negapos'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
