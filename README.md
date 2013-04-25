Recipes
=======

Recipes is a test data generation utility.  You create 'recipes' that provide a list of ingredients that are necessary and a series of steps to follow to prepare the ingredients into the necessary data.

Syntax
------

```ruby
  Recipe.define :order do
    ingredients do
      customer
      product
    end
    
    preparation do
      cart = [product]
      complete_checkout cart, customer
    end
  end
```