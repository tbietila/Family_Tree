class Person < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.column :firstName, :string
      t.column :lastName, :string

      t.timestamps
    end
  end
end
