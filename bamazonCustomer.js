var mysql = require("mysql");
var inquirer = require("inquirer");
var consoleTable = require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password:"zackylove4649",
    database: "bamazon"
});

var productArr = [];

connection.connect(function(err) {
    if(err) throw err;
    start();
});

function start() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        for (var i = 0; i < res.length; i++) {
            var tempArry =
            {
                ID: res[i].item_id,
                Product: res[i].product_name,
                Department: res[i].department_name,
                Price: res[i].purchase_price,
                Qty: res[i].quantity,
                Sales: res[i].sales
            }
            productArr.push(tempArry);
        };
        console.table('\nBamazon Inventory', productArr);
        console.log("-----------------------------------------------------\n");
        inquireForm();
    });
};

function inquireForm() {
    inquirer.prompt([
        {
            name: "productId",
            message: "Type the ID of the item you would like to purchase.",
        },
        {
            name: "quantity",
            message: "How many?",
        }
    ]).then(function (answers) {
        var itemID = answers.productId;
        var arrayID = (parseInt(itemID) - 1);
        var itemQty = productArr[arrayID].Qty;
        var reqQty = answers.quantity;

        if (reqQty > itemQty) {
            console.log("Insuficient Quantity!");
            productArr = [];
            start();
        } else {
            var cost = (productArr[arrayID].Price*reqQty);
            makepurchase(itemID, arrayID, itemQty, reqQty, cost);
        }
    });
};

function makepurchase(itemID, arrayID, itemQty, reqQty, cost) {
    var newQty = (parseInt(itemQty) - parseInt(reqQty));
    var newProdSales = (parseInt(productArr[arrayID].Sales) + parseInt(cost));
    
    connection.query("UPDATE products SET ?, ? WHERE item_id = " + itemID,
    [
        {
            quantity: newQty
        },
        {
            sales: newProdSales
        }
    ],
        function (err, res) {
            if (err) throw err;
            console.log("Congrats! You ordered " + reqQty + " " + (productArr[arrayID].Product) + "(s) for $" + cost + ".");
            connection.end();
        });
}


