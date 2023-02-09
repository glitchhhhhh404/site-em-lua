-- Define a list of products available for purchase

local products = {

  {name = "Book", price = 10.99},

  {name = "Shirt", price = 20.00},

  {name = "Computer", price = 800.00},

  {name = "Phone", price = 600.00}

}



-- Define a function to display the products and prices

local function displayProducts()

  print("Products available for purchase:")

  for i, product in ipairs(products) do

    print(i .. ". " .. product.name .. " - $" .. product.price)

  end

end



-- Define a function to handle the purchase process

local function handlePurchase()

  -- Display the products and prices

  displayProducts()



  -- Prompt the user to enter the product number they want to purchase

  io.write("Enter the product number you would like to purchase: ")

  local productIndex = tonumber(io.read())



  -- Check if the entered product number is valid

  if productIndex == nil or productIndex < 1 or productIndex > #products then

    print("Invalid product number.")

    return

  end



  -- Retrieve the selected product

  local selectedProduct = products[productIndex]



  -- Prompt the user to enter the quantity they want to purchase

  io.write("Enter the quantity you would like to purchase: ")

  local quantity = tonumber(io.read())



  -- Check if the entered quantity is valid

  if quantity == nil or quantity < 1 then

    print("Invalid quantity.")

    return

  end



  -- Calculate the total price

  local totalPrice = selectedProduct.price * quantity



  -- Display the total price

  print("Total price: $" .. totalPrice)



  -- Prompt the user to confirm the purchase

  io.write("Would you like to proceed with the purchase (yes/no)? ")

  local confirmation = io.read()



  -- Check if the user confirmed the purchase

  if confirmation == "yes" then

    print("Purchase successful! Thank you for shopping with us.")

  else

    print("Purchase cancelled.")

  end

end



-- Call the handlePurchase function to start the purchase process

handlePurchase()
