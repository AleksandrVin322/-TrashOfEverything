import 'package:flutter/material.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_lessons.dart';
import 'package:my_first_pet_project/my_general_widgets/my_floating_action_button_info.dart';

class MyMultiChildLayoutDelegateBody extends StatelessWidget {
  final String textAlert = '''
На этой странице я изучал виджет MultiChildLayoutDelegate.
Суть его в ручном выставлении размеров дочерних элементов
и их позиционирование. Для проверки реализации в коде программы
необходимо поиграть с LayoutId и его дочкой Text.
Увеличивая кол-во символов в строках у нас будет перемещаться
центральный виджет.
''';
  const MyMultiChildLayoutDelegateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarLessons(text: 'MultiChildLayoutDelegate'),
      floatingActionButton: MyFloatingActionButtonInfo(text: textAlert),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomMultiChildLayout(
            delegate: OwnMultiChildLayoutDelegate(),
            children: [
              LayoutId(
                id: 1,
                child: const Text('First hui'),
              ),
              LayoutId(
                id: 2,
                child: const Text('Second hueta'),
              ),
              LayoutId(
                id: 3,
                child: const Text('похуй 3 hueti'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OwnMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 100);

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2) && hasChild(3)) {
      const minOtherElementWidth = 50;
      final firstElementMaxWidth = size.width - minOtherElementWidth * 2;
      final firstElementSize = layoutChild(
          1, BoxConstraints.loose(Size(firstElementMaxWidth, size.height)));

      final thirdElementMaxWidth =
          size.width - firstElementSize.width - minOtherElementWidth;
      final thirdElementSize = layoutChild(
          3, BoxConstraints.loose(Size(thirdElementMaxWidth, size.height)));

      final secondElementMaxWidth =
          size.width - firstElementSize.width - thirdElementSize.width;
      final secondElementSize = layoutChild(
          2, BoxConstraints.loose(Size(secondElementMaxWidth, size.height)));

      final yOffsetFirstElement = size.height / 2 - firstElementSize.height / 2;
      const xOffsetFirstElement = 0.0;

      final yOffsetSecondElement =
          size.height / 2 - secondElementSize.height / 2;
      var xOffsetSecondElement = size.width / 2 - secondElementSize.width / 2;

      final yOffsetThirdElement = size.height / 2 - thirdElementSize.height / 2;
      final xOffsetThirdElement = size.width - thirdElementSize.width;

      if (firstElementSize.width > xOffsetSecondElement) {
        xOffsetSecondElement = firstElementSize.width;
      } else if (xOffsetThirdElement <
          xOffsetSecondElement + secondElementSize.width) {
        xOffsetSecondElement = xOffsetThirdElement - secondElementSize.width;
      }
      positionChild(1, Offset(xOffsetFirstElement, yOffsetFirstElement));
      positionChild(2, Offset(xOffsetSecondElement, yOffsetSecondElement));
      positionChild(3, Offset(xOffsetThirdElement, yOffsetThirdElement));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
