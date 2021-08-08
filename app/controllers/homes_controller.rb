class HomesController < ApplicationController

  def top
    user = current_user if user_signed_in?
    @project = Project.find_by(user_id: user)
  end

  def new_jimukyoku_user
    @user = User.new
  end

end
