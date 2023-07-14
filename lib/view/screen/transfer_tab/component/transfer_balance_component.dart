import 'package:fintech/utils/import.dart';

class TransferBalanceComponent extends StatelessWidget {
  const TransferBalanceComponent({
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
    return Container(
      height: kCardHeight,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
        color: kPrimaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppString.yourBalance,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: kBlackText,
                ),
          ),
          Text(
            amount,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: kBlackText,
                ),
          ),
          Container(
            height: 33,
            width: 115,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(kButtonRadius)),
              color: kWhiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kGreenColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "BEP-20",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 14,
                      ),
                ),
                const SizedBox(width: 8),
                const RotatedBox(
                  quarterTurns: 45,
                  child: Icon(
                    Icons.chevron_right,
                    color: kBlackText,
                    size: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
