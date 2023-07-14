import 'package:fintech/utils/import.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Setting",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 40,
              ),
        ),
      ),
    );
  }
}
