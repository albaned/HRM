class Formulari < ActiveRecord::Base
  belongs_to :user
  belongs_to :punetori
  belongs_to :interview
  belongs_to :refuzuar
  has_many :pozis
  has_one :status
  has_many :dergoemails
  belongs_to :kontratum
  mount_uploader :referenca_file, AttachmentUploader
	mount_uploader :cv_file, AttachmentUploader
  mount_uploader :letra_motivuese, AttachmentUploader
  def self.ransackable_attributes(auth_object = nil)
		super - ['id', 'created_at', 'updated_at', 'ditelindja', 'vendlindja', 'nacionaliteti', 'leternjoftimi', 'tel', 'edukimi_from','edukimi_to', 'edukimi_institucioni', 'edukimi_drejtimi', 'edukimi_titulli','eksperienca_from', 'eksperienca_to', 'eksperienca_kompania', 'eksperienca_pozita', 'gjuha', 'gjuha_niveli', 'njohurit_kompjuterike', 'letra_motivuese', 'referenca_emri', 'referenca_file', 'cv_file', 'intervista', 'testet' , 'kontrata_from', 'kontrata_to', 'page', 'user', 'qytetet_id', 'adresa', 'pc_id', 'dergoemail_id', 'gjuha_id', 'level', 'status_id', 'pozi_id', 'trajnimi_institucioni', 'trajnimi_drejtimi', 'trajnimi_from', 'trajnimi_to', 'ongoing']
	end

  #
	# validates :emri, :mbiemri, :vendlindja, format: { with: /\A[a-zA-Z]+\z/ }
	#   validates :leternjoftimi, length: {is: 16}
  #  validates :tel, :email,  :edukimi_institucioni, :edukimi_drejtimi, :edukimi_titulli, :njohurit_kompjuterike , presence: true
  #
  #
  #     before_save { email.downcase! }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #            format: { with: VALID_EMAIL_REGEX },
  #            uniqueness: { case_sensitive: false }



end
