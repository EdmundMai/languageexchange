class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :learning
      t.string :knows

      t.timestamps
    end
  end
end
