class CreateSlogans < ActiveRecord::Migration[6.1]
  def change
    create_table :slogans do |t|
      t.string :name
      t.string :email
      t.string :entry

      t.timestamps
    end
  end
end
