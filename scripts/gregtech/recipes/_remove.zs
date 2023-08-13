// 白铜币 * 4
<recipemap:forming_press>.findRecipe(16, [<metaitem:plateCupronickel>, <metaitem:shape.mold.credit>], null).remove();
// 磷化锰锭 * 1
<recipemap:electric_blast_furnace>.findRecipe(120, [<metaitem:dustManganesePhosphide>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:nitrogen> * 1000]).remove();
<recipemap:electric_blast_furnace>.findRecipe(120, [<metaitem:dustManganesePhosphide>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <minecraft:coal:1> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <minecraft:coal:0> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCoal> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCharcoal> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:gemCoke>], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCoke>], null).remove();
