# frozen_string_literal: true

module Web
  module Controllers
    module Sessions
      class Create
        include Web::Action

        params do
          required(:signin).schema do
            required(:email).filled(:string)
            required(:password).filled(:string)
          end
        end

        def initialize(users: UserRepository.new(ROM_CONTAINER))
          @users = users
          users.create(name: "Jane", email: "user@hanami.test")
        end

        def call(params)
          self.body = if params.valid?
                        users.first.to_h.inspect
                      else
                        params.error_messages.join(", ")
                      end
        end

        private

        attr_reader :users
      end
    end
  end
end
