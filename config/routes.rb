Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
     member do
      patch :complete
     end
   end
 end
 

root "todo_lists#index"

delete 'todo_lists/:todo_list_id/todo_items/:id', to: 'todo_items#destroy' # destroy
end
