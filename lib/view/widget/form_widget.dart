import 'package:fintech/utils/import.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {super.key,
      required this.label,
      required this.hint,
      required this.currency,
      required this.helper});
  final String label, hint, helper, currency;
  static List<String> drList = ["USDT", "BTC", "ETH", "SL"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 14,
              ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: kScaffoldBgColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(kFeatureRadius),
            ),
            border: Border.all(
              color: kBorderColor,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.only(left: 20, right: 8, top: 4, bottom: 4),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: hint,
                    hintStyle:
                        Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: kGrey2Color,
                              // fontWeight: FontWeight.n,
                            ),
                    fillColor: kScaffoldBgColor,
                    filled: true,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 70,
                child: DropdownButton(
                  isExpanded: false,
                  isDense: true,
                  icon: const RotatedBox(
                    quarterTurns: 45,
                    child: Icon(
                      Icons.chevron_right,
                      color: kBlackText,
                      size: 24,
                    ),
                  ),
                  value: currency,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                      ),
                  underline: const SizedBox(),
                  items: drList
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (onChanged) {},
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          helper,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 12,
                color: kGrey2Color,
              ),
        ),
      ],
    );
  }
}
