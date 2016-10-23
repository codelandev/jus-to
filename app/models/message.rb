class Message < ActiveRecord::Base
  belongs_to :legal_case
  belongs_to :author, foreign_key: :user_id, class_name: 'User'

  validates :legal_case, :author, :content, presence: true

  validate :user_is_part_of_legal_case

  private
  def user_is_part_of_legal_case
    if legal_case
      unless author == legal_case.user || author == legal_case.agent
        errors.add(:author, 'not a part of legal case')
      end
    end
  end
end
