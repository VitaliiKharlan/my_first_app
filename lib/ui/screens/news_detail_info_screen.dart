import 'package:flutter/material.dart';

import '../../domain/entity/news_request.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class NewsDetailsInfoScreen extends StatelessWidget {
  final NewsRequest newsOne;

  const NewsDetailsInfoScreen({
    super.key,
    required this.newsOne,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryMain,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('NEWS'),
        titleTextStyle:
            AppTextStyle.headingH4.copyWith(color: AppColors.utilityWhite),
      ),
      body: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go BACK',
                    style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  newsOne.name.toString(),
                  style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                ),
                // Text(
                //   newsOne.symbol.toString(),
                //   style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                // ),
                // Text(
                //   newsOne.symbol.toString(),
                //   style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                // ),
                // Text(
                //   newsOne.symbol.toString(),
                //   style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
