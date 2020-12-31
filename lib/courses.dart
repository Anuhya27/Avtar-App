class Courses {
  final String name;
  final String description;
  final int process;
  final String imageUrl;
  bool bookmarks = false;
  Courses(
      {this.name,
      this.description,
      this.process,
      this.bookmarks,
      this.imageUrl});
}

List<Courses> courses = [
  Courses(
      name: "UI Design",
      description: "Visual appereance of app sjd",
      process: 2,
      bookmarks: false,
      imageUrl: "images/UI_Design.png"),
  Courses(
      name: "UX Design",
      description: "Brain behind the design",
      process: 2,
      bookmarks: false,
      imageUrl: "images/UX_Design.jpeg"),
  Courses(
      name: "Interaction Design",
      description: "Includes animations and eff..",
      process: 0,
      bookmarks: false,
      imageUrl: "images/Interaction_Design.png"),
  Courses(
      name: "Industrial Design",
      description: "Visual appereance of app &..",
      process: 0,
      bookmarks: false,
      imageUrl: "images/UI_Design.png"),
];
