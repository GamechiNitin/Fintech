import 'package:fintech/utils/import.dart';
import 'package:fintech/view/screen/home_tab/model/transaction_model.dart';

class TransactionComponent extends StatelessWidget {
  const TransactionComponent({required this.transactionModel, super.key});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Container(
        height: 48,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(kFeatureRadius),
          ),
          color: kBackground,
        ),
        child: Image.asset(
          transactionModel.logo ?? "",
        ),
      ),
      title: Text(
        transactionModel.label ?? "",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      subtitle: Text(
        transactionModel.date ?? "",
        style: Theme.of(context).textTheme.displaySmall,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            transactionModel.amount ?? "",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 14,
                ),
          ),
          Text(
            transactionModel.perDay ?? "",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
