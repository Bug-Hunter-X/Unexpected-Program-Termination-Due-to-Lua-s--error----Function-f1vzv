local function myFunction(arg1, arg2)
  local success, result = pcall(function()
    -- Some code here
    if arg1 == nil then
      error("arg1 cannot be nil!")
    end
    -- More code here
    return "Success"
  end)
  if not success then
    print("Error: ", result)
    -- Handle the error gracefully, e.g., log the error or return a default value.
    return nil 
  else
    return result
  end
end

-- Example usage
local result1 = myFunction(10, 20)
print("Result 1: ", result1)

local result2 = myFunction(nil, 20)
print("Result 2: ", result2)