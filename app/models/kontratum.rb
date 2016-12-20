class Kontratum < ActiveRecord::Base
	has_many :formulari
	has_one :punetori, :class_name => "Punetori", :foreign_key => "punetori_id"
end
