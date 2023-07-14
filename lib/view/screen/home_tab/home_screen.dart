import 'package:fintech/utils/assets.dart';
import 'package:fintech/utils/color.dart';
import 'package:fintech/utils/dimens.dart';
import 'package:fintech/utils/strings.dart';
import 'package:fintech/view/screen/home_tab/component/balance_component.dart';
import 'package:fintech/view/screen/home_tab/component/feature_component.dart';
import 'package:fintech/view/screen/home_tab/component/transaction_component.dart';
import 'package:fintech/view/screen/home_tab/data/home_db.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.welcomeMsg),
        actions: [
          Image.asset(
            AppAssets.notificationIcon,
            width: kIconHW,
            height: kIconHW,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kPadding16, right: kPadding20),
            child: CircleAvatar(
              backgroundColor: kProfileBgColor,
              radius: 17,
              child: Image.asset(AppAssets.profile),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        physics: const BouncingScrollPhysics(),
        children: [
          const BalanceComponent(
            amount: "\$3,460,348",
            lastTransaction: "\$3,460 - 2%",
            credit: true,
          ),
          const SizedBox(height: 30),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 14,
            ),
            children: List.generate(
              HomeDB.featureList.length,
              (index) => FeatureComponent(
                featureModel: HomeDB.featureList[index],
                color: index == 2 ? kWhiteColor : null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 8),
            child: Text(
              AppString.transaction,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: HomeDB.transactionList.length,
            separatorBuilder: (context, index) =>
                const Divider(color: kDividerColor),
            itemBuilder: (context, index) {
              return TransactionComponent(
                transactionModel: HomeDB.transactionList[index],
              );
            },
          )
        ],
      ),
    );
  }
}
