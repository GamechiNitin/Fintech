import 'package:fintech/utils/import.dart';

class ExchangeComponent extends StatelessWidget {
  const ExchangeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(right: 20, left: 20, bottom: 30),
      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kFeatureRadius)),
        color: kGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(kFeatureRadius)),
              color: kWhiteColor,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.black,
              size: 22,
            ),
          ),
          Text(
            AppString.exchange,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Image.asset(
            AppAssets.arrowIcon,
            height: 15,
          ),
        ],
      ),
    );
  }
}
