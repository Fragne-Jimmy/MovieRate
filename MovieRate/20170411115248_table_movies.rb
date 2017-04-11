class TableMovies < ActiveRecord::Migration
  def change
	create_table :movies
    add_column :movies, :title, :string
  end
end
