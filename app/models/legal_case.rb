class LegalCase < ActiveRecord::Base
  belongs_to :user
  belongs_to :agent
  validates_presence_of :company, :subject, :user
end
