class User < ActiveRecord::Base
  # Cuidado para não esquecer a vírgula no final da linha.
  attr_accessible :bio, :email, :full_name, :location,
  :password, :password_confirmation
  validates_presence_of :email, :full_name, :location, :password
  validates_confirmation_of :password
  validates_length_of :bio, :minimum => 30, :allow_blank => false
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email
end