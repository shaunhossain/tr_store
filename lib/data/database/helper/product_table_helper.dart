import 'package:injectable/injectable.dart';
import 'package:tr_store/data/database/helper/db_instance.dart';
import 'package:tr_store/data/database/product_database.dart';

@Singleton()
class ProductTableHelper {

  Future<int> addProduct(ProductCompanion entry) async {
    return await productDatabase.into(productDatabase.product).insert(entry);
  }

  Future<void> getAllProducts() async {
    List<dynamic> allItems = await productDatabase.select(productDatabase.product).get();
    print('items in database: $allItems');
  }
}
