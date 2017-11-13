class CreateJoinTableLegislatorClient < ActiveRecord::Migration[5.1]
  def change
    create_join_table :legislators, :clients do |t|
      # t.index [:legislator_id, :client_id]
      # t.index [:client_id, :legislator_id]
    end
  end
end
