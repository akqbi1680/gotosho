class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|

      t.integer :user_id

      t.integer :number # 事業番号
      t.string :name # 事業名
      t.date :contract_start_at
      t.date :contract_end_at
      t.string :area # 支援対象エリア（活性化する商店街等）
      t.string :address # 支援対象エリア（所在地）
      t.string :location # 事業実施場所
      t.string :budget_total # 事業総額費
      t.string :budget_to_apply_for # 支援対象経費
      # t.string :budget_to_apply # 支援申請学 => 計算で出す
      # t.string :budget_outofpocket # 自己負担額 => 計算で出す
      t.string :outline # 事業概要
      t.string :description # 事業の具体的な実施内容
      t.integer :status_screening # 審査状況(enum)

      t.integer :status_jigyoshajoho
      t.string :attachment_jigyoshajoho
      t.integer :status_renkeishinseiriyusho
      t.string :attachment_renkeishinseiriyusho

      t.date :event_start_at
      t.date :event_end_at
      t.timestamps
    end
  end
end
