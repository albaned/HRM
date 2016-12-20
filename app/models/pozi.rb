class Pozi < ActiveRecord::Base
  belongs_to :formulari
  belongs_to :refuzuar
  belongs_to :interview

  def self.ransackable_attributes(auth_object = nil)
		super - ['id', 'created_at', 'updated_at', 'skills', 'job_description', 'about_compnay', 'kodi']
	end
end
