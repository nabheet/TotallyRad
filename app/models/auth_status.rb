class AuthStatus < ActiveRecord::Base
  set_table_name 'radpostauth'

  alias_attribute :name, :username
  alias_attribute :password, :pass
  alias_attribute :status, :reply
end
