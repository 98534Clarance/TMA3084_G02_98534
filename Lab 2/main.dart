import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;
  var owen = emp.Employee('Manager', 'Kuching', 5000, 10.0);
  if (owen.salary >= 4000) {
    extraPayPerHr = 10.0;
  } else {
    extraPayPerHr = 20.0;
  }
  double totalSalary = owen.salary + (owen.overtimeHr * extraPayPerHr);
  print('Total Salary: \$$totalSalary');
}
