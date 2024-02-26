import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entity/news_request.dart';
import '../theme/app_colors.dart';
import '../theme/app_random_texts.dart';
import '../theme/app_text_style.dart';

class NewsDetailsInfoScreen extends StatefulWidget {
  final NewsRequest newsOne;

  const NewsDetailsInfoScreen({
    super.key,
    required this.newsOne,
  });

  @override
  State<NewsDetailsInfoScreen> createState() => _NewsDetailsInfoScreenState();
}

class _NewsDetailsInfoScreenState extends State<NewsDetailsInfoScreen> {
  int _selectedTab = 1;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Main(),
  //   Text(
  //     'News',
  //     style: TextStyle(
  //       fontSize: 20,
  //       fontWeight: FontWeight.bold,
  //       color: Colors.green,
  //     ),
  //   ),
  // ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var inputFormat = DateTime.parse(widget.newsOne.lastModified.toString());
    var outputFormat = DateFormat.d().add_MMMM().add_y().format(inputFormat);
    final logoOfNews = widget.newsOne.logo.toString();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.home,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryMain,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Source Of News'),
        titleTextStyle:
            AppTextStyle.headingH4.copyWith(color: AppColors.utilityWhite),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      outputFormat.toString(),
                      style:
                          AppTextStyle.headingH4.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      logoOfNews,
                      width: 128,
                      height: 128,
                      fit: BoxFit.fill,
                      errorBuilder: (_, __, ___) {
                        return const Text('mistake');
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          widget.newsOne.name.toString(),
                          style: AppTextStyle.headingH4
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Text(
                //   newsOne.sortOrder.toString(),
                //   style: AppTextStyle.headingH4.copyWith(color: Colors.black),
                // ),
                Column(
                  children: [
                    Text(
                      AppRandomText.textOne.toString(),
                      style: AppTextStyle.usualTextOfNewsH7
                          .copyWith(color: Colors.black),
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: AppRandomText.textTwo.toString(),
                        style: AppTextStyle.usualTextOfNewsH8
                            .copyWith(color: Colors.black),
                        children: [
                          TextSpan(
                            text: AppRandomText.textThree.toString(),
                            style: AppTextStyle.usualTextOfNewsH8
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      // color: Colors.black.withOpacity(0.05),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'back',
                        style: AppTextStyle.promo.copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // _widgetOptions[_selectedTab],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          currentIndex: _selectedTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Main',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.tv_outlined,
              ),
              label: 'News',
            ),
          ],
          onTap: onSelectTab),
    );
  }
}

/*

final String? id;
final String? symbol;
final String? name;
final String? exchange;
final String? mic;
final int? quantityPrecision;
final String? currency;
final bool? isInternal;
final String? issueType;
final String? assetClass;
final String? logo;
final List<String>? tags;
final int? sortOrder;
@JsonKey(fromJson: parseNewsLastModifiedFromString)
// @JsonKey(
//     toJson: _parseNewsLastModifiedToJson,
//     fromJson: _parseNewsLastModifiedToJsonFromJson)
final DateTime? lastModified;
final Map<String, dynamic>? summary;


 */
