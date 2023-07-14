import 'package:fintech/utils/import.dart';
import 'package:fintech/view/screen/transfer_tab/component/exchange_component.dart';
import 'package:fintech/view/screen/transfer_tab/component/transfer_balance_component.dart';
import 'package:fintech/view/widget/form_widget.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: Image.asset(
          AppAssets.menuIcon,
          scale: 3.2,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: kPadding16, right: kPadding20),
            child: Image.asset(
              AppAssets.notificationIcon,
              width: kIconHW,
              height: kIconHW,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        physics: const BouncingScrollPhysics(),
        children: [
          const TransferBalanceComponent(
            amount: "\$3,460,348",
            lastTransaction: "\$3,460 - 2%",
            credit: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 8),
            child: RichText(
              text: TextSpan(
                text: "Ever ETH ",
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: "Swap",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: kGrey2Color,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: SizedBox(
                  height: 110,
                  child: VerticalDivider(
                    color: kGrey2Color,
                    width: 2,
                    thickness: 1,
                  ),
                ),
              ),
              Column(
                children: [
                  const FormWidget(
                    label: "From:",
                    hint: "Enter Amount",
                    helper: "1 BTC = 25839.80 USD",
                    currency: "USDT",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: kScaffoldBgColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kBorderColor,
                            width: 1,
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 50,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: kPinkShade2Color,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            AppAssets.transferIcon,
                            color: kWhiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const FormWidget(
                    label: "To:",
                    hint: "Enter Amount",
                    helper: "We use mindmarket rates",
                    currency: "BTC",
                  ),
                ],
              ),
            ],
          ),
          // const ExchangeComponent(),
        ],
      ),
      bottomNavigationBar: const ExchangeComponent(),
    );
  }
}
