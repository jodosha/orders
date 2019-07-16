# frozen_string_literal: true

require "bundler/setup"
require "hanami/setup"
require_relative "../apps/web/application"
require "rom"
require "rom-repository"

Hanami.configure do
  mount Web::Application, at: "/"

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug, filter: ["password"]
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []
  end
end

ROM_CONTAINER = ROM.container(:sql, ENV["DATABASE_URL"]) do |conf|
  conf.default.create_table(:users) do
    primary_key :id
    column :name, String, null: false
    column :email, String, null: false
  end

  class Users < ROM::Relation[:sql]
    schema(infer: true)
    auto_struct true
  end

  conf.register_relation(Users)
end
