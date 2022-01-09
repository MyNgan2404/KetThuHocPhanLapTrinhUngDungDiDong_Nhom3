import 'package:flutter/material.dart';
import 'package:furnitureshop/data.dart';
import 'package:furnitureshop/pages/main_page.dart';
import 'package:furnitureshop/pages/wishlist_page.dart';
import 'package:furnitureshop/widgets/shopping_basket_list_item.dart';

class ShoppingBasketPage extends StatefulWidget {
  @override
  ShoppingBasketPageState createState() {
    return new ShoppingBasketPageState();
  }
}

class ShoppingBasketPageState extends State<ShoppingBasketPage> {
  void clearShoppingBasket() {
    setState(() {
      MyApp.shoppingBasket.itemsAndQuantities.clear();
    });
  }

  double totalPriceAllProduct() {
    return MyApp.shoppingBasket.totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        key: key,
        appBar: AppBar(
          title: Text(
            "GIỎ HÀNG CỦA TÔI",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () => Navigator
                  .of(context)
                  .push(MaterialPageRoute(builder: (ctx) => WishListPage())),
            ),
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => clearShoppingBasket(),
            )
          ],
        ),
        body: MyApp.shoppingBasket.itemsAndQuantities.isNotEmpty
            ? new Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          MyApp.shoppingBasket.itemsAndQuantities.keys.length,
                      itemBuilder: (ctx, index) => ShoppingBasketListItem(
                          Data.products[MyApp
                              .shoppingBasket.itemsAndQuantities.keys
                              .elementAt(index)],
                          () => setState(() {})),
                    ),
                  ),
                  FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      key.currentState.showSnackBar(new SnackBar(
                        content: new Text(
                            "Thanh toán thành công - Tổng tiền là: " +  totalPriceAllProduct().toString() + " VNĐ"),
                      ));
                    },
                    padding: EdgeInsets.symmetric(vertical: 32.0),
                    child: Center(
                      child: Text(
                        "THANH TOÁN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            : Container(
                padding: EdgeInsets.all(64.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black26,
                          size: 32.0,
                        ),
                      ),
                      Text(
                        "Giỏ hàng của bạn đang trống",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
