import 'dart:async';

import 'easy/Book.dart';
import 'easy/asyncFunc.dart';
import 'easy/xndir1.dart';
import 'hard/Payment.dart';
import 'hard/asyncFunc.dart';
import 'hard/func.dart';
import 'medium/Product.dart';
import 'medium/Vehicle.dart';
import 'medium/func.dart';

void main() async {
  print('---HESHT---');
  task1Easy();

  var book = Book(title: '1984', author: 'Vardan Vardanyan', pages: 328);
  print(book.getInfo());

  int sum = await sumValues(10, 20);
  print('Gumar: $sum');

  print('\n---MIJIN---');
  List<Vehicle> vehicles = [Car(8.5), Motorcycle(4.0)];
  print(
      'Vareliqi yndhanur caxs (200km): ${totalConsumption(vehicles, 200)} ltr');

  List<Product> products = [
    Product(name: 'Xndzor', category: 'Snund', price: 2.5),
    Product(name: 'Hac', category: 'Snund', price: 1.5),
    Product(name: 'Heraxos', category: 'Texnika', price: 500.0),
  ];
  print('Gumarayin arjeq@ est kargeri: ${totalByCategory(products)}');

  print('Anvtang stacum (drakan): ${await safeGetNumber(5)}');
  print('Anvtang stacum (bacasakan): ${await safeGetNumber(-3)}');

  print('\n---BARD---');
  Payment payment = CardPayment();
  print('Vcharman yndhanur gumar: ${calculateTotal(payment, 100.0)}');

  print('Indexner@: ${findPair([2, 7, 11, 15], 9)}');

  print('Ashxatanq@ katarvum e...');
  List<String> taskResults = await runTasks();
  print('Ardyunqner: $taskResults');
}
