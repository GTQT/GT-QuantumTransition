import crafttweaker.item.IItemStack;
#Script by Emperdog

val types = [
	"agon",
	"azur",
	"bitt",
	"cray",
	"fort",
	"glaxx",
	"izsm",
	"jelt",
	"korp",
	"kryp",
	"lair",
	"lave",
	"mint",
	"myst",
	"reds",
	"reed",
	"roen",
	"sols",
	"sync",
	"tank",
	"vect",
	"vena",
	"zane",
	"zech",
	"zest",
	"zeta",
	"zion",
	"zkul",
	"zoea",
	"zome",
	"zone",
	"zorg",
	"zytl",
	"zyth"
] as string[];

val nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] as int[];

for block in types {
	mods.chisel.Carving.addGroup(block);
	for ints in nums {
		mods.chisel.Carving.addVariation(block, itemUtils.getItem("xtones:"~block, ints));
	}
}