import 'dart:io';

void main() {
  String orderAgain = 'yes';

  // Requirement: While loop for continuous ordering
  while (orderAgain.toLowerCase() == 'yes') {
    print('====================================================');
    print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');
    print('Please enter your pizza size (small, medium, or large):');

    String size = stdin.readLineSync()!.toLowerCase();
    int price = 0;

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    print('How many pizzas do you want of $size?');
    int quantity = int.parse(stdin.readLineSync()!);

    int total = price * quantity;
    print('Your Total Payment is: \$$total');

    print('Do you want to order again? (yes/no):');
    orderAgain = stdin.readLineSync()!;
  }

  print('Thank you! Have a great day.');
}
