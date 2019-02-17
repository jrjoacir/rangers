puts 'Creating Set table'

Sequel.migration do
  up do
    create_table(:set) do
      primary_key :id
      String :name, null: false, unique: true
      String :description
    end
  end

  down do
    drop_table(:set)
  end
end
