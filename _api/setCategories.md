---
title: "setCategories(categories) / getCategories()"
nav_title: "setCategories()"
---

Gets/sets the category (or categories) this product is in. The categories array can contain two kinds of entries:

- **strings** - A full category name
- **arrays** - An array of string category segments indicating hierarchy.

For example: `["Electronics"]` indicates the product is in one category: **"Electronics"**.
`["Electronics", ["Electronics", "Cell Phones"]]` indicates the product is in two categories: **Electronics** and **Electronics > Cell Phones**

Note that a product being a member of a hierarchical category does not mean it is automatically a member of all categories in the hierarchy. That is, membership in **Electronics > Cell Phones** does not imply membership in **Electronics**. If the product exists in both categories, they both must be specified in the categories array.

Categories can also be set via the [__product.categories__](/widget/documentation.html#_widget/product.md) configuration key.

<pre><code class="javascript">

// Product is in "Clothing > Shirts and Jackets" and "Fire Sale"
PriceWaiter.setCategories([
    ["Clothing", "Shirts and Jackets"],
    "Fire Sale"
]);

// Product is in "Electronics" and "Electronics > Cell Phones" categories
PriceWaiter.setCategories([
    "Electronics",
    ["Electronics", "Cell Phones"]
]);

</code></pre>
