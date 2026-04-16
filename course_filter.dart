import 'package:flutter/material.dart';

class CourseFilter extends StatelessWidget {
  final Function(String, String) onChanged;

  CourseFilter({required this.onChanged});

  final courses = [
    "BSc Computer Science",
    "BSc IT",
    "BSc Math"
  ];

  final years = ["Year 1", "Year 2", "Year 3", "Year 4"];

  @override
  Widget build(BuildContext context) {
    String selectedCourse = courses[0];
    String selectedYear = years[0];

    return Row(
      children: [
        DropdownButton(
          value: selectedCourse,
          items: courses.map((c) =>
            DropdownMenuItem(value: c, child: Text(c))
          ).toList(),
          onChanged: (v) => onChanged(v!, selectedYear),
        ),
        SizedBox(width: 10),
        DropdownButton(
          value: selectedYear,
          items: years.map((y) =>
            DropdownMenuItem(value: y, child: Text(y))
          ).toList(),
          onChanged: (v) => onChanged(selectedCourse, v!),
        ),
      ],
    );
  }
}
