import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Dabour",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
  Product(
      id: 2,
      title: "Dabour",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
  Product(
      id: 3,
      title: "Dabour",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
  Product(
      id: 4,
      title: "Dabour",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
  Product(
      id: 5,
      title: "Dabour",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
  Product(
      id: 6,
      title: "Dabour",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dabour.jpg",
      color: Colors.blue[300]),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
