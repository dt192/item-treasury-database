# Lotro Item Treasury plugin database

This should be an up to date (assuming I'm still maintaining it) pair of data files for Galuhad's [Item Treasury](https://www.lotrointerface.com/downloads/info870-ItemTreasury.html) plugin.

## How to install
Add `Items.lua` and `NewItems.lua` to `Documents\The Lord of the Rings Online\Plugins\GaluhadPlugins\ItemTreasury`

In the same folder, open `Main.lua` and change the following from:
```
import (PLUGINDIR..".33_0_5_Items");
import (PLUGINDIR..".33_0_5_NewItems");
```
to:
```
import (PLUGINDIR..".Items");
import (PLUGINDIR..".NewItems");
```

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

See [patch branch](https://github.com/dt192/item-treasury-database/tree/patch) for changes between patches.

## History (newest first)
| Date          | Update        | Additions     | Changes       | Removals      | Diff                                                                      |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------------------------------------------------------------------ |
| 2022-12-07    | 34_1_0        | 33            | 35            | -             | [a5bcea4](https://github.com/dt192/item-treasury-database/commit/a5bcea4) |
| 2022-11-15    | 34_0_0        | 1398          | 418           | -             | [47eb6d1](https://github.com/dt192/item-treasury-database/commit/47eb6d1) |
| 2022-09-21    | 33_2_0        | 43            | 339           | -             | [0282414](https://github.com/dt192/item-treasury-database/commit/0282414) |
| 2022-07-20    | 33_1_0        | 359           | 101           | -             | [c5e9099](https://github.com/dt192/item-treasury-database/commit/c5e9099) |
| 2022-04-20    | 33_0_0        | -             | -             | -             | [d274449](https://github.com/dt192/item-treasury-database/commit/d274449) |
