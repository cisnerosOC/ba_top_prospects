class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :team
      t.integer :rank
      t.string :position

      t.timestamps
    end
  end
end
