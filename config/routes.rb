Rails.application.routes.draw do
  # root
  root to: 'pages#home'

  # pages routes
  get 'about' => 'pages#about'
  get 'garantia' => 'pages#garantia'
  get 'aviso_de_privacidad' => 'pages#aviso_de_privacidad'
  get 'preguntas_frecuentes' => 'pages#preguntas_frecuentes'
  get 'terminos_de_servicio' => 'pages#terminos_de_servicio'

  # product routes
end
