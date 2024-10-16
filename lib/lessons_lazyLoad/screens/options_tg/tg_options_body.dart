import 'package:flutter/material.dart';
import 'package:my_first_pet_project/my_general_widgets/my_app_bar_lessons.dart';
import 'package:my_first_pet_project/my_general_widgets/my_floating_action_button_info.dart';

class TgOptionsBody extends StatelessWidget {
  final List<MenuRowData> firstMenuRow = const [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.phone, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  final List<MenuRowData> secondMenuRow = const [
    MenuRowData(Icons.notifications, 'Уведомление и звуки'),
    MenuRowData(Icons.lock, 'Конфиденциальность'),
    MenuRowData(Icons.date_range_outlined, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];
  final List<MenuRowData> thirdMenuRow = const [
    MenuRowData(Icons.keyboard_voice, 'Микрофон'),
    MenuRowData(Icons.light_mode, 'Яркость'),
    MenuRowData(Icons.linked_camera, 'Камера'),
    MenuRowData(Icons.liquor, 'Прибухнем?'),
    MenuRowData(Icons.local_airport, 'Режим в самолете'),
  ];
  const TgOptionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const MyFloatingActionButtonInfo(
          text: 'Просто верстка страницы настроек ТГ'),
      backgroundColor: const Color.fromARGB(206, 158, 158, 158),
      appBar: const MyAppBarLessons(text: 'Options'),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _UserInfo(),
            const SizedBox(height: 30),
            Expanded(
                child: ListView(
              children: [
                _Menu(menuRowData: firstMenuRow),
                const SizedBox(height: 30),
                _Menu(menuRowData: secondMenuRow),
                const SizedBox(height: 30),
                _Menu(menuRowData: thirdMenuRow)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  const MenuRowData(this.icon, this.text);
}

class _Menu extends StatelessWidget {
  final List<MenuRowData> menuRowData;
  const _Menu({super.key, required this.menuRowData});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRowData.map((data) => _MenuRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: const Column(
            children: [
              SizedBox(height: 30),
              _Avatar(),
              SizedBox(height: 30),
              _UserName(),
              SizedBox(height: 10),
              _UserPhone(),
              SizedBox(height: 10),
              _UserNickName(),
            ],
          ),
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: Text(
            'Изм.',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }
}

class _UserNickName extends StatelessWidget {
  const _UserNickName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@AlexVin',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserPhone extends StatelessWidget {
  const _UserPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7(981)741-52-43',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserName extends StatelessWidget {
  const _UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Vinokurov Aleksandr',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Image.network(
        'https://legal.report/wp-content/uploads/2022/07/kloun-01.webp',
      ),
    );
  }
}
