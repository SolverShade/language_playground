-- Set package path to include the src directory
package.path = package.path .. ";./src/?.lua;./src/?/init.lua"
Pathfun = require('pathfun')

print("hello world")


-- Tables (arrays and dictionaries)
local array = { 'a', 'b', 'c', 'd', 'g', 'h' }

print("Array elements:")
for i, value in ipairs(array) do
  print(i, ":", value)
end

Pathfun.DoesMainExist()
Pathfun.DoesBuildDirectoryExist()
