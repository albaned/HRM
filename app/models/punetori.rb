class Punetori < ActiveRecord::Base
  def self.ransackable_attributes(auth_object = nil)
		super - ['id', 'created_at', 'updated_at']
	end


   validates :emri, :mbiemri,  presence: true
   has_many :formularis
   has_one :kontratum

      before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }
end
