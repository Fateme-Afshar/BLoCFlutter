class Person {
  final String name;
  final String family;
  final int age;
  final String email;

  Person(this.name,this.family,this.age,this.email);

  Person.fromJson(Map<String , dynamic> map ) :
        name=map["name"], family=map["family"], age=map["age"], email=map["email"];

  Map<String,dynamic> toJson() =>{
    'name' : name,
    'family' : family,
    'age' : age,
    'email' : email
  };
}