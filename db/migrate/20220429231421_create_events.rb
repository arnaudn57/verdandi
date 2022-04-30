class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :event do |t|
      t.string :title
      t.text :content
      t.string :date

      t.timestamps
    end
  end
end
