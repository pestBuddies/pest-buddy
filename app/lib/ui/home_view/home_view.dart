import 'package:flutter/material.dart';
import 'package:pestbuddy/app/base_view.dart';
import 'package:pestbuddy/strings/strings.dart';
import 'package:pestbuddy/ui/home_view/home_view_model.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';
import 'package:pestbuddy/ui/theme/widgets/buttons/custom_button.dart';
import 'package:pestbuddy/ui/theme/widgets/containers/custom_container.dart';
import 'package:pestbuddy/ui/theme/widgets/home_view_widgets.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      onModelReady: (model) => model.checkTheWeather(),
      builder: (context, model, child) => Scaffold(
        appBar: customAppBar,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mediumVerticalSpace,
            bodyHeader(HOME_PAGE_HEADER),
            bodyTextLarge('Brian'),
            AppContainerOne(
              widgets: [
                bodyHeader('Weather: '),
                bodyTextLarge('98 degrees'),
              ],
            ),
            customPadding(l: 16.0, child: bodyText(COUNTER_DESCRIPTION)),
            bodyTextLarge('${model.counter}'),
            smallVerticalSpace,
            AppButtonOne(
              title: 'Log Out',
              color: kitYellow,
              action: () => model.returnToLogin(),
            ),
          ],
        ),
      ),
    );
  }
}
