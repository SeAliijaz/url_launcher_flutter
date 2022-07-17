import 'package:flutter/material.dart';

class AlarmInfo {
  final int id;
  final String title;
  final DateTime alarmDateTime;
  final bool isPending;
  final int gradientColorIndex;

  const AlarmInfo({
    Key key,
    this.id,
    this.title,
    this.alarmDateTime,
    this.isPending,
    this.gradientColorIndex,
  });

  factory AlarmInfo.fromMap(Map<String, dynamic> json) => AlarmInfo(
        id: json["id"],
        title: json["title"],
        alarmDateTime: DateTime.parse(json["alarmDateTime"]),
        isPending: json["isPending"],
        gradientColorIndex: json["gradientColorIndex"],
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "alarmDateTime": alarmDateTime.toIso8601String(),
        "isPending": isPending,
        "gradientColorIndex": gradientColorIndex,
      };
}
