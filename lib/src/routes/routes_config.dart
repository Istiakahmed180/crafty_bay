import 'package:crafty_bay/src/common/widgets/navigation_cmn/navigation_cmn.dart';
import 'package:crafty_bay/src/screens/auth/complete_profile/view/complete_profile_screen.dart';
import 'package:crafty_bay/src/screens/auth/email_otp_verification/view/email_otp_verification_screen.dart';
import 'package:crafty_bay/src/screens/auth/email_verification/view/email_verification_screen.dart';
import 'package:crafty_bay/src/screens/auth/splash/view/splash_screen.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/category_products.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_details.dart';

// Routes Configuration
class RoutesConfig {
  // Splash Screen
  static const splashScreen = SplashScreen();

  // Email Verification Screen
  static const emailVerificationScreen = EmailVerificationScreen();

  // Email OTP Verification Screen
  static const emailOtpVerificationScreen = EmailOtpVerificationScreen();

  // Complete Profile Screen
  static const completeProfileScreen = CompleteProfileScreen();

  // Common Navigation Screen
  static const commonNavigationScreen = NavigationCmn();

  // Category Products Screen
  static CategoryProducts categoryProductsScreen(
      {required String categoryName}) {
    return CategoryProducts(categoryName: categoryName);
  }

  // Product Details Screen
  static const productDetailsScreen = ProductDetails();
}
