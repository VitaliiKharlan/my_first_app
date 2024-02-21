import 'package:flutter/material.dart';

import '../../domain/entity/news_request.dart';
import '../screens/main_screen_model.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class NewsDetailInfoWidget extends StatelessWidget {
  // final NewsRequest newsOne;

  const NewsDetailInfoWidget({
    super.key,
    // required this.newsOne,
  });

  @override
  Widget build(BuildContext context) {
    // final model = MainScreenModelProvider.read(context);
    // final newsCount =
    //     MainScreenModelProvider.watch(context)?.model.news.length ?? 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryMain,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('NEWS'),
        titleTextStyle:
            AppTextStyle.headingH4.copyWith(color: AppColors.utilityWhite),
      ),
      // body: ListView.separated(
      //   physics: const BouncingScrollPhysics(),
      //   itemCount: newsCount,
      //   itemBuilder: (context, index) {
      //     return NewsDetailMainInfoWidget(indexInList: index);
      //   },
      //   separatorBuilder: (context, index) {
      //     return const Divider(height: 1);
      //   },
      // ),
      body: const Center(
        child: SizedBox(
          child: NewsDetailMainInfoWidget(),
        ),
      ),
    );
  }
}

class NewsDetailMainInfoWidget extends StatelessWidget {
  // final int indexInList;

  const NewsDetailMainInfoWidget({
    super.key,
    // required this.indexInList,
  });

  @override
  Widget build(BuildContext context) {
    // final model = MainScreenModelProvider.read(context)!.model;
    // final newsOne = MainScreenModelProvider.read(context)!.model.newsNews[indexInList];

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'TEXT',
                style: AppTextStyle.headingH4.copyWith(color: Colors.black),
              ),
              // Text(
              //   indexInList.toString(),
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
              // Text(
              //   newsOne.symbol.toString(),
              //   style: AppTextStyle.headingH4.copyWith(color: Colors.black),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
