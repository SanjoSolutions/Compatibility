local addOnName = 'Compatibility'
local version = '2.0.1'

if _G.Library then
  if not Library.isRegistered(addOnName, version) then
    local Caching = Library.retrieve('Caching', '^2.0.0')

    --- @class Compatibility
    local Compatibility = {}

    function Compatibility.isRetail()
      return Compatibility.isMajorVersionAtOrAbove(10)
    end

    function Compatibility.isWotLK()
      return Compatibility.isMajorVersion(3)
    end

    function Compatibility.isVanilla()
      return Compatibility.isMajorVersion(1)
    end

    function Compatibility.isMajorVersion(majorVersion)
      local majorVersionOfGame = Compatibility.determineMajorVersion()
      return majorVersionOfGame == majorVersion
    end

    function Compatibility.isMajorVersionAtOrAbove(minimumMajorVersion)
      local majorVersionOfGame = Compatibility.determineMajorVersion()
      return majorVersionOfGame >= minimumMajorVersion
    end

    Compatibility.determineMajorVersion = Caching.cached(function ()
      local version = GetBuildInfo()
      local majorVersionString = string.match(version, '^(%d+)%.')
      local majorVersion = tonumber(majorVersionString, 10)
      return majorVersion
    end)

    Library.register(addOnName, version, Compatibility)
  end
else
  error(addOnName .. ' requires Library. It seems absent.')
end
