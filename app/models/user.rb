class User
  include Mongoid::Document
  include Mongoid::Timestamps

  devise :cas_authenticatable, :trackable, :rememberable

  field :email,              :type => String, :default => ""
  field :name,              :type => String, :default => ""

  validates_presence_of :email

  ## Rememberable
  field :remember_created_at, :type => Time
  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

end
