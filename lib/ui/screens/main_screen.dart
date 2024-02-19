import 'package:flutter/material.dart';

import '../../images.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
import 'main_screen_model.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final model = MainScreenModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MainScreenModelProvider(
          model: model,
          child: const MainScreenAuxiliary(),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     const SizedBox(height: 100),
          //     const _ReloadButton(),
          //     const SizedBox(height: 100),
          //     const _CreateButton(),
          //     const Expanded(
          //       flex: 1,
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 20),
          //         child: _PostsWidget(),
          //       ),
          //     ),
          //
          //   ],
          // ),
        ),
      ),
    );
  }
}

class MainScreenAuxiliary extends StatelessWidget {
  const MainScreenAuxiliary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount:
            MainScreenModelProvider.watch(context)?.model.news.length ?? 0,
        itemExtent: 240,
        itemBuilder: (BuildContext context, int index) {
          return const MainScreen();
        },
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

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
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: 4,
          // itemCount: 4,
          itemExtent: 240,
          itemBuilder: (context, index) {
            // final newsOne = model.news.first;
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
                        const FirstNewsWidget(),
                        const SecondNewsWidget(),
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
  const FirstNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const index = 1;
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowOneWidget(),
              SizedBox(height: 8),
              RowTwoWidget(index: index),
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
    );
  }
}

class SecondNewsWidget extends StatelessWidget {
  const SecondNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const index = 1;
    // final model = MainScreenModel();
    // final newsOne = MainScreenModelProvider.read(context)?.model.news[index];
    // if (newsOne == null) {
    //   return const ColoredBox(
    //     color: Colors.red,
    //     child: SizedBox(
    //       height: 40,
    //       width: 40,
    //     ),
    //   );
    // }
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowOneWidget(),
              SizedBox(height: 8),
              RowTwoWidget(index: index),
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
  final int index;

  const RowTwoWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final model = MainScreenModel();
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
            // 'Lessons From Microsoft And The Dot-Com Bubble',
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
