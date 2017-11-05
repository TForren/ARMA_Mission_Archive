// mod synchronization check to prevent bugs caused by missing critical mods that run on the server
missingModsMessage = "";

if (isServer) then
{
	isIDF = (IDFParam > 0) && isClass(configFile >> "CfgPatches" >> "IDF_helmets");
	publicVariable "isIDF";
}
else
{
	isIDF_Client = isClass(configFile >> "CfgPatches" >> "IDF_helmets");
	waitUntil {!isNil "isIDF"};
	if (isIDF && !isIDF_Client) then
	{
		if (missingModsMessage != "") then
		{
			missingModsMessage = missingModsMessage + " ";
		};
		missingModsMessage = missingModsMessage + (localize "STR_MissingIDFMod") + ".";
	};
};

// ACE and ACRE are not yet supported
isACE = false;
isACRE = false;

if (missingModsMessage != "") then
{
	sleep .01;
	missingModsMessage = missingModsMessage + " " + (localize "STR_InstallPWS") + ".";
	hintC missingModsMessage;
};

modCheckDone = true;