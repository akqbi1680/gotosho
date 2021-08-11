class ProjectsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @project.name = Organization.find_by(user_id: current_user.id).name

    # Projectのnumberを自動入力。20001から始まり、任意の番号がDBに存在すれば次を検索
    @pn = 20001
    while Project.where(number: @pn).exists? do
      @pn += 1
    end
    @project.number = @pn

    @project.status_screening_id = 2

    if @project.save

      # User.all do |u|
        
      # end

      redirect_to project_path(@project.id)
    else
      render 'new'
    end

  end

  private

  def project_params
    params.require(:project).permit(
      :contract_start_at,
      :contract_end_at,
      :area, # 支援対象エリア（活性化する商店街等）
      :address, # 支援対象エリア（所在地）
      :location, # 事業実施場所
      :budget_total, # 事業総額費
      :budget_to_apply_for, # 支援対象経費
      # t.string :budget_to_apply # 支援申請学 => 計算で出す
      # t.string :budget_outofpocket # 自己負担額 => 計算で出す
      :outline, # 事業概要
      :description, # 事業の具体的な実施内容

      :status_jigyoshajoho,
      :attachment_jigyoshajoho,
      :status_renkeishinseiriyusho,
      :attachment_renkeishinseiriyusho,

      :event_start_at,
      :event_end_at
    )
  end

end
