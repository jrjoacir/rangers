puts 'Creating Universe table'

Sequel.migration do
  up do
    create_table(:universe) do
      primary_key :id
      String :name, null: false, unique: true
      String :description
    end
  end

  down do
    drop_table(:universe)
  end
end
