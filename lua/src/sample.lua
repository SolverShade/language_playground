-- Lua Script demonstrating various keywords and features

-- Variables and Data Types
local number = 42          -- number
local text = "Hello, Lua!" -- string
local isLuaAwesome = true  -- boolean
local nothing = nil        -- nil

print("Number:", number)
print("Text:", text)
print("Boolean:", isLuaAwesome)
print("Nil value:", nothing)

-- Functions
local function greet(name)
  return "Hello, " .. name .. "!"
end

print(greet("World"))

-- Tables (arrays and dictionaries)
local array = { 1, 2, 3, 4, 5 }
local dictionary = { name = "Lua", age = 28 }

print("Array elements:")
for i, value in ipairs(array) do
  print(i, value)
end

print("Dictionary elements:")
for key, value in pairs(dictionary) do
  print(key, value)
end

-- Control Structures
local x = 10
if x < 20 then
  print("x is less than 20")
elseif x == 20 then
  print("x is exactly 20")
else
  print("x is greater than 20")
end

-- Loops
print("For loop:")
for i = 1, 5 do
  print(i)
end

print("While loop:")
local count = 1
while count <= 5 do
  print(count)
  count = count + 1
end

print("Repeat-until loop:")
count = 1
repeat
  print(count)
  count = count + 1
until count > 5

-- Error Handling
local function divide(a, b)
  if b == 0 then
    error("Division by zero!")
  else
    return a / b
  end
end

-- Metatables and Metamethods
local myTable = {}
local myMetatable = {
  __index = function(table, key)
    return "Default Value"
  end
}
setmetatable(myTable, myMetatable)
print("Metatable example:", myTable.someKey)

-- Coroutines
local co = coroutine.create(function()
  for i = 1, 3 do
    print("Coroutine iteration:", i)
    coroutine.yield()
  end
end)

print("Coroutine example:")
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

-- Modules (for Lua 5.1 and below)
-- For Lua 5.2 and above, it's better to use 'require' with proper module files
module = {}
function module.sayHello()
  print("Hello from module!")
end

module.sayHello()
