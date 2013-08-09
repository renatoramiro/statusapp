namespace :statusapp do
  desc "StatusApp || Executando Ping"
  task :create_ping => :environment do

    Site.all.each do |site|
      Pinger.delay.ping_site(site)
    end

    puts "Mais um ping! #{Time.now.strftime('%d/%m/%Y %H:%M')}"
    puts "Quantidade total de sites: #{Site.all.count}"
  end
end