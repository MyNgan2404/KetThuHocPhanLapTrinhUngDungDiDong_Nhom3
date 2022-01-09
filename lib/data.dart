import 'package:flutter/material.dart';
import 'package:furnitureshop/custom_icons.dart';
import 'package:furnitureshop/models/category.dart';
import 'package:furnitureshop/models/product.dart';

class Data {
  static List<Category> categories = [
    Category("Váy vintage", Icons.local_florist),
    Category("Set Korea", Icons.local_florist),
    Category("Chân váy", Icons.local_florist),
    Category("Hàng Tết", Icons.local_florist)
  ];
  static List<Product> products = [
    Product(
        "assets/image_thoitrang/anh1.jpg",
        "HOT RESTOCK",
        400000,
        "- Set áo len dài tay + váy yếm kẻ. Set mua về có thể tách rời quá ư là xịn sò"
         "\n- Áo chất len mịn"
          "\n- Size: S M",

        getCategoryFromName("Set Korea"),
        0),
    Product(
        "assets/image_thoitrang/anh2.jpg",
        "NEW ARRIVALS",
        450000,
        "- Set áo unisex + chân váy chữ A dáng dài."
            "\n- Set chất siêu sịn"
            "\n- Size: S M",
        getCategoryFromName("Set Korea"),
        1),
    Product(
        "assets/image_thoitrang/anh3.jpg",
        "HOT ITEM",
        350000,
        "- Set áo sơ mi tiểu thư + yếm vintage"
            "\n- Size: S M",
        getCategoryFromName("Set Korea"),
        2),
    Product(
        "assets/image_thoitrang/anh4.jpg",
        "DRESS VINTAGE",
        390000,
        "- Váy tiểu thư cho những cô nàng bánh bèo"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        3),
    Product(
        "assets/image_thoitrang/anh5.jpg",
        "RED COLOR",
        499000,
        "- Set áo len đỏ + váy hóa nhí"
            "\n-Set siêu đỏ cho các nàng mặc tết "
            "\n- Size: S M",
        getCategoryFromName("Hàng Tết"),
        4),
    Product(
        "assets/image_thoitrang/set1.jpg",
        "SET RED",
        500000,
        "- Chất liệu dạ Tweed dày dặn, cao cấp cùng tone màu xanh nhẹ nhàng tiểu thư,  bên trong có lót không lo cộm ngứa."
        "\n- Mẫu này mix cùng sơ mi nơ là hết ý "
            "\n- Size: S M",
        getCategoryFromName("Hàng Tết"),
        5),
    Product(
        "assets/image_thoitrang/cv1.jpg",
        "CHÂN VÁY THẮT DÂY",
        550000,
        "- Chân váy chữ A dạng xòe."
            "\n- Chất liệu kaki mịn. Gồm 3 màu: be, trắng, đen"
            "\n- Size: S M",
        getCategoryFromName("Chân váy"),
        6),
    Product(
        "assets/image_thoitrang/cv3.jpg",
        "CHÂN VÁY NU",
        460000,
        "- Chân váy chữ A dạng xòe."
            "\n- Chất liệu kaki mịn. Gồm 3 màu: be, trắng, đen"
            "\n- Size: S M",
        getCategoryFromName("Chân váy"),
        7),
    Product(
        "assets/image_thoitrang/cv2.jpg",
        "CHÂN VÁY LƯỚI",
        489000,
        "- Chân váy lưới 2 lớp dày dặn"
            "\n- Gồm 3 màu: be, trắng, đen"
            "\n- Size: S M",
        getCategoryFromName("Chân váy"),
        8),
    Product(
        "assets/image_thoitrang/vay1.jpg",
        "WHITE DRESS",
        479000,
        "-Váy tiểu thư trắng tinh khôi"
            "\n- Chất liệu tơ mịn"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        9),
    Product(
        "assets/image_thoitrang/vay2.jpg",
        "WHITE VINTAGE",
        345000,
        "-Váy cho những cô nàng sang chảnh"
            "\n- Chất liệu kate mịn"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        10),
    Product(
        "assets/image_thoitrang/vay5.jpg",
        "HOA NHÍ",
        600000,
        "-Váy tiểu thư họa tiết hoa nhí"
            "\n- Chất liệu lụa cao cấp"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        11),
    Product(
        "assets/image_thoitrang/vay3.jpg",
        "VÁY TIỂU THƯ",
        580000,
        "-Váy tiểu thư họa tiết hoa "
            "\n- Chất liệu lụa cao cấp"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        12),
    Product(
        "assets/image_thoitrang/vay4.jpg",
        "VÁY CÔNG CHÚA",
        600000,
        "-Váy thần tiên tỷ tỷ"
            "\n- Chất liệu lụa cao cấp"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        13),
    Product(
        "assets/image_thoitrang/vay6.jpg",
        "RED PRINCESS",
        450000,
        "-Váy đỏ bánh bèo"
            "\n- Chất liệu lụa cao cấp"
            "\n- Size: S M",
        getCategoryFromName("Hàng Tết"),
        14),
    Product(
        "assets/image_thoitrang/vay7.jpg",
        "VÁY VEST",
        350000,
        "-Váy tiểu thư họa tiết hoa nhí"
            "\n- Chất liệu lụa cao cấp"
            "\n- Size: S M",
        getCategoryFromName("Váy vintage"),
        15)
  ];

  static Category getCategoryFromName(name) {
    return categories.firstWhere(
        (c) => c.name.toLowerCase() == name.toString().toLowerCase());
  }
}
