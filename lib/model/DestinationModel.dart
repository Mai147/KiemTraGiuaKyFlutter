import 'dart:core';

class DestinationModel {
  final String id;
  final String name;
  final String image;
  final List<String> genre;
  final int rating;

  DestinationModel(this.id, this.name, this.image, this.genre, this.rating);
  
  static List<DestinationModel> MockData() {
    List<DestinationModel> ls = [];
    ls.add(DestinationModel("1", "Lăng Khải định", "assets/images/img1.jpg", ['Du lịch', 'Nghỉ dưỡng', 'Huế'], 4));
    ls.add(DestinationModel("2", "Lăng Minh Mạng", "assets/images/img2.jpg", ['Du lịch', 'Tham quan'], 5));
    ls.add(DestinationModel("3", "Lăng Tự Đức", "assets/images/img3.jpg", ['Du lịch', 'Huế'], 3));
    return ls;
  }
}