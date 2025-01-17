import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:crafty_bay/src/screens/complete_profile/controller/complete_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final CompleteProfileController _controller =
      Get.put(CompleteProfileController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          final bool isPortrait = orientation == Orientation.portrait;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: isPortrait ? 35.w : 80.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: isPortrait ? 50.h : 50.h),
                  _buildLogo(isPortrait),
                  SizedBox(height: 8.h),
                  _buildTitle(context, isPortrait),
                  SizedBox(height: 5.h),
                  _buildSubtitle(context),
                  SizedBox(height: 20.h),
                  _buildForm(isPortrait),
                ],
              ),
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
      "Complete Profile",
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.lightBlack,
            fontSize: isPortrait ? 32.0 : 28.0,
          ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      "Get started with us with your details",
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
          _buildTextFormField(
            controller: _controller.firstNameController,
            hintText: "First Name",
            validator: (value) =>
                value?.isEmpty == true ? "First name cannot be empty" : null,
          ),
          SizedBox(height: 10.h),
          _buildTextFormField(
            controller: _controller.lastNameController,
            hintText: "Last Name",
            validator: (value) =>
                value?.isEmpty == true ? "Last name cannot be empty" : null,
          ),
          SizedBox(height: 10.h),
          _buildTextFormField(
            controller: _controller.mobileController,
            hintText: "Mobile",
            keyboardType: TextInputType.phone,
            validator: (value) =>
                value?.isEmpty == true ? "Mobile cannot be empty" : null,
          ),
          SizedBox(height: 10.h),
          _buildTextFormField(
            controller: _controller.cityController,
            hintText: "City",
            validator: (value) =>
                value?.isEmpty == true ? "City cannot be empty" : null,
          ),
          SizedBox(height: 10.h),
          _buildTextFormField(
            controller: _controller.shippingAddressController,
            hintText: "Shipping Address",
            maxLines: 3,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            validator: (value) => value?.isEmpty == true
                ? "Shipping address cannot be empty"
                : null,
          ),
          SizedBox(height: 10.h),
          _buildSubmitButton(),
          if (!isPortrait) SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: contentPadding,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() == true) {}
      },
      child: const Text("Complete"),
    );
  }
}
