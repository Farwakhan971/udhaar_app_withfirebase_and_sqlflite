class Customer{
  final int? id;
  final String name;
  final String? phone;

  Customer({
    this.id,
    required this.name,
    this.phone,
});

  Map<String, dynamic> toJson()
  {
    return{
      'name':name,
      'phone':phone,
    };
  }
  Map<String, dynamic> toMap()
  {
    return{
      'id' : id,
      'name' : name,
      'phone': phone,
    };
  }
  factory Customer.fromMap(Map<String, dynamic> map)
  {
    return Customer(
      id: map['id'],
      name:map['name'],
      phone: map['phone'],
    );
  }
}
