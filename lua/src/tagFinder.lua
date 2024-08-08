function parseTagContent(text, tag)
  local startTag = "<" .. tag .. ">"
  local endTag = "</" .. tag .. ">"
  local startIdx, endIdx = text:find(startTag .. "(.-)" .. endTag)
  if startIdx then
    return text:sub(startIdx + #startTag, endIdx - #endTag)
  end
end

local function parseBetweenWords(text, wordOne, wordTwo)
  local startTag = wordOne
  local endTag = wordTwo
  local startIdx, endIdx = text:find(startTag .. "(.-)" .. endTag)
  if startIdx then
    return text:sub(startIdx + #startTag, endIdx - #endTag)
  end
end

function readFromFile(filePath)
  local file = io.open(filePath, "r") -- r read mode
  if not file then return nil end
  local content = file:read("*a")     -- *a reads the whole file
  file:close()
  return content
end

function runCommandAndCaptureOutput(command)
    local file = io.popen(command)
    local output = file:read("*a")
    file:close()
    return output
end

-- Test the functions
local content = readFromFile("/home/powerbox/source/repos/ICDM10DXEditCodeFinder/IcdmFinder/IcdmFinder.csproj")
local tagContent = parseTagContent(content, "TargetFramework")
print(tagContent)

local myCommand = "dotnet --info"
local txtOutput = runCommandAndCaptureOutput(myCommand)
local currentVersion = parseBetweenWords(txtOutput, "Version:", "Commit:")
print(currentVersion)
