import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furnitureshop/models/product.dart';
import 'package:furnitureshop/pages/main_page.dart';

class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách yêu thích"),
        centerTitle: true,
      ),
      body: MyApp.wishList.products.length != 0
          ? ListView.builder(
              itemBuilder: (ctx, index) => Container(
                    child: WishListListItem(MyApp.wishList.products[index]),
                  ),
              itemCount: MyApp.wishList.products.length,
            )
          : Center(
              child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black26,
                      size: 32.0,
                    ),
                  ),
                  Text(
                    "Để thêm một mục vào danh sách yêu thích của bạn, \nclick icon yêu thích",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
            )),
    );
  }
}

class WishListListItem extends StatelessWidget {
  final Product product;
  WishListListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: product.imageUrl,
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
