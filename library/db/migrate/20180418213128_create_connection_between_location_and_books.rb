class CreateConnectionBetweenLocationAndBooks < ActiveRecord::Migration
  def self.up
    Book.update_all 'location=1'
    change_column :books, :location, :integer
  end

  def self.down
    change_column :books, :location, :text
  end
end
