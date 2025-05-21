import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/selectedcolor.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = [
    Color(0xFF006D77), // أخضر مزرق داكن
    Color(0xFF83C5BE), // أخضر باستيلي فاتح
    Color(0xFFFFDDD2), // بيج وردي هادي
    Color(0xFFE29578), // برتقالي خفيف
    Color(0xFFEDF6F9),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: selectedColor(
                isSelected: selectedIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
