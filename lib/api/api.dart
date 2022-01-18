import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:latihan_e_commerce/api/category/category_response.dart';
import 'package:latihan_e_commerce/api/feed/feed_response.dart';
import 'package:latihan_e_commerce/api/product/product_response.dart';

import 'Carousel/carousel_response.dart';

const baseUrl = "http://192.168.1.7/webservice_ecommerce/index.php/Api/";

class Api {
  static const Image_Url = "http://192.168.1.7/webservice_ecommerce/image/";

  static Future<CategoryResponse> getCategory() async {
    var url = baseUrl + "Category/select_category";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return CategoryResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "cant show";
    }
  }

  static Future<CarouselResponse> getCarousel() async {
    var url = baseUrl + "Carousel/select_carousel";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return CarouselResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "cant show the image";
    }
  }

  static Future<FeedResponse> getFeed() async {
    var url = baseUrl + "Feed/select_feed";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return FeedResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "cant show";
    }
  }

  static Future<ProductResponse> getResponse() async {
    var url = baseUrl + "Product/select_product";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return ProductResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "cant show the product";
    }
  }
}
