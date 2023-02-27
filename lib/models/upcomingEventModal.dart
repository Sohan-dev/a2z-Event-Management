import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UpcomingEventModel {
  static List<UpcomingEventItem> item = [];
}

class UpcomingEventItem {
  final int date;
  final String time;
  final String title;
  final String tag;
  final Details details;
  UpcomingEventItem({
    required this.date,
    required this.time,
    required this.title,
    required this.tag,
    required this.details,
  });

  UpcomingEventItem copyWith({
    int? date,
    String? time,
    String? title,
    String? tag,
    Details? details,
  }) {
    return UpcomingEventItem(
      date: date ?? this.date,
      time: time ?? this.time,
      title: title ?? this.title,
      tag: tag ?? this.tag,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'time': time,
      'title': title,
      'tag': tag,
      'details': details.toMap(),
    };
  }

  factory UpcomingEventItem.fromMap(Map<String, dynamic> map) {
    return UpcomingEventItem(
      date: map['date'] as int,
      time: map['time'] as String,
      title: map['title'] as String,
      tag: map['tag'] as String,
      details: Details.fromMap(map['details'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UpcomingEventItem.fromJson(String source) =>
      UpcomingEventItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UpcomingEventItem(date: $date, time: $time, title: $title, tag: $tag, details: $details)';
  }

  @override
  bool operator ==(covariant UpcomingEventItem other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.time == time &&
        other.title == title &&
        other.tag == tag &&
        other.details == details;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        time.hashCode ^
        title.hashCode ^
        tag.hashCode ^
        details.hashCode;
  }
}

class Details {
  Details({
    required this.name,
    required this.phone,
    required this.address,
    required this.amount,
  });

  final String name;
  final String phone;
  final String address;
  final String amount;

  Details copyWith({
    String? name,
    String? phone,
    String? address,
    String? amount,
  }) {
    return Details(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'address': address,
      'amount': amount,
    };
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      name: map['name'] as String,
      phone: map['phone'] as String,
      address: map['address'] as String,
      amount: map['amount'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Details.fromJson(String source) =>
      Details.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Details(name: $name, phone: $phone, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(covariant Details other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.phone == phone &&
        other.address == address &&
        other.amount == amount;
  }

  @override
  int get hashCode {
    return name.hashCode ^ phone.hashCode ^ address.hashCode ^ amount.hashCode;
  }
}
