class Interview < ActiveRecord::Base
	has_many :formularis
	has_many :pozis
	has_many :qytetes
end
