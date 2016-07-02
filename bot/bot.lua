@@ -4,7 +4,9 @@ package.cpath = package.cpath .. ';.luarocks/lib/lua/5.2/?.so'
  
  require("./bot/utils")
  
 -VERSION = '0.13.1'
 +local f = assert(io.popen('/usr/bin/git describe --tags', 'r'))
 +VERSION = assert(f:read('*a'))
 +f:close()
  
  -- This function is called when tg receive a msg
  function on_msg_receive (msg)
