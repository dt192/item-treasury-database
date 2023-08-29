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

`RuItems.lua` is only needed if running the [Russian version](https://github.com/william-aqn/item-treasury/tree/main/GaluhadPlugins/ItemTreasury) and will go in the same folder as above.

---

## How to install via a powershell script
William has provided a script to make the above changes automatically.

Add `update_en.cmd` and `_update_en.ps1` to `Documents\The Lord of the Rings Online\Plugins\GaluhadPlugins\ItemTreasury` and run `update_en.cmd`.

The Russian version of the scripts can be found on [William's GitHub](https://github.com/william-aqn/item-treasury/tree/main/GaluhadPlugins/ItemTreasury).

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

See [major branch](https://github.com/dt192/item-treasury-database/tree/major) for changes between major game updates.

---

## History (newest first)
| Date          | Update        | Additions     | Changes       | Removals      | Diff                                                                      |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------------------------------------------------------------------ |
| 2023-08-29    | 37_0_0        | 718           | 760           | 73            | [05715bd](https://github.com/dt192/item-treasury-database/commit/05715bd) |
| 2023-08-02    | 36_2_0        | 19            | -             | -             | [48b1c47](https://github.com/dt192/item-treasury-database/commit/48b1c47) |
| 2023-07-12    | 36_1_0        | -             | 130           | -             | [68e1eea](https://github.com/dt192/item-treasury-database/commit/68e1eea) |
| 2023-06-27    | 36_0_2        | 1             | 2             | -             | [c4e2428](https://github.com/dt192/item-treasury-database/commit/c4e2428) |
| 2023-06-07    | 36_0_1        | 20            | 13            | -             | [8384658](https://github.com/dt192/item-treasury-database/commit/8384658) |
| 2023-05-31    | 36_0_0        | 407           | 674           | -             | [6ed0e4e](https://github.com/dt192/item-treasury-database/commit/6ed0e4e) |
| 2023-05-10    | 35_1_3        | 1             | 34            | 9             | [6112841](https://github.com/dt192/item-treasury-database/commit/6112841) |
| 2023-05-03    | 35_1_2        | 14            | 62            | 9             | [d7dbf7f](https://github.com/dt192/item-treasury-database/commit/d7dbf7f) |
| 2023-04-26    | 35_1_1        | -             | 32            | -             | [ef0f1c9](https://github.com/dt192/item-treasury-database/commit/ef0f1c9) |
| 2023-04-19    | 35_1_0        | 119           | 76            | -             | [b93c7b5](https://github.com/dt192/item-treasury-database/commit/b93c7b5) |
| 2023-04-05    | 35_0_1        | 160           | -             | -             | [2c5a92d](https://github.com/dt192/item-treasury-database/commit/2c5a92d) |
| 2023-03-22    | 35_0_0        | 940           | 1774          | 70            | [06cdaeb](https://github.com/dt192/item-treasury-database/commit/06cdaeb) |
| 2023-03-08    | 34_3_0        | 16            | 4             | -             | [0d4c4b1](https://github.com/dt192/item-treasury-database/commit/0d4c4b1) |
| 2023-02-08    | 34_2_1        | -             | -             | -             |                                                                           |
| 2023-02-01    | 34_2_0        | 17            | 9             | -             | [bf6868b](https://github.com/dt192/item-treasury-database/commit/bf6868b) |
| 2023-01-11    | 34_1_2        | 9             | 10            | -             | [98af557](https://github.com/dt192/item-treasury-database/commit/98af557) |
| 2022-12-14    | 34_1_1        | 21            | 4             | -             | [e158849](https://github.com/dt192/item-treasury-database/commit/e158849) |
| 2022-12-07    | 34_1_0        | 22            | 24            | -             | [0b44dd1](https://github.com/dt192/item-treasury-database/commit/0b44dd1) |
| 2022-11-30    | 34_0_1        | 11            | 11            | -             | [51dd4ca](https://github.com/dt192/item-treasury-database/commit/51dd4ca) |
| 2022-11-15    | 34_0_0        | 1398          | 418           | -             | [b79cc84](https://github.com/dt192/item-treasury-database/commit/b79cc84) |
| 2022-09-21    | 33_2_0        | 43            | 339           | -             | [33c560d](https://github.com/dt192/item-treasury-database/commit/33c560d) |
| 2022-07-20    | 33_1_0        | 349           | 83            | -             | [3491656](https://github.com/dt192/item-treasury-database/commit/3491656) |
| 2022-05-25    | 33_0_5        | 3             | 6             | -             | [f6989f6](https://github.com/dt192/item-treasury-database/commit/f6989f6) |
| 2022-05-18    | 33_0_4        | 3             | 9             | -             | [66aac7d](https://github.com/dt192/item-treasury-database/commit/66aac7d) |
| 2022-05-11    | 33_0_3        | 3             | 1             | -             | [1355569](https://github.com/dt192/item-treasury-database/commit/1355569) |
| 2022-05-04    | 33_0_2        | 1             | -             | -             | [e754c9a](https://github.com/dt192/item-treasury-database/commit/e754c9a) |
| 2022-04-27    | 33_0_1        | -             | 2             | -             | [733520a](https://github.com/dt192/item-treasury-database/commit/733520a) |
| 2022-04-20    | 33_0_0        | -             | -             | -             | [d274449](https://github.com/dt192/item-treasury-database/commit/d274449) |
