class Record < ApplicationRecord
	validates :first_name, :last_name, :contact_no, :address, presence: true
end
