import 'package:flutter/material.dart';
import '../../images.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            const Text('MSFT News'),
          ],
        ),
        titleTextStyle:
            AppTextStyle.headingH4.copyWith(color: AppColors.utilityWhite),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemExtent: 240,
          itemBuilder: (BuildContext context, int index) {
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
                          'Today',
                          style: AppTextStyle.headingH4
                              .copyWith(color: AppColors.othersMain),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RowOneWidget(),
                                  SizedBox(height: 8),
                                  RowTwoWidget(),
                                  SizedBox(height: 8),
                                  RowThreeWidget(),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Image.asset(
                              AppImages.backgroundImage,
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),


                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RowOneWidget(),
                                  SizedBox(height: 8),
                                  RowTwoWidget(),
                                  SizedBox(height: 8),
                                  RowThreeWidget(),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Image.asset(
                              AppImages.backgroundImage,
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ],
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

class RowOneWidget extends StatelessWidget {
  const RowOneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'MSFT',
          style: AppTextStyle.bodySupplementary
              .copyWith(color: AppColors.othersMain),
        ),
      ],
    );
  }
}

class RowTwoWidget extends StatelessWidget {
  const RowTwoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            'Lessons From Microsoft And The Dot-Com Bubble',
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
  const RowThreeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Seeking Alpha',
          style: AppTextStyle.bodySupplementary
              .copyWith(color: AppColors.othersMain),
        ),
      ],
    );
  }
}
