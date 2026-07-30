import 'employees.dart';

void employeeSalaryReport() {
  int high = 0;
  int medium = 0;
  int low = 0;
  SalaryCategory? category;
  print('All Employees:');
  for (var employee in employees) {
    if (employee['salary'] >= 75000) {
      category = SalaryCategory.HighSalary;
      high++;
    } else if (employee['salary'] >= 45000) {
      category = SalaryCategory.MediumSalary;
      medium++;
    } else {
      category = SalaryCategory.LowSalary;
      low++;
    }
    print('''
--------------------------------
      ID: ${employee['ID']}
      Salary: ${employee['salary']}
      Category: ${category.name}
--------------------------------
      ''');
  }
  print('Employees by SalaryCategory:');
  print('High Salary Employees: $high');
  print('Medium Salary Employees: $medium');
  print('Low Salary Employees: $low');
  print('Total Employees: ${employees.length}');
}

enum SalaryCategory { HighSalary, MediumSalary, LowSalary }
