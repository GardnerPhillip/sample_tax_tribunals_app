class CreateAppeals < ActiveRecord::Migration[8.0]
  def change
    create_table :appeals do |t|
      t.string :title
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
