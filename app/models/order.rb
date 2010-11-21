class Order < ActiveRecord::Base

has_one :User

attr_accessor :card_type, :cardholder_name, :card_no, :expiry_date, :quantity 

end
