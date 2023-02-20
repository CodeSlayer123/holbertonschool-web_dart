class User {
   String name;
   int age;
   double height;
   int id;
   User({required this.name, required this.age, required this.height, required this.id});

   Map toJson() {
      return {'id': id, 'name': name, 'age': age, 'height': height};
   }

   static User fromJson(Map<dynamic, dynamic> userJson){
      return User(name: userJson['name'], age: userJson['age'], height: userJson['height'], id: userJson['id']);
   }

   @override
   String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
