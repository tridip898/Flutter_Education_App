class CourseTileModel{
  final String title;
  final String time;
  final String classes;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  CourseTileModel(this.title, this.time, this.classes, this.text1, this.text2,
      this.text3, this.text4);
}

List<CourseTileModel> courseTile=[
  CourseTileModel("Introduction", "45", "2", "Introduction And The Course Overview", "Downloading unity", "Installing Unity and Look to Interface", "Your First Game"),
  CourseTileModel("C# Basic", "180", "8", "Introduction And The Course Overview", "Downloading unity", "Installing Unity and Look to Interface", "Your First Game"),
  CourseTileModel("Giant Recreated in Unity 5", "60", "4", "Introduction And The Course Overview", "Downloading unity", "Installing Unity and Look to Interface", "Your First Game"),
  CourseTileModel("UI Design", "30", "3", "Introduction And The Course Overview", "Downloading unity", "Installing Unity and Look to Interface", "Your First Game"),
];