import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:crafty_bay/src/screens/email_verification/controller/email_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final EmailVerificationController emailVerificationController =
      Get.put(EmailVerificationController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isPortrait ? 35.w : 80.w,
            ),
            child: Column(
              children: [
                SizedBox(height: (isPortrait ? 100 : 50).h),
                _buildLogo(isPortrait),
                SizedBox(height: 8.h),
                _buildTitle(context, isPortrait),
                SizedBox(height: 5.h),
                _buildSubtitle(context),
                SizedBox(height: 20.h),
                _buildForm(isPortrait),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLogo(bool isPortrait) {
    return SvgAssetsCmn(
      svgAsset: SvgAssets.bgLogo,
      svgWidth: isPortrait ? 120.0 : 40.0,
    );
  }

  Widget _buildTitle(BuildContext context, bool isPortrait) {
    return Text(
      "Welcome Back",
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.lightBlack,
            fontSize: isPortrait ? 32.0 : 28.0,
          ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      "Please Enter Your Email Address",
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: AppColors.grey,
          ),
    );
  }

  Widget _buildForm(bool isPortrait) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailField(),
          SizedBox(height: 15.h),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      controller: emailVerificationController.emailAddressController,
      decoration: const InputDecoration(
        hintText: "Email Address",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email cannot be empty";
        }
        final emailRegex =
            RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
        if (!emailRegex.hasMatch(value)) {
          return "Enter a valid email address";
        }
        return null;
      },
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // TODO: Implement form submission logic here.
        }
      },
      child: const Text("Next"),
    );
  }
}
