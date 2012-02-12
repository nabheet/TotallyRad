class User < ActiveRecord::Base
  set_table_name 'radcheck'

  alias_attribute :name, :username
  alias_attribute :operator, :op
  alias_attribute :password, :value
  alias_attribute :password_type, :attribute

  def auth_history
    AuthStatus.user_history(name)
  end
end
