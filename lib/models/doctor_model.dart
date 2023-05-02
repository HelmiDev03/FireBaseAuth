// ignore_for_file: public_member_api_docs, sort_constructors_first
class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReviews;
  final String profile;
  final String description;
  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
    required this.description,
  });
}

final List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Helmi Lakhder",
    position: "Oncologist",
    averageReview: 4,
    totalReviews: 44,
    profile: "assets/doctor_1.jpg",
    description : "Dr. Luke Holland is a Oncologist in New York, NY. Dr. Holland completed their Medical School at University Of California. Following their education, Dr. Holland was board certified by the American Board of Oncology. Dr. Luke Holland currently provides care to patients at 1275 York Ave, New York, NY 10065.",
  ),
  DoctorModel(
    name: "Diego Melito",
    position: "Pediatric",
    averageReview: 3,
    totalReviews: 33,
    profile: "assets/doctor_2.jpg",
    description: "Dr. Sophie Harmon is a Pediatric in New York, NY. Dr. Harmon completed their Medical School at University Of California. Following their education, Dr. Harmon was board certified by the American Board of Pediatric. Dr. Sophie Harmon currently provides care to patients at 1275 York Ave, New York, NY 10065.",
  ),
  DoctorModel(
    name: "Ghada Boubaker",
    position: "Cardiologist",
    averageReview: 22,
    totalReviews: 44,
    profile: "assets/yaallah.jpeg",
    description: "Dr. Ghada Boubaker is a Cardiologist in New York, NY. Dr. Boubaker completed their Medical School at University Of California. Following their education, Dr. Boubaker was board certified by the American Board of Cardiology. Dr. Ghada Boubaker currently provides care to patients at 1275 York Ave, New York, NY 10065.",
  ),
];
