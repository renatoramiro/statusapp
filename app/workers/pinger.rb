require 'faraday'

class Pinger
	def self.ping_site(site)

		start_time = Time.now
		url = Faraday.head(site.url)
    
    p = Ping.new
    
		p.average_time = Time.now - start_time
		p.status = url.env[:status]
		p.site = site

		p.save!

		site.update_attribute(:next_ping_at, start_time.change(min: DateTime.now.min + 5))
	end
end