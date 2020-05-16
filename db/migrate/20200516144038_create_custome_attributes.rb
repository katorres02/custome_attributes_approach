class CreateCustomeAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :custome_attributes do |t|
      t.string :field_name
      t.string :field_type
      t.boolean :required, default: false

      t.timestamps
    end
  end
end
