#sideonly client

// Just Enough Calculation is a client-only utility mod. Its two calculator
// recipes exist only on the client, while the dedicated server has no JEC jar.
// FML requires the recipe registry contents to match on both sides, so remove
// these client-only recipes to keep the registry aligned.
recipes.remove(<jecalculation:item_calculator>);
recipes.remove(<jecalculation:math_calculator>);
