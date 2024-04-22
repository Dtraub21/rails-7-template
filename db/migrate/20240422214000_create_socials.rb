class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.text :telegram
      t.text :twitter

      t.timestamps
    end
  end
end
