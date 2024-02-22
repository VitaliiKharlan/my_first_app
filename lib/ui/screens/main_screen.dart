import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
import 'main_screen_model.dart';
import 'news_detail_info_screen.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final model = MainScreenModel();

  @override
  void initState() {
    super.initState();
    model.updateNewsRequests();
  }

  @override
  Widget build(BuildContext context) {
    return MainScreenModelProvider(
      model: model,
      child: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final model = MainScreenModelProvider.read(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryMain,
        // centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 16,
                right: 8,
                bottom: 16,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const Text('MSFT News'),
          ],
        ),
        titleTextStyle:
            AppTextStyle.headingH4.copyWith(color: AppColors.utilityWhite),
      ),
      //
      // add Scrollbar
      //
      body: Scrollbar(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount:
              MainScreenModelProvider.watch(context)?.model.news.length ?? 0,
          itemBuilder: (context, index) {
            final newsOne =
                MainScreenModelProvider.read(context)?.model.news[index];

            var inputFormat = DateTime.parse(newsOne!.lastModified.toString());
            var outputFormat =
                DateFormat.d().add_MMMM().add_y().format(inputFormat);

            return Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 24,
                right: 0,
                bottom: 4,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 0,
                      right: 24,
                      bottom: 0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          outputFormat.toString(),
                          // newsOne?.lastModified.toString(),
                          style: AppTextStyle.headingH4
                              .copyWith(color: AppColors.othersValueMain),
                        ),
                        const SizedBox(height: 16),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<Map>(
                                  builder: (context) =>
                                      NewsDetailsInfoScreen(newsOne: newsOne),
                                ),
                              );
                            },
                            child: FirstNewsWidget(index: index),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class FirstNewsWidget extends StatelessWidget {
  final int index;

  const FirstNewsWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final newsOne = MainScreenModelProvider.read(context)?.model.news[index];
    final logoOfNews = newsOne?.logo.toString();
    if (logoOfNews == null) {
      return const ColoredBox(
        color: Colors.red,
        child: SizedBox(
          height: 10,
          width: 10,
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RowOneWidget(),
              const SizedBox(height: 8),
              RowTwoWidget(index: index),
              const SizedBox(height: 8),
              RowThreeWidget(index: index),
              const SizedBox(height: 16),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Image.network(
          logoOfNews,
          width: 64,
          height: 64,
          fit: BoxFit.fill,
          //  handle networkError
          errorBuilder: (_, __, ___) {
            return const SizedBox.shrink();
          },
          //
        ),
      ],
    );
  }
}

class RowOneWidget extends StatelessWidget {
  const RowOneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var doubleValuePlus = Random().nextDouble();
    final randomValuePlus = (doubleValuePlus * 10).toStringAsPrecision(3);

    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'MSFT ',
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
              const WidgetSpan(
                child: Icon(
                  Icons.arrow_upward,
                  color: AppColors.othersIncreaseMain,
                  size: 14,
                ),
              ),
              TextSpan(
                text: (' $randomValuePlus' '%'),
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersIncreaseMain),
              ),
              TextSpan(
                text: '   ·   ',
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
              TextSpan(
                text: 'AMD ',
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
              const WidgetSpan(
                child: Icon(
                  Icons.arrow_downward,
                  color: AppColors.othersDecreaseMain,
                  size: 14,
                ),
              ),
              TextSpan(
                text: (' $randomValuePlus' '%'),
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersDecreaseMain),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RowTwoWidget extends StatelessWidget {
  final int index;

  const RowTwoWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final newsOne = MainScreenModelProvider.read(context)?.model.news[index];
    if (newsOne == null) {
      return const ColoredBox(
        color: Colors.red,
        child: SizedBox(
          height: 20,
          width: 20,
        ),
      );
    }
    return Row(
      children: [
        Flexible(
          child: Text(
            newsOne.name.toString(),
            style: AppTextStyle.headingH5
                .copyWith(color: AppColors.contentPrimaryMain),
            maxLines: 2,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class RowThreeWidget extends StatelessWidget {
  final int index;

  const RowThreeWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final newsOne = MainScreenModelProvider.read(context)?.model.news[index];
    if (newsOne == null) {
      return const ColoredBox(
        color: Colors.red,
        child: SizedBox(
          height: 20,
          width: 20,
        ),
      );
    }

    var inputFormat = DateTime.parse(newsOne.lastModified.toString());
    var outputFormat = DateFormat.yMMMd().add_Hm().format(inputFormat);

    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: newsOne.symbol.toString(),
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
              TextSpan(
                text: '   ·   ',
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
              TextSpan(
                text: outputFormat.toString(),
                // newsOne.lastModified.toString(),
                style: AppTextStyle.bodySupplementary
                    .copyWith(color: AppColors.othersValueMain),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
