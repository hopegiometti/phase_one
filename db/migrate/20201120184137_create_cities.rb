class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :id
      t.string :name
      t.integer :country_id
      t.string :country_name
      t.string :country_flag_url
      t.integer :should_experiment
      t.integer :has_go_out_tab
      t.integer :discovery_enabled
      t.integer :has_new_ad_format
      t.integer :is_state
      t.integer :state_id
      t.string :state_name
      t.string :state_code

      t.timestamps
    end
  end
end
