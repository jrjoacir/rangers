puts 'Creating Element table'

Sequel.migration do
  up do
    create_table(:element) do
      primary_key :id
      foreign_key :universe_id, :universe
      String :name, null: false
      index %i[universe_id name], unique: true
    end
  end

  down do
    drop_table(:element)
  end
end
