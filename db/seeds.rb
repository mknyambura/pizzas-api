restaurants = Restaurant.create([
  { name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201' },
  { name: 'PizzArte', address: '69 W 55th St, New York, NY 10019' },
  { name: 'Robertas', address: '261 Moore St, Brooklyn, NY 11206' }
])

pizzas = Pizza.create([
  { name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese' },
  { name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni' },
  { name: 'Margherita', ingredients: 'Dough, Tomato Sauce, Cheese, Basil' },
  { name: 'Meat Lovers', ingredients: 'Dough, Tomato Sauce, Cheese, Sausage, Bacon, Pepperoni' }
])

restaurant_pizzas = RestaurantPizza.create([
  { restaurant: restaurants.first, pizza: pizzas.first, price: 10.99 },
  { restaurant: restaurants.first, pizza: pizzas.second, price: 12.99 },
  { restaurant: restaurants.second, pizza: pizzas.first, price: 8.99 },
  { restaurant: restaurants.second, pizza: pizzas.third, price: 9.99 },
  { restaurant: restaurants.second, pizza: pizzas.fourth, price: 14.99 },
  { restaurant: restaurants.third, pizza: pizzas.second, price: 10.99 },
  { restaurant: restaurants.third, pizza: pizzas.fourth, price: 15.99 }
])