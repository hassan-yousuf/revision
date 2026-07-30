import 'students.dart';

void showStudentsResult() {
  const int total = 550;

  for (var student in students) {
    String grade = 'F';

    int obt = student['marks'];

    double percent = (obt / total) * 100;

    if (percent >= 85) {
      grade = 'A+';
    } else if (percent >= 75) {
      grade = 'A';
    } else if (percent >= 65) {
      grade = 'B';
    } else if (percent >= 55) {
      grade = 'C';
    } else if (percent >= 45) {
      grade = 'D';
    } else if (percent >= 35) {
      grade = 'E';
    }
    student.addAll({'percent': percent.toStringAsFixed(2), 'grade': grade});
    print(result(total, student: student));
  }
}

String result(int total, {required Map<String, dynamic> student}) {
  return '''
  ----------------------
  Roll no.: ${student['roll-no']}
  Name: ${student['name']}
  Total Marks: $total
  Obt. Marks: ${student['marks']}
  Percent: ${student['percent']}
  Grade: ${student['grade']}
  ----------------------
  ''';
}
