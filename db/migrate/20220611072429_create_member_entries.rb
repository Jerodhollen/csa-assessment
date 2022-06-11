class CreateMemberEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :member_entries do |t|
      t.string :organization
      t.string :service
      t.string :description
      t.string :scheme
      t.datetime :created
      t.string :asset_url

      t.timestamps
    end
  end
end
