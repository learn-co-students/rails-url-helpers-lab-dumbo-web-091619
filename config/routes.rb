Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index,:show]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # get '/activate/#{student.id}', to: 'students#show' , as: 'activate_student_url'
end
# "/post/#{post.id}"
# 'activate_student_path'
# get '/activate', to: 'students#index', as: 'activate'




# get '/students/:id/activate', to: 'students#activate', as: 'activate_student'