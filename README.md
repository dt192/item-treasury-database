# Lotro Item Treasury plugin database

This should be an up to date (assuming I'm still maintaining it) pair of data files for Galuhad's [Item Treasury](https://www.lotrointerface.com/downloads/info870-ItemTreasury.html) plugin.

---

## How to install manually
Add `Items.lua` and `NewItems.lua` to:<br/>
`Documents\The Lord of the Rings Online\Plugins\GaluhadPlugins\ItemTreasury`

<details>
  <summary>If using a version of Item Treasury prior to Update 36, see extra step. (click to expand)</summary>

<blockquote>
	
<br/>
	
In the same folder, open `Main.lua` and remove the version numbers from the two imports e.g.:
```
import (PLUGINDIR..".33_0_5_Items");
import (PLUGINDIR..".33_0_5_NewItems");
```
to:
```
import (PLUGINDIR..".Items");
import (PLUGINDIR..".NewItems");
```
	
</blockquote>
	
</details>

---

## Structure
```
[(number)ItemID] = {
	[1] = (string)Name;
	[2] = (string)Description;
	[3] = (number)Category;
	[4] = (number)Quality;
	[5] = (number)Durability;
	[6] = (boolean)IsMagic;
	[7] = (boolean)IsUnique;
	[8] = (number)IconImageID;
	[9] = (number)BackgroundImageID;
};
```

---

See [patch branch](https://github.com/dt192/item-treasury-database/tree/patch) for changes between patches.

---

## History (newest first)
| Date          | Update        | Additions     | Changes       | Removals      | Diff                                                                      |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------------------------------------------------------------------ |
| 2023-05-31    | 36_0_0        | 701           | 778           | 18            | [8ed7296](https://github.com/dt192/item-treasury-database/commit/8ed7296) |
| 2023-03-22    | 35_0_0        | 1036          | 1831          | 93            | [c650d80](https://github.com/dt192/item-treasury-database/commit/c650d80) |
| 2022-11-15    | 34_0_0        | 1800          | 846           | -             | [9e9466d](https://github.com/dt192/item-treasury-database/commit/9e9466d) |
| 2022-04-20    | 33_0_0        | -             | -             | -             | [d274449](https://github.com/dt192/item-treasury-database/commit/d274449) |
