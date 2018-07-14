class User < ApplicationRecord
	validates_presence_of :firstname, :surname, :email
	validates_uniqueness_of :email
end
