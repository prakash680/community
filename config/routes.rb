# frozen_string_literal: true

LoggerPlugin::Engine.routes.draw do
  get "/examples" => "examples#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::LoggerPlugin::Engine, at: "logger-plugin" }
