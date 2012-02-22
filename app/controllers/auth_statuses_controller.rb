class AuthStatusesController < ApplicationController
  # GET /auth_statuses
  # GET /auth_statuses.xml
  def index
    @auth_results = AuthStatus.auth_result

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auth_results }
    end
  end
end
