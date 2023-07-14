import 'package:fintech/utils/import.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Card",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 40,
              ),
        ),
      ),
    );
  }
}
