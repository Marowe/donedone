Rails.application.routes.draw do
  root 'local_issues#index'
  resources :issues

  resources :local_issues do
    collection do
      get ":id/export", to: "local_issues#export", as: :export
    end
  end

  resources :sync, only: [:index]
end
