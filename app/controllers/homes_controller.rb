class HomesController < ApplicationController

  def top
    user = current_user if user_signed_in?
    @project = Project.find_by(user_id: user)
  end

end
