import 'package:flutter/material.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'My First Application',
                style:
                    AppTextStyle.mfa.copyWith(color: AppColors.signalSuccess),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
