class Product{
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;
  Product(this.name, this.description, this.price, this.image, this.rating);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(
        Product(
            "Pixel",
            "Pixel is the most feature-full phone ever", 800,
            "pixel.png", 0
        )
    );
    items.add(
        Product(
            "Iphone",
            "Iphone is the best samrtphone ever", 1000,
            "iphone.png", 0
        )
    );
    items.add(
        Product(
            "Laptop",
            "Laptop is most productive development tool",
            2000,
            "laptop.png", 0
        )
    );
    items.add(
        Product(
            "Tablet",
            "Tablet is the most useful device ever for meeting",
            1500,"tablet.png", 0
        )
    );
    items.add(
        Product(
            "Pendrive",
            "Pendrive is useful storage medium",
            100,
            "pendrive.png", 0
        )
    );
    items.add(
        Product(
            "Floppy Drive",
            "Floppy drive is useful rescue storage medium",
            20,
            "floppy.png", 0
        )
    );
    return items;
  }
}