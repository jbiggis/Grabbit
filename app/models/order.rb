class Order < ActiveRecord::Base

has_one :User

attr_accessor :cardholder_name, :card_number, :security_code, :expiry_date, :billing_address, :city, :province, :postal_code, :quantity 

end
