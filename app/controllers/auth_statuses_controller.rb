class AuthStatusesController < ApplicationController
  # GET /auth_statuses
  # GET /auth_statuses.xml
  def index
    @auth_statuses = AuthStatus.find_by_sql("SELECT * FROM radpostauth WHERE reply = 'Access-Reject' ORDER BY authdate DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auth_statuses }
    end
  end
end
