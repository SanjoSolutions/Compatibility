local addOnName = 'Compatibility'
local version = '2.0.0'

local Compatibility = Library.retrieve(addOnName, version)

if not Compatibility.TaskQuest then
  local Array = Library.retrieve('Array', '^2.0.0')

  --- @class Compatibility.TaskQuest
  Compatibility.TaskQuest = {}

  local _ = {}

  function Compatibility.TaskQuest.retrieveQuestsOnMap(mapID)
    return Array.map(C_TaskQuest.GetQuestsForPlayerByMapID(mapID), _.normalizeQuest)
  end

  function _.normalizeQuest(quest)
    quest.questID = quest.questId
    quest.questId = nil
    return quest
  end
end
