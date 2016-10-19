class AddAgentToLegalCases < ActiveRecord::Migration
  def change
    add_column :legal_cases, :agent_id, :integer
  end
end
