var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password:"password",
    database: "bamazon"
});

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
                ID: res[i].id,
                Product: res[i].product,
                Department: res[i].department,
                Price: res[i].price,
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
            displayInventory();
        } else {
            var cost = (productArr[arrayID].Price*reqQty);
            makepurchase();
        }
    });
}