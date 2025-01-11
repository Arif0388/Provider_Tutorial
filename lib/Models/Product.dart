class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  String? rating;

  Product({this.id,this.title,this.description,this.image,this.category,this.price,this.rating});


  Product.fromJson(Map<String,dynamic> json){
    if(json['id'] is int){
      id=json['id'];
    }

    if(json['title'] is String){
      title=json['title'];
    }

    if(json['price'] is double){
      price=json['price'];
    }

    if(json['description'] is String){
      description=json['description'];
    }

    if(json['category'] is String){
      category=json['category'];
    }

    if(json['image'] is String){
      image=json['image'];
    }

    if(json['rating'] is String){
      rating=json['rating'];
    }
  }

Map<String,dynamic> toJson(){
    final Map<String,dynamic> _data = <String,dynamic>{};
    _data['id']=id;
    _data['title']=title;
    _data['price']=price;
    _data['description']=description;
    _data['category']=category;
    _data['image']=image;
    _data['rating']=rating;
    return _data;
}

}