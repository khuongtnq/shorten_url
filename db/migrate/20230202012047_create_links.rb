class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :short_url
      t.string :long_url

      t.timestamps
    end
    add_index :links, [:short_url, :long_url]
  end
end
