import 'package:fintech/utils/import.dart';

class BalanceComponent extends StatelessWidget {
  const BalanceComponent({
    super.key,
    required this.amount,
    required this.lastTransaction,
    required this.credit,
  });
  final String amount;
  final String lastTransaction;
  final bool credit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: kCardHeight - 30,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
            color: kPinkShadeColor,
          ),
        ),
        Container(
          height: kCardHeight,
          padding: const EdgeInsets.all(kPadding20),
          margin: const EdgeInsets.only(right: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
            color: kBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.yourBalance,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.visibility_off,
                    color: kLightWhiteColor,
                    size: 14,
                  ),
                ],
              ),
              Text(
                amount,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 33,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kButtonRadius)),
                      color: kLPrimaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          credit ? Icons.arrow_upward : Icons.arrow_downward,
                          color: kBlackText,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          lastTransaction,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppAssets.star,
                    height: 42,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
