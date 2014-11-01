desc "Reindexing for search"
task :reindex => :environment do
	Quantity.reindex
end