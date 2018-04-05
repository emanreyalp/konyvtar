class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string   "title"
      t.string   "location"
      t.integer  "style"
      t.string   "isbn"
      t.string   "author"
    end
  end
end
