-- Access the Lightroom SDK namespaces.
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'

local function publishAllPublishableCollections( )
	local catalog = LrApplication:activeCatalog()
	local publishServices = catalog:getPublishServices( nil )
	for publishServiceKey,publishServiceValue in pairs( publishServices ) do
		local publishedCollections = publishServiceValue:getChildCollections( )
		for publishedCollectionKey,publishedCollectionValue in pairs( publishedCollections ) do
			publishedCollectionValue:publishNow( )
		end
	end
end

LrTasks.startAsyncTask( publishAllPublishableCollections )