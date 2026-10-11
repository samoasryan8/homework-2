void task1Easy() {
  List<String> shoppingList = ['Kat', 'Hac', 'Dzu'];

  shoppingList.add('Panir');
  shoppingList.insert(1, 'Karag');
  shoppingList.removeAt(2);
  shoppingList[0] = 'Tej';

  if (shoppingList.isNotEmpty) {
    String firstItem = shoppingList.first;
    String lastItem = shoppingList.last;
    print('First product: $firstItem');
    print('Latest product: $lastItem');
  }

  bool isEmptyList = shoppingList.isEmpty;
  print('List is empty. $isEmptyList');

  print('Final shopping list: $shoppingList');
}