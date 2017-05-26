return {
	
	LrSdkVersion = 4.0,
	LrSdkMinimumVersion = 1.3, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'com.snapgotyou.lightroom.publishFromMenu',

	LrPluginName = LOC "$$$/PublishFromMenu/PluginName=Publish From Menu",
	
	-- Add the menu item to the File menu.
	
	LrExportMenuItems = {
		{
			title = "Publish All",
			file = "PublishFromMenu.lua",
		}
	},
	VERSION = { major=1, minor=0, revision=0, build=0, },

}