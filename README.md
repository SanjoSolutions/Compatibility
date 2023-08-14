# Compatibility

A library which serves as a compatibility layer for different versions of the game (retail, WotLK and vanilla).
This allows developers to call the same APIs in the different versions of the game.

## Included functions

* **Compatibility.isRetail** a function which returns true when the game is the retail version of the game.
* **Compatibility.isWotLK** a function which returns true when the game is the WotLK version of the game.
* **Compatibility.isVanilla** a function which returns true when the game is the vanilla version of the game.
* **Compatibility.isMajorVersion** a function which returns true when the major version of the game equals the give major version.
* **Compatibility.isMajorVersionAtOrAbove** a function which returns true when the major version is at or above the given major version.
* **Compatibility.determineMajorVersion** a function which returns the major version.

### Container

* **Compatibility.Container.retrieveItemInfo**: a function which returns information about an item in a container.
* **Compatibility.Container.receiveNumberOfSlotsOfContainer**: a function which returns the number of slots of a container.
* **Compatibility.Container.UseContainerItem**: a function for using a container item.
* **Compatibility.Container.receiveNumberOfFreeSlotsInContainer**: a function that returns the number of free slots in a container.

### GossipInfo

There seem to be different dialogs. Either based on "GossipInfo" or "Quests".

* **Compatibility.GossipInfo.retrieveAvailableQuests**: a function that returns the available quests.
* **Compatibility.GossipInfo.retrieveActiveQuests**: a function that returns the active quests.
* **Compatibility.GossipInfo.selectAvailableQuest**: a function to select an available quest.
* **Compatibility.GossipInfo.hasGossipOptions**: a function that checks if there are gossip options.
* **Compatibility.GossipInfo.retrieveOptions**: a function for retrieving the options. Only implemented for retail.
* **Compatibility.GossipInfo.hasAvailableQuests**: a function that checks if there are available quests.
* **Compatibility.GossipInfo.selectActiveQuest**: a function for selecting an active quest.
* **Compatibility.GossipInfo.selectOption**: a function for selection an option. Only implemented for retail.

### QuestLog

* **Compatibility.QuestLog.retrieveInfo**: a function for retrieving quest info by index.
* **Compatibility.QuestLog.isFailed**: a function which checks if a quest is failed.
* **Compatibility.QuestLog.isComplete**: a function which checks if a quest is complete.
* **Compatibility.QuestLog.isOnQuest**: a function which checks if a character is on a quest.
* **Compatibility.QuestLog.retrieveNumberOfQuestLogEntries**: a function which returns the number of quest log entries.
* **Compatibility.QuestLog.retrieveIndexForQuestID**: a function which returns the index of a quest.
* **Compatibility.QuestLog.isQuestFlaggedCompleted**: a function which checks if a quest is flagged completed.
* **Compatibility.QuestLog.SetAbandonQuest**: a function for setting the quest to abandon.
* **Compatibility.QuestLog.AbandonQuest**: a function for abandoning the quest that has been set with `Compatibility.QuestLog.SetAbandonQuest`.

### Quests

There seem to be different dialogs. Either based on "GossipInfo" or "Quests".

* **Compatibility.Quests.retrieveAvailableQuests**: a function for retrieving available quests.
* **Compatibility.Quests.selectAvailableQuest**: a function for selecting an available quest.
* **Compatibility.Quests.retrieveActiveQuests**: a function for retrieving the active quests.
* **Compatibility.Quests.selectActiveQuest**: a function for selecting an active quest.

### TaskQuest

* **Compatibility.TaskQuest.retrieveQuestsOnMap**: a function for retrieving the quests on a map.

You can support me on [Patreon](https://www.patreon.com/addons_by_sanjo).

## How to use

Please see "[How to use Library](https://github.com/SanjoSolutions/LuaLibrary#how-to-use)" for how to use this library.
