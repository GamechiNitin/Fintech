import 'package:fintech/utils/import.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorite",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 40,
              ),
        ),
      ),
    );
  }
}
