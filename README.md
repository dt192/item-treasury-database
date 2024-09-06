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
| 2024-09-04    | 41.2.1        | -             | -             | -             |                                                                           |
| 2024-08-29    | 41.2.0        | 88            | 4             | -             | [663ea2a](https://github.com/dt192/item-treasury-database/commit/663ea2a3178102688feecd23409739886e6de0ed) |
| 2024-08-14    | 41.1.0        | -             | 58            | -             | [7c15ef2](https://github.com/dt192/item-treasury-database/commit/7c15ef2d4700b1b92f943c3eb3c2a5280de98b4d) |
| 2024-08-01    | 41.0.0        | 828           | 382           | 1             | [2b1cc1c](https://github.com/dt192/item-treasury-database/commit/2b1cc1c18fbf3f943236b227c4507d38070e5fb7) |
| 2024-06-05    | 40.1.0        | 15            | 9             | -             | [7092aa1](https://github.com/dt192/item-treasury-database/commit/7092aa1812e7c935fd20cc4e5ff40e26bcd6c909) |
| 2024-05-22    | 40.0.1        | -             | -             | -             |                                                                           |
| 2024-05-15    | 40.0.0        | 371           | 33            | 1             | [988d1f6](https://github.com/dt192/item-treasury-database/commit/988d1f633a4929808be073107646b2959e046a11) |
| 2024-04-24    | 39.2.1        | -             | -             | -             |                                                                           |
| 2024-04-17    | 39.2.0        | 38            | 5             | -             | [5d2d1a5](https://github.com/dt192/item-treasury-database/commit/5d2d1a5ab645643cac920e4fc434f8cb2b54ad4d) |
| 2024-04-10    | 39.1.2        | -             | 4             | -             | [41ebeca](https://github.com/dt192/item-treasury-database/commit/41ebeca8cf0b4d2f71c3829f13b1c899bfaf9164) |
| 2024-03-28    | 39.1.1        | 4             | 5             | -             | [5589b3c](https://github.com/dt192/item-treasury-database/commit/5589b3c278170cd0c1f9e22bd2e4e05b3d19fa32) |
| 2024-03-20    | 39.1.0        | 19            | 19            | -             | [2d8a5cc](https://github.com/dt192/item-treasury-database/commit/2d8a5cce7f3df4249ae668a63572fb32876e84a7) |
| 2024-03-13    | 39.0.0        | 716           | 138           | 13            | [5cef3f2](https://github.com/dt192/item-treasury-database/commit/5cef3f275b8ce6abd60cf574e1525e18cfa6fac4) |
| 2024-02-14    | 38.3.1        | -             | -             | -             |                                                                           |
| 2024-02-07    | 38.3.0        | 89            | 70            | -             | [777a3ad](https://github.com/dt192/item-treasury-database/commit/777a3adf423e6c9a5f701f419e67bb9556ce25b7) |
| 2024-01-17    | 38.2.1        | -             | -             | -             |                                                                           |
| 2024-01-10    | 38.2.0        | 17            | 36            | -             | [6a0ba48](https://github.com/dt192/item-treasury-database/commit/6a0ba48dc6853463207cea5a6f362b9d4fd8c9dd) |
| 2023-12-13    | 38.1.1        | 357           | 68            | 10            | [85d6430](https://github.com/dt192/item-treasury-database/commit/85d64302f5d8055c1be7ee2075ff2d59d4011b44) |
| 2023-12-06    | 38.1.0        | 211           | 43            | -             | [e37c5f3](https://github.com/dt192/item-treasury-database/commit/e37c5f3e832af8772013aad786208612d7181576) |
| 2023-11-15    | 38.0.1        | 50            | 7             | -             | [f1f3251](https://github.com/dt192/item-treasury-database/commit/f1f32511311fae8a3712d49fe7af9b9e30af79ea) |
| 2023-11-08    | 38.0.0        | 3329          | 1137          | 7             | [9f7c07a](https://github.com/dt192/item-treasury-database/commit/9f7c07ad6e18616a8f723fbac7eab450714a06e7) |
| 2023-10-11    | 37.2.1        | 75            | 33            | -             | [452e018](https://github.com/dt192/item-treasury-database/commit/452e0182b5f7ac4a7b61e75593d06f6f71134245) |
| 2023-10-03    | 37.2.0        | 854           | 109           | -             | [6675c57](https://github.com/dt192/item-treasury-database/commit/6675c5720fce2fce0950095460fac61fd9ce788e) |
| 2023-09-13    | 37.1.0        | 24            | -             | -             | [2423975](https://github.com/dt192/item-treasury-database/commit/2423975a9cb267e823ce2f47cdbd38a98b7f9882) |
| 2023-09-06    | 37.0.1        | -             | 57            | -             | [37f873d](https://github.com/dt192/item-treasury-database/commit/37f873d6c4f25c6b3a68c6bf505496769a944fda) |
| 2023-08-29    | 37.0.0        | 718           | 760           | 73            | [05715bd](https://github.com/dt192/item-treasury-database/commit/05715bdfdde7e3ae75937fdc91c6986d572dc37e) |
| 2023-08-02    | 36.2.0        | 19            | -             | -             | [48b1c47](https://github.com/dt192/item-treasury-database/commit/48b1c47b083b0fa55595ebfb779a590d8feb34aa) |
| 2023-07-12    | 36.1.0        | -             | 130           | -             | [68e1eea](https://github.com/dt192/item-treasury-database/commit/68e1eea50dc59ce44ff193229e8b00d7d29f5051) |
| 2023-06-27    | 36.0.2        | 1             | 2             | -             | [c4e2428](https://github.com/dt192/item-treasury-database/commit/c4e2428600a538662f2af30971721621d3be2801) |
| 2023-06-07    | 36.0.1        | 20            | 13            | -             | [8384658](https://github.com/dt192/item-treasury-database/commit/8384658374da20758292b9fb948276d1b5e279c5) |
| 2023-05-31    | 36.0.0        | 407           | 674           | -             | [6ed0e4e](https://github.com/dt192/item-treasury-database/commit/6ed0e4e0cca72f504efcd7d3e507268118c8bde1) |
| 2023-05-10    | 35.1.3        | 1             | 34            | 9             | [6112841](https://github.com/dt192/item-treasury-database/commit/6112841e1526667ebc8a28f36df8492df35d7448) |
| 2023-05-03    | 35.1.2        | 14            | 62            | 9             | [d7dbf7f](https://github.com/dt192/item-treasury-database/commit/d7dbf7fcc3640001da21ae363b16a2093591a4b3) |
| 2023-04-26    | 35.1.1        | -             | 32            | -             | [ef0f1c9](https://github.com/dt192/item-treasury-database/commit/ef0f1c90e6a323495d3656d887203b014485df0f) |
| 2023-04-19    | 35.1.0        | 119           | 76            | -             | [b93c7b5](https://github.com/dt192/item-treasury-database/commit/b93c7b56859f51a404086815460c98033b0460c0) |
| 2023-04-05    | 35.0.1        | 160           | -             | -             | [2c5a92d](https://github.com/dt192/item-treasury-database/commit/2c5a92d90568fab793f235755e1eff004da894f6) |
| 2023-03-22    | 35.0.0        | 940           | 1774          | 70            | [06cdaeb](https://github.com/dt192/item-treasury-database/commit/06cdaeb471bc53fc1f256e8fbd5426544f70936d) |
| 2023-03-08    | 34.3.0        | 16            | 4             | -             | [0d4c4b1](https://github.com/dt192/item-treasury-database/commit/0d4c4b1c44d211edf4117ecd88c12451bbdea840) |
| 2023-02-08    | 34.2.1        | -             | -             | -             |                                                                           |
| 2023-02-01    | 34.2.0        | 17            | 9             | -             | [bf6868b](https://github.com/dt192/item-treasury-database/commit/bf6868b6377ed947d4aa08c1f27938a3f732310f) |
| 2023-01-11    | 34.1.2        | 9             | 10            | -             | [98af557](https://github.com/dt192/item-treasury-database/commit/98af55767f010aab9ccdf42971eae3e92e97283c) |
| 2022-12-14    | 34.1.1        | 21            | 4             | -             | [e158849](https://github.com/dt192/item-treasury-database/commit/e158849c01503aa9a0194d2ea0c6abd5d48e13f4) |
| 2022-12-07    | 34.1.0        | 22            | 24            | -             | [0b44dd1](https://github.com/dt192/item-treasury-database/commit/0b44dd156ac573dc2297d4a439608de94840da3d) |
| 2022-11-30    | 34.0.1        | 11            | 11            | -             | [51dd4ca](https://github.com/dt192/item-treasury-database/commit/51dd4ca926f3b881bcf83a57f1325767c8d5d568) |
| 2022-11-15    | 34.0.0        | 1398          | 418           | -             | [b79cc84](https://github.com/dt192/item-treasury-database/commit/b79cc846ffe475174de8be6a1653712efae32d1f) |
| 2022-09-21    | 33.2.0        | 43            | 339           | -             | [33c560d](https://github.com/dt192/item-treasury-database/commit/33c560da6929bbf561ca11f7abffa37919244fa9) |
| 2022-07-20    | 33.1.0        | 349           | 83            | -             | [3491656](https://github.com/dt192/item-treasury-database/commit/3491656b4f4d6ba2e532e88e6ca6119e06c4c8bd) |
| 2022-05-25    | 33.0.5        | 3             | 6             | -             | [f6989f6](https://github.com/dt192/item-treasury-database/commit/f6989f6f7152d2244d614a2049d2a88ff03be154) |
| 2022-05-18    | 33.0.4        | 3             | 9             | -             | [66aac7d](https://github.com/dt192/item-treasury-database/commit/66aac7d97b2755637989625807314e75d97b449c) |
| 2022-05-11    | 33.0.3        | 3             | 1             | -             | [1355569](https://github.com/dt192/item-treasury-database/commit/1355569d16342fc8baf92272610e82345d2c7720) |
| 2022-05-04    | 33.0.2        | 1             | -             | -             | [e754c9a](https://github.com/dt192/item-treasury-database/commit/e754c9af700ca76bc8e45a84f11914ad485f2180) |
| 2022-04-27    | 33.0.1        | -             | 2             | -             | [733520a](https://github.com/dt192/item-treasury-database/commit/733520a247b5e2a95fc377b7daf0d2caf7856a64) |
| 2022-04-20    | 33.0.0        | -             | -             | -             | [d274449](https://github.com/dt192/item-treasury-database/commit/d2744492a88274b75609246c2a1b128442b1b616) |

