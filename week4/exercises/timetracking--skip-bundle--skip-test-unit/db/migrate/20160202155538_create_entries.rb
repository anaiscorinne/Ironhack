class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.references :project
    	t.integer :hours
    	t.integer :minutes
    	t.text :comments
    	t.datetime :date
      t.timestamps null: false
    end
  end
end

# rails g model Project :references, etc...
