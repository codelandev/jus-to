class LegalCase < ActiveRecord::Base
  belongs_to :user
  belongs_to :agent
  has_many :messages

  validates_presence_of :company, :subject, :user
end
