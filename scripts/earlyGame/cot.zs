#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
//浓缩仙人掌
var nongsuoxianrenzhang as Item= VanillaFactory.createItem("nongsuoxianrenzhang");
nongsuoxianrenzhang.maxStackSize = 64;
nongsuoxianrenzhang.creativeTab = <creativetab:misc>;
nongsuoxianrenzhang.register();
//焦仙人掌
var jiaoxianrenzhang as Item= VanillaFactory.createItem("jiaoxianrenzhang");
jiaoxianrenzhang.maxStackSize = 64;
jiaoxianrenzhang.creativeTab = <creativetab:misc>;
jiaoxianrenzhang.register();
//竹炭
var zhutan as Item= VanillaFactory.createItem("zhutan");
zhutan.maxStackSize = 64;
zhutan.creativeTab = <creativetab:misc>;
zhutan.register();
//糖碳
var tangtan as Item= VanillaFactory.createItem("tangtan");
tangtan.maxStackSize = 64;
tangtan.creativeTab = <creativetab:misc>;
tangtan.register();
//糖焦煤
var tangjiao as Item= VanillaFactory.createItem("tangjiao");
tangjiao.maxStackSize = 64;
tangjiao.creativeTab = <creativetab:misc>;
tangjiao.register();