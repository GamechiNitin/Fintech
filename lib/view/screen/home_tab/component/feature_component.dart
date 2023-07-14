import 'package:fintech/utils/import.dart';
import 'package:fintech/view/screen/home_tab/model/feature_model.dart';

class FeatureComponent extends StatelessWidget {
  const FeatureComponent({
    super.key,
    required this.featureModel,
    this.color,
  });
  final FeatureModel featureModel;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(kTransactionRadius),
        ),
        color: featureModel.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            featureModel.image,
            height: 25,
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              featureModel.label,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: color,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
