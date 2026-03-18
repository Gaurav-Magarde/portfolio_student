class ProjectModel {
  final String title;
  final String subtitle;
  final String author;
  final String grade;
  final String imagePath;

  ProjectModel({
    required this.title,
    required this.subtitle,
    required this.author,
    required this.grade,
    required this.imagePath,
  });
}
final List<ProjectModel> allProjects = [
  ProjectModel(
    title: 'Kemampuan Merangkum Tulisan',
    subtitle: 'BAHASA SUNDA',
    author: 'Oleh Al-Baiqi Samaan',
    grade: 'A',
    imagePath: 'assets/images/image_1.png',
  ),
  ProjectModel(
    title: 'Pragmatic Clean Architecture',
    subtitle: 'SOFTWARE DEV',
    author: 'Oleh Gaurav Magarde',
    grade: 'A+',
    imagePath: 'assets/images/image_2.png',
  ),
  ProjectModel(
    title: 'Object-Oriented Design Patterns',
    subtitle: 'COMPUTER SCIENCE',
    author: 'Oleh Budi Santoso',
    grade: 'A',
    imagePath: 'assets/images/image_3.png',
  ),
  ProjectModel(
    title: 'Hyper-Local Event Hub',
    subtitle: 'SYSTEM DESIGN',
    author: 'Oleh Siti Aminah',
    grade: 'B+',
    imagePath: 'assets/images/image_4.png',
  ),
  ProjectModel(
    title: 'Solar Farm Financial Viability',
    subtitle: 'ENERGY ECONOMICS',
    author: 'Oleh Reza Rahadian',
    grade: 'A-',
    imagePath: 'assets/images/image_2.png',
  ),
  ProjectModel(
    title: 'State Management with Riverpod',
    subtitle: 'FLUTTER FRAMEWORK',
    author: 'Oleh Dian Sastrowardoyo',
    grade: 'A',
    imagePath: 'assets/images/image_1.png',
  ),
  ProjectModel(
    title: 'Node.js & PostgreSQL Backend',
    subtitle: 'DATABASE MANAGEMENT',
    author: 'Oleh Joko Anwar',
    grade: 'B',
    imagePath: 'assets/images/image_3.png',
  ),
  ProjectModel(
    title: 'Virtual Reality Interactions',
    subtitle: 'GAME DEVELOPMENT',
    author: 'Oleh Maya Sari',
    grade: 'A',
    imagePath: 'assets/images/image_4.png',
  ),
  ProjectModel(
    title: 'Civic Issue Tracker App',
    subtitle: 'SOCIAL COMPUTING',
    author: 'Oleh Arif Rahman',
    grade: 'A-',
    imagePath: 'assets/images/image_2.png',
  ),
  ProjectModel(
    title: 'Household Inventory Algorithms',
    subtitle: 'ALGORITHM DESIGN',
    author: 'Oleh Tariq Halim',
    grade: 'B+',
    imagePath: 'assets/images/image_1.png',
  ),
];