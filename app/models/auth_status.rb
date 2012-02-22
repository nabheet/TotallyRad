class AuthStatus < ActiveRecord::Base
  set_table_name 'radpostauth'

  alias_attribute :name, :username
  alias_attribute :password, :pass
  alias_attribute :status, :reply

  named_scope :auth_result,
              :select => "b.description, radpostauth.username, radpostauth.pass, radpostauth.reply, max(radpostauth.authdate) AS authdate",
              :joins => "LEFT OUTER JOIN radcheck b ON radpostauth.username = b.username" ,
              :group => "b.description, radpostauth.username, radpostauth.pass, radpostauth.reply",
              :order => "reply DESC, authdate DESC"

  def self.user_history(username)
    find(:all, :conditions => ["username = ?", username], :order => "authdate DESC")
  end
end
