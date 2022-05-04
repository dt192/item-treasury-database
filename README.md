# Lotro Item Treasury plugin database

This should be an up to date (assuming I'm still maintaining it) pair of data files for Galuhad's [Item Treasury](https://www.lotrointerface.com/downloads/info870-ItemTreasury.html) plugin.

```
Date         Update       Additions    Changes      Removals
-----------  -----------  -----------  -----------  -----------
2022-04-20   33_0_0       -            -            -
2022-04-27   33_0_1       -            2            -
```

## How to install
Add `Items.lua` and `NewItems.lua` to `Documents\The Lord of the Rings Online\Plugins\GaluhadPlugins\ItemTreasury`

In the same folder, open `Main.lua` and make the following changes:
```
Before                                    After
-----------                               -----------
import (PLUGINDIR..".33_0_Items");        import (PLUGINDIR..".Items");
import (PLUGINDIR..".33_0_NewItems");     import (PLUGINDIR..".NewItems");