# bamazon
This is an Amazon-like storefront with MySQL.

Here is google link to view a 1 minute video of the application in Node.js: https://drive.google.com/file/d/1UJITg_eFx8QWZkJgFx02IrrI9Csd8x3h/view?usp=sharing


APP DETAILS

Database has around 10 different products. 
Running this application will display all of the items available for sale. Include the ids, names, and prices of products for sale.
The app should then prompt users with two messages.



The first will ask you for the ID of the product you would like to buy.
The second will ask how many units of the product you would like to buy.



Once the customer has placed the order, the application should check if Bamazon has enough of the product to meet the your request.



If not, the app should log a phrase like Insufficient quantity!, and then prevent the order from going through.



However, if Bamazon does have enough of the product, it should fulfill your order.


This means it will update the SQL database to reflect the remaining quantity.
Once the update goes through, you will see your total cost of the purchase.
