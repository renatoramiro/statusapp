#encoding: utf-8
require 'faraday'
class Site < ActiveRecord::Base
  attr_accessible :name, :url, :user_id, :next_ping_at, :public

  validates :name, :url, presence: true
  validates :url, url: true

  belongs_to :user
  has_many :pings, dependent: :destroy

  before_create :set_next_ping_at
  after_create :create_ping

private
	def set_next_ping_at
		self.next_ping_at = Time.now
	end

	def create_ping
		Pinger.delay.ping_site(self)
	end
end
