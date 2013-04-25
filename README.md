Recipes
=======

Recipes is a test data generation utility.  You create 'recipes' that provide a list of ingredients that are necessary and a series of steps to follow to prepare the ingredients into the necessary data.

Syntax
------

```ruby
  Recipe.define :order do
    ingredients do
      factory :customer, :with_payment_method
      products
    end
    
    preparation do
      cart = Cart.new
      with_each products do |product|
        cart.add product
      end
      
      Checkout.process cart, customer
    end
  end
```

You start with the ingredients block which lists what is needed.  This can either be a list of other recipes or can use factory girl to create the data.

The next block is the preparation block.  This is where you process all the ingredients into the data you need.  The last line of the block (or whatever is returned) will be the result of the recipe.
