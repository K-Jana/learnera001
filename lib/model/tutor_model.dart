//here we will write the tutor data model class
class Tutor {
  int id;
  String name;
  double rating;
  int reviews;
  String language;

  Tutor(
      {required this.name,
      required this.rating,
      required this.reviews,
      required this.language});
}
