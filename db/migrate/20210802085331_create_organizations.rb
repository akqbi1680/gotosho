class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|

      t.string :name, null: false
      t.string :name_kana, null: false
      t.integer :corporate_form_id # 法人格の種類
      t.integer :corporate_number # 1桁目は1〜9の整数(チェックデジット)のためinteger
      t.string :address_postal
      t.integer :address_prefecture_id
      t.string :address_city
      t.string :address_block
      t.string :address_bldg
      t.string :website
      t.string :rep_name # 代表者名
      t.string :rep_name_kana
      t.string :officer_name # 担当者名
      t.string :officer_name_kana
      t.string :officer_phone # 担当者連絡先
      t.string :emergency_phone # 緊急連絡先
      t.integer :project_id

      t.timestamps
    end
  end
end
