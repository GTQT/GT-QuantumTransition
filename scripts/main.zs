#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

function textToIngredients(ingredients as IIngredient[][],
                           output as IItemStack,
                           recipe as string[],
                           replacements as IIngredient[string]) as IIngredient[][] {
    for i, str in recipe {
        for j in 0 .. str.length {
            var item = str[j];
            if " " != item {
                ingredients[i][j] = replacements[item];
            }
        }
    }
    return ingredients;
}

function makeShapedRecipeAction(name           as string,
                                output         as IItemStack,
                                recipe         as string[],
                                replacements   as IIngredient[string],
                                recipeFunction as IRecipeFunction,
                                recipeAction   as IRecipeAction) {
    var ingredients = [
        [null, null, null],
        [null, null, null],
        [null, null, null]
    ] as IIngredient[][];
    recipes.addShaped(name, output, textToIngredients(ingredients, output, recipe, replacements), recipeFunction, recipeAction);
}

function makeShapedRecipeFunction(name           as string,
                                  output         as IItemStack,
                                  recipe         as string[],
                                  replacements   as IIngredient[string],
                                  recipeFunction as IRecipeFunction) {
    makeShapedRecipeAction(name, output, recipe, replacements, recipeFunction, null);
}

function makeShaped(name         as string,
                    output       as IItemStack,
                    recipe       as string[],
                    replacements as IIngredient[string]) {
    makeShapedRecipeFunction(name, output, recipe, replacements, null);
}

