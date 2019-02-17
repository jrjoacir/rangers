puts 'Creating Element table'

Sequel.migration do
  up do
    create_table(:element) do
      primary_key :id
      foreign_key :set_id, :set
      String :name, null: false
      index [:set_id, :name], unique: true
    end
  end

  down do
    drop_table(:element)
  end
end
