# frozen_string_literal: true

class UserRepository < ROM::Repository[:users]
  commands :create, update: :by_pk, delete: :by_pk

  def first
    users.limit(1).one
  end
end
