import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/app/constant.dart';
import 'package:zendvn_online/model/category_model.dart';
import 'package:zendvn_online/page/newsApp/category/widget/select_box.dart';
import 'package:zendvn_online/provider/category_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class NewsCategoryPage extends StatelessWidget {
  const NewsCategoryPage({super.key});

  static const String routerName = '/news_categorypage';

  @override
  Widget build(BuildContext context) {
    Helper.printof('NewsCategoryPage::build');

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: FutureBuilder<List<CategoryModel>>(
        future: context.read<CategoryProvider>().loadCategory(),
        initialData: const [],
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (!snapshot.hasData) {
            return const Center(child: Text('No data'));
          }

          List<CategoryModel> categories = snapshot.data ?? [];
          List<int> lstSelected = context.read<CategoryProvider>().selectedId;
          if (categories.isEmpty) {
            return const Center(child: Text('No data'));
          }

          Helper.printof('NewsCategoryPage::FutureBuilder::build');

          return SafeArea(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: AppConstant.kDefaultPadding,
                mainAxisSpacing: AppConstant.kDefaultPadding,
                crossAxisCount: 2,
                childAspectRatio: 3.5,
              ),
              itemBuilder: (context, index) {
                return SelectBox(
                  id: categories[index].id,
                  name: categories[index].name,
                  color: categories[index].color,
                  selected: lstSelected.contains(categories[index].id),
                );
              },
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(horizontal: AppConstant.kDefaultPadding),
            ),
          );
        },
      ),
    );
  }
}
