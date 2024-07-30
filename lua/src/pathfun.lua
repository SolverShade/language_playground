M = {}

function M.DoesMainExist()
  if io.input('./main.lua') ~= nil then
    print("main exists")
  else
    print("main doesnt exist")
  end
end

return M
