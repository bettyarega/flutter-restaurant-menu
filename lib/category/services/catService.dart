import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cp_rest_app/category/models/Category.dart';

class CatService {
  FirebaseFirestore _instance;

  List<Category> _categories = [];

  List<Category> getCategories() {
    return _categories;
  }

  Future<void> getCategoriesfrmFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference categories = _instance.collection('cp\'s menu');
    DocumentSnapshot snapshot = await categories.doc('categories').get();
    var data = snapshot.data() as Map;
    var categoriesData = data['categories'] as List;

    categoriesData.forEach((catData) {
      _categories.add(Category.fromJson(catData));
    });
  }
}
