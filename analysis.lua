Module_Analysis = {};
Module_Analysis.dataPath = "/cygdrive/d/shinejose/project/fire/server/Game/GameEngine/server/build/LogicServer/data";


Module_Analysis.table_to_JSON = function (table) 
      assert( type(table) == "table" ) 
      local JSON = loadfile("JSON.lua")()      
      assert( loadfile(table) ) 
      local json_table = JSON.encode(table)
      return json_table 
end

Module_Analysis.test = function () 
      local JSON = loadfile("JSON.lua")()      
      print("analysis starting ... ")

      data = "/cygdrive/d/shinejose/project/fire/server/Game/GameEngine/server/build/LogicServer/data"
      config = "config"

      GlobalConfig_lua = "GlobalConfig.lua"
      DmkjConfig_lua = "Dmkj.lua"

      fileGlobalFile =data .. "/" .. config .. "/" .. GlobalConfig_lua
      fileDmkjConfig =  data .. "/" .. config .. "/" .. "dmkj" .. "/" .. DmkjConfig_lua  

      print("loadfile(" ..  fileDmkjConfig .. ")")
      assert ( loadfile( fileDmkjConfig) ) ()
      print("type(DmkjCfg) = " .. type(DmkjCfg)) 
      local json_DmkjCfg  = JSON:encode(DmkjCfg)
      print(json_DmkjCfg );

      print("loadfile(" ..  fileGlobalFile .. ")")
      assert ( loadfile( fileGlobalFile) ) ()
      print("type(GlobalConfig) = " .. type(GlobalConfig))
      local json_GlobalConfig  = JSON:encode(GlobalConfig)
      print(json_GlobalConfig );

      print("analysis finished")
end

Module_Analysis.test()



