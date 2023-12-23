class CreateApiAssemblies < ActiveRecord::Migration[7.1]
  def change
    create_table :api_assemblies do |t|
      t.string :name
      t.references :part, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
