class MyCertificationModel {
  final String badgePath;
  final String title;
  final String issuer;
  final String url;
  final DateTime issued;

  const MyCertificationModel({
    required this.badgePath,
    required this.title,
    required this.issuer,
    required this.url,
    required this.issued,
  });
}
