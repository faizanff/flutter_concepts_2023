import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/widgets/dashboard_banners.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/widgets/dashboard_searchbar.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/widgets/dashboard_topcourses.dart';

import 'widgets/dashboard_categories.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Text(
                tDashboardTitle,
                style: txtTheme.bodyMedium,
              ),
              Text(
                tDashboardHeading,
                style: txtTheme.displayMedium,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //Search Box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //Banners
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //Top Courses
              Text(
                tDashboardTopCourses,
                style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
              ),
              DashboardTopCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}










