#sideonly client


//Code courtesy of wsetzer
//Taken from issue Nomifactory #868 PR and modified by Lizayu#3386, blame her if it's shit

import crafttweaker.item.IItemDefinition;
import crafttweaker.formatting.IFormattedText;

val fusedQuartz		= [
    <enderio:block_fused_quartz>			.definition,
    <enderio:block_enlightened_fused_quartz>		.definition,
    <enderio:block_dark_fused_quartz>			.definition,
    <enderio:block_holy_fused_quartz>			.definition,
    <enderio:block_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_holy_dark_fused_quartz>		.definition,
    <enderio:block_unholy_fused_quartz>			.definition,
    <enderio:block_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_unholy_dark_fused_quartz>		.definition,
    <enderio:block_pasture_fused_quartz>		.definition,
    <enderio:block_pasture_enlightened_fused_quartz>	.definition,
    <enderio:block_pasture_dark_fused_quartz>		.definition,
    <enderio:block_not_holy_fused_quartz>		.definition,
    <enderio:block_not_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_holy_dark_fused_quartz>		.definition,
    <enderio:block_not_unholy_fused_quartz>		.definition,
    <enderio:block_not_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_unholy_dark_fused_quartz>	.definition,
    <enderio:block_not_pasture_fused_quartz>		.definition,
    <enderio:block_not_pasture_enlightened_fused_quartz>.definition,
    <enderio:block_not_pasture_dark_fused_quartz>	.definition
] as IItemDefinition[];

val fusedGlass		= [
    <enderio:block_fused_glass>				.definition,
    <enderio:block_enlightened_fused_glass>		.definition,
    <enderio:block_dark_fused_glass>			.definition,
    <enderio:block_holy_fused_glass>			.definition,
    <enderio:block_holy_enlightened_fused_glass>	.definition,
    <enderio:block_holy_dark_fused_glass>		.definition,
    <enderio:block_unholy_fused_glass>			.definition,
    <enderio:block_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_unholy_dark_fused_glass>		.definition,
    <enderio:block_pasture_fused_glass>			.definition,
    <enderio:block_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_pasture_dark_fused_glass>		.definition,
    <enderio:block_not_holy_fused_glass>		.definition,
    <enderio:block_not_holy_enlightened_fused_glass>	.definition,
    <enderio:block_not_holy_dark_fused_glass>		.definition,
    <enderio:block_not_unholy_fused_glass>		.definition,
    <enderio:block_not_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_not_unholy_dark_fused_glass>		.definition,
    <enderio:block_not_pasture_fused_glass>		.definition,
    <enderio:block_not_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_not_pasture_dark_fused_glass>	.definition
] as IItemDefinition[];

val allArrays		= [
    fusedQuartz,
    fusedGlass,
] as IItemDefinition[][];

var colorDesc = "Most colours for this item are hidden to reduce clutter." as IFormattedText;


for array in allArrays {
    for item in array {
        item.defaultInstance.addTooltip(format.darkAqua(colorDesc));

        for color in 1 .. 16 {
            mods.jei.JEI.hide(item.makeStack(color));
            
        }
    }
}