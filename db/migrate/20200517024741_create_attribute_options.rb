class CreateAttributeOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :attribute_options do |t|
      t.string :name
      t.references :custome_attribute, null: false, foreign_key: true

      t.timestamps
    end
  end
end
