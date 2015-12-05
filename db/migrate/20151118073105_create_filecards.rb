class CreateFilecards < ActiveRecord::Migration
  def change
    create_table :filecards do |t|
      t.string :question
      t.string :answer
      t.boolean :public
      t.date :submitDate
      t.references :subject, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
