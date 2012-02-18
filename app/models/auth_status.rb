class AuthStatus < ActiveRecord::Base
  set_table_name 'radpostauth'

  alias_attribute :name, :username
  alias_attribute :password, :pass
  alias_attribute :status, :reply

  named_scope :auth_denials, :conditions => { :reply => "Access-Reject"}, :order => "authdate DESC"

  def self.user_history(username)
    find(:all, :conditions => ["username = ?", username], :order => "authdate DESC")
  end
end
