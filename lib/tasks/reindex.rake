desc "Reindexing for search"
task :reindex => :environment do
	Topic.reindex
	Chart.reindex
	Quantity.reindex
	QuantityType.reindex
end