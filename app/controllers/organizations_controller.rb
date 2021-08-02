class OrganizationsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @org = Organization.new
  end

  def create
    @org = Organization.new(org_params)
    user = current_user
    @org.user_id = user.id
    if @org.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  private

  def org_params
    params.require(:organization).permit(
      :user_id,
      :project_id,
      :name,
      :name_kana,
      :corporate_form_id,
      :corporate_number,
      :address_postal,
      :address_prefecture_id,
      :address_city,
      :address_block,
      :address_bldg,
      :website,
      :rep_name,
      :rep_name_kana,
      :officer_name,
      :officer_name_kana,
      :officer_phone,
      :emergency_phone,
    )
  end

end
