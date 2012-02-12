class UserGroup < ActiveRecord::Base
  set_table_name 'radusergroup'

  def self.all_users(grp_name)
    find(:all, :conditions => ["groupname = ?", grp_name], :order => "username")
  end
end
