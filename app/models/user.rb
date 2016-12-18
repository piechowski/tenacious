class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  validates_presence_of :name

  scope :pending_invite, lambda { where(arel_table[:invitation_token].not_eq(nil)).where(:invitation_accepted_at => nil) }
  scope :active, lambda { where('invitation_token IS NULL OR invitation_accepted_at IS NOT NULL') }

end
