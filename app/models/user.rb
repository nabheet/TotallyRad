class User < ActiveRecord::Base
  set_table_name 'radcheck'

  alias_attribute :name, :username
  alias_attribute :operator, :op
  alias_attribute :password, :value
  alias_attribute :password_type, :attribute

  #named_scope :history, find_by_sql(["SELECT * FROM radpostauth WHERE username = '?' ORDER BY authdate DESC", :name])
end
