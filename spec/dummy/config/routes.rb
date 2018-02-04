Rails.application.routes.draw do
  root to: "dummy#dummy"

  get "foo" => "dummy#dummy"
end
