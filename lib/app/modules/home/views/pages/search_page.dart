import 'package:bloggin_apps/app/modules/home/views/widgets/customCard.dart';
import 'package:bloggin_apps/app/modules/home/views/widgets/customSearchBar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final VoidCallback onTap;

  const SearchPage({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;
    final sizeHeight = sizeDevice.height;
    final sizeWidht = sizeDevice.width;
    return ListView(children: <Widget>[
      Container(
        color: const Color(0xFFFFFFFF),
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidht / 20,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchBar(),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(onPress: onTap),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(onPress: onTap),
                const SizedBox(
                  height: 20,
                ),
                CustomCard(onPress: onTap),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
