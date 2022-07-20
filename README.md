# Lotro Item Treasury plugin database

This should be an up to date (assuming I'm still maintaining it) pair of data files for Galuhad's [Item Treasury](https://www.lotrointerface.com/downloads/info870-ItemTreasury.html) plugin.

## How to install
Add `Items.lua` and `NewItems.lua` to `Documents\The Lord of the Rings Online\Plugins\GaluhadPlugins\ItemTreasury`

In the same folder, open `Main.lua` and change the following from:
```
import (PLUGINDIR..".33_0_Items");
import (PLUGINDIR..".33_0_NewItems");
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

See [minor branch](https://github.com/dt192/item-treasury-database/tree/minor) for changes between minor updates.

## History (newest first)
| Date          | Update        | Additions     | Changes       | Removals      | Diff                                                                      |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------------------------------------------------------------------ |
| 2022-07-20    | 33_1_0        | 349           | 83            | -             | [3491656](https://github.com/dt192/item-treasury-database/commit/3491656) |
| 2022-05-25    | 33_0_5        | 3             | 6             | -             | [f6989f6](https://github.com/dt192/item-treasury-database/commit/f6989f6) |
| 2022-05-18    | 33_0_4        | 3             | 9             | -             | [66aac7d](https://github.com/dt192/item-treasury-database/commit/66aac7d) |
| 2022-05-11    | 33_0_3        | 3             | 1             | -             | [1355569](https://github.com/dt192/item-treasury-database/commit/1355569) |
| 2022-05-04    | 33_0_2        | 1             | -             | -             | [e754c9a](https://github.com/dt192/item-treasury-database/commit/e754c9a) |
| 2022-04-27    | 33_0_1        | -             | 2             | -             | [733520a](https://github.com/dt192/item-treasury-database/commit/733520a) |



