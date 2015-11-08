desc "Task to collect data"
task :collect_data => :environment do
=begin
  Language.all.each do |language|
    language.fetch_repositories
    p "Language --------#{language.name}"
    sleep_time = rand(1.2..5.25).seconds
    sleep(sleep_time)
  end
=end
  Repository.all.each do |repo|
    begin
      repo.fetch_issues
    rescue Exception => e
      sleep_time = rand(5.2..9.25).seconds
      sleep(sleep_time)
    end
  end
end
