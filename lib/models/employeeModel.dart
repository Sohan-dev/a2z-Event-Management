import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class EmployeeModel {
  static List<EmployeeItem> item = [];
}

class EmployeeItem {
  final String img;
  final String name;
  final String phone;
  final String jobType;

  EmployeeItem({
    required this.img,
    required this.name,
    required this.phone,
    required this.jobType,
  });

  EmployeeItem copyWith({
    String? img,
    String? name,
    String? phone,
    String? jobType,
  }) {
    return EmployeeItem(
      img: img ?? this.img,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      jobType: jobType ?? this.jobType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'img': img,
      'name': name,
      'phone': phone,
      'jobType': jobType,
    };
  }

  factory EmployeeItem.fromMap(Map<String, dynamic> map) {
    return EmployeeItem(
      img: map['img'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      jobType: map['jobType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeItem.fromJson(String source) =>
      EmployeeItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EmployeeItem(img: $img, name: $name, phone: $phone, jobType: $jobType)';
  }

  @override
  bool operator ==(covariant EmployeeItem other) {
    if (identical(this, other)) return true;

    return other.img == img &&
        other.name == name &&
        other.phone == phone &&
        other.jobType == jobType;
  }

  @override
  int get hashCode {
    return img.hashCode ^ name.hashCode ^ phone.hashCode ^ jobType.hashCode;
  }
}
