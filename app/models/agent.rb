class Agent < User
  has_many :legal_cases, foreign_key: :agent_id
end
