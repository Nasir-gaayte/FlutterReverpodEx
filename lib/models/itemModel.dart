class ItemModel {
  String? name;
  String? item;
  String? phone;
  String? image;
  String? s1;
  String? s2;
  String? s3;
  double? price;
  String? city;
  String? category;
  String? decs;

  ItemModel(
      {this.name,
      this.item,
      this.phone,
      this.image,
      this.s1,
      this.s2,
      this.s3,
      this.price,
      this.city,
      this.category,
      this.decs});

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      name: json['name'],
      item: json['item'],
      phone: json['phone'],
      image: json['image'],
      s1: json['s1'],
      s2: json['s2'],
      s3: json['s3'],
      price: json['price'],
      city: json['city'],
      category: json['category'],
      decs: json['decs'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['item'] = item;
    data['phone'] = phone;
    data['image'] = image;
    data['s1'] = s1;
    data['s2'] = s2;
    data['s3'] = s3;
    data['price'] = price;
    data['city'] = city;
    data['category'] = category;
    data['decs'] = decs;
    return data;
  }
}
