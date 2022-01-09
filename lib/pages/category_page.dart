import 'package:flutter/material.dart';
import 'package:furnitureshop/data.dart';
import 'package:furnitureshop/models/category.dart';
import 'package:furnitureshop/models/category_filter.dart';
import 'package:furnitureshop/models/product.dart';
import 'package:furnitureshop/widgets/product_list_item.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  CategoryPage(this.category);

  @override
  CategoryPageState createState() {
    return new CategoryPageState();
  }
}

class CategoryPageState extends State<CategoryPage> {
  CategoryFilter filter = CategoryFilter("", SortBy.AZ);
  TextEditingController textEditingController = TextEditingController();
  SortBy sortBy;

  @override
  void initState() {
    sortBy = filter.sort;
    super.initState();
  }

  void changeSort(SortBy newSort) {
    setState(() {
      sortBy = newSort;
    });
  }

  void filterResults(CategoryFilter newFilter) {
    setState(() {
      filter = newFilter;
      textEditingController.text = newFilter.searchTerm;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> allProducts = Data.products
        .where((p) =>
            p.category == widget.category &&
            p.name.toLowerCase().contains(filter.searchTerm.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Loại sản phẩm: " + widget.category.name,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      body: Container(
          color: Colors.white,
          child: allProducts.length != 0
              ? ListView.builder(
                  itemBuilder: (ctx, index) =>
                      ProductListItem(allProducts[index]),
                  itemCount: allProducts.length,
                )
              : Center(
                  child: Text(
                  "Không có sản phẩm nào phù hợp !",
                  style: TextStyle(color: Colors.grey),
                ))),
    );
  }
}
