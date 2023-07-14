import 'package:fintech/utils/assets.dart';
import 'package:fintech/utils/color.dart';
import 'package:fintech/utils/strings.dart';
import 'package:fintech/view/screen/home_tab/model/feature_model.dart';
import 'package:fintech/view/screen/home_tab/model/transaction_model.dart';

class HomeDB {
  static List<TransactionModel> transactionList = [
    TransactionModel(
      label: "Matteo",
      date: "Aug 25, 2022",
      logo: AppAssets.shareIcon,
      amount: "£100",
      perDay: "-0.04 %",
    ),
    TransactionModel(
      label: "Bitcoin",
      date: "Aug 25, 2022",
      logo: AppAssets.bitcoinIcon,
      amount: "\$300",
      perDay: "-0.04 %",
    ),
    TransactionModel(
      label: "Solana",
      date: "Aug 25, 2022",
      logo: AppAssets.solanaIcon,
      amount: "\$900",
      perDay: "-0.04 %",
    ),
  ];
  static List<FeatureModel> featureList = [
    FeatureModel(
      label: AppString.addMoney,
      color: kI1Color,
      image: AppAssets.addIcon,
    ),
    FeatureModel(
      label: AppString.trade,
      color: kI2Color,
      image: AppAssets.transferIcon,
    ),
    FeatureModel(
      label: AppString.withdraw,
      color: kI3Color,
      image: AppAssets.save,
    ),
  ];
}
