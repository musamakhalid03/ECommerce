import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:musamakhalid/home/components/categorie_card.dart';
import 'package:musamakhalid/home/components/free_shipping_banner.dart';
import 'package:musamakhalid/home/components/product_card.dart';
import 'package:musamakhalid/home/components/subcatorie.dart';
import 'package:musamakhalid/home/home_controller.dart';
import 'package:musamakhalid/utils/gobal_components/app_bar/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const HomeAppBar(),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(11),
                const Divider(
                  height: 1,
                  color: Color(0xFFD9E4E8),
                ),
                const Gap(11),

                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      final category = controller.categories[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CategoryItem(
                          label: category.name,
                          badgeCount: 20,
                        ),
                      );
                    },
                  ),
                ),
                const Gap(11),
                const Divider(
                  height: 1,
                  color: Color(0xFFD9E4E8),
                ),
                const Gap(10),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      return SubCategoryItem(
                        picture: controller.categories[index].image,
                        label: controller.categories[index].name,
                        badgeCount: 20,
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Products",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Gap(8),
                      Text(
                        "(Beg)",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final product = controller.products[index];
                    return ProductCard(product: product);
                  },
                ),
                // Free Shipping Banner
                const FreeShippingBanner(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
