import 'items.dart';

void generateBill() {
  const int discountAvailAmount = 100000;
  num total = 0;

  for (var item in items) {
    total += item['price'];
    print('''
--------------------------
    Category: ${item['name']}
    Amount: ${item['price']}
--------------------------
          ''');
  }

  num finalTotal = total;

  if (total >= discountAvailAmount) {
    finalTotal *= 0.90;
  }

  print('Amount Total: $total');
  print('Final Total: $finalTotal');
}
