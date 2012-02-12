class Group < ActiveRecord::Base
  set_table_name 'radgroupcheck'

  alias_attribute :name, :groupname
  alias_attribute :operator, :op
  alias_attribute :password, :value
  alias_attribute :password_type, :attribute

  def all_users
    UserGroup.all_users(name)
  end
end
