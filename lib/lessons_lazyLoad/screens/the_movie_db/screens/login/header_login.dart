import 'package:flutter/material.dart';
import 'package:my_first_pet_project/lessons_lazyLoad/screens/the_movie_db/screens/login/auth_form.dart';

class HeaderLogin extends StatelessWidget {
  final String text1 =
      'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь, чтобы начать.';
  final String text2 =
      'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно.';
  final textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  final styleButtons = const ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(Colors.blue),
    textStyle: WidgetStatePropertyAll(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    padding: WidgetStatePropertyAll(
      EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
    ),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
  );
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const AuthForm(),
          const SizedBox(height: 10),
          Text(
            text1,
            style: textStyle,
          ),
          const SizedBox(height: 10),
          TextButton(
            style: styleButtons,
            onPressed: () {},
            child: const Text('Registration'),
          ),
          const SizedBox(height: 10),
          Text(
            text2,
            style: textStyle,
          ),
          const SizedBox(height: 10),
          TextButton(
            style: styleButtons,
            onPressed: () {},
            child: const Text('Resend'),
          ),
        ],
      ),
    );
  }
}
