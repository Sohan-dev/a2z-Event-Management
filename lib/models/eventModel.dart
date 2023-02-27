import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:practice_ui/models/catalog.dart';

class EventModel {
  static List<EventItem> item = [];
}

class EventItem {
  final int date;
  final String time;
  final String title;
  final String description;

  EventItem({
    required this.date,
    required this.time,
    required this.title,
    required this.description,
  });

  EventItem copyWith({
    int? date,
    String? time,
    String? title,
    String? description,
  }) {
    return EventItem(
      date: date ?? this.date,
      time: time ?? this.time,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'time': time,
      'title': title,
      'description': description,
    };
  }

  factory EventItem.fromMap(Map<String, dynamic> map) {
    return EventItem(
      date: map['date'] as int,
      time: map['time'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventItem.fromJson(String source) =>
      EventItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EventItem(date: $date, time: $time, title: $title, description: $description)';
  }

  @override
  bool operator ==(covariant EventItem other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.time == time &&
        other.title == title &&
        other.description == description;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        time.hashCode ^
        title.hashCode ^
        description.hashCode;
  }
}
