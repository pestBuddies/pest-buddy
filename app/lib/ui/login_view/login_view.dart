import 'package:flutter/material.dart';
import 'package:pestbuddy/app/base_view.dart';
import 'package:pestbuddy/ui/login_view/login_view_model.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';
import 'package:pestbuddy/ui/theme/widgets/buttons/custom_button.dart';
import 'package:pestbuddy/ui/theme/widgets/containers/background_container.dart';
import 'package:pestbuddy/ui/theme/widgets/containers/image_container.dart';
import 'package:pestbuddy/ui/theme/widgets/text_fields/login_register.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        body: BackGroundImageContainer(
          children: [
            largeVerticalSpace,
            mediumVerticalSpace,
            AppLogoBlob(),
            bodyTextLarge('Login'),
            AppLoginRegisterField(label: 'email'),
            AppLoginRegisterField(label: 'password'),
            AppButtonOne(
              title: 'submit',
              action: () => model.login(),
              color: kitGreen,
            ),
            mediumVerticalSpace,
            bodyTextLarge('Dont have an account?'),
            giantVerticalSpace,
            largeVerticalSpace,
            Align(
              child: bodyText('© PestBuddy 2021'),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}
