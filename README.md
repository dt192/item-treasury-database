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
| 2023-11-08    | 38.0.0        | 4282          | 591           | 7             | [7c0f3ce](https://github.com/dt192/item-treasury-database/commit/7c0f3ce3091ddd9eda534e7419a89a19b2fc5fb2) |
| 2023-08-29    | 37.0.0        | 758           | 902           | 73            | [e37acac](https://github.com/dt192/item-treasury-database/commit/e37acace3669ee46377c9f73d3b8a6270467689d) |
| 2023-05-31    | 36.0.0        | 701           | 778           | 18            | [8ed7296](https://github.com/dt192/item-treasury-database/commit/8ed72961683a195140c0e73c168f0e9c465b9a55) |
| 2023-03-22    | 35.0.0        | 1036          | 1831          | 93            | [c650d80](https://github.com/dt192/item-treasury-database/commit/c650d80f61cc9699e0add5ef4ae7fb039faae73f) |
| 2022-11-15    | 34.0.0        | 1800          | 846           | -             | [9e9466d](https://github.com/dt192/item-treasury-database/commit/9e9466d1a4156e406a9950dcbd1fb7b59c6d5706) |
| 2022-04-20    | 33.0.0        | -             | -             | -             | [d274449](https://github.com/dt192/item-treasury-database/commit/d2744492a88274b75609246c2a1b128442b1b616) |
