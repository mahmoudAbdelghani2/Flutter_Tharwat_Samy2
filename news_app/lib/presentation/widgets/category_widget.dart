import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/presentation/views/category_view.dart';

class CategoryWidget extends StatefulWidget {
  final String imagePath;
  final String categoryName;
  //category
  const CategoryWidget(
      {Key? key, required this.imagePath, required this.categoryName})
      : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CategoryView(categoryName: widget.categoryName),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.fill,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 100,
          width: 180,
          child: Center(
              child: Text(
            widget.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
