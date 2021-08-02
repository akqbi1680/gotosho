class HomesController < ApplicationController

  def top
    user = current_user if user_signed_in?
    @project = Project.find(user.project_id) if @project
  end

end
