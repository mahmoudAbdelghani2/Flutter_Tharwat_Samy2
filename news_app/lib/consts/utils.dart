import 'package:news_app_ui_setup/models/category_model.dart';

//'business entertainment general health science sports technology'
class Utils {
  static final List<CategoryModel> categories = [
    CategoryModel(
        imageAssetUrl: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(imageAssetUrl: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(
        imageAssetUrl: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(imageAssetUrl: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(
        imageAssetUrl: 'assets/science.avif', categoryName: 'Science'),
  ];
}
