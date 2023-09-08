import 'package:flutter/material.dart';
import './view/screens/auth/select_niche_screen.dart';
import './view/screens/auth/signin_screen.dart';
import './view/screens/auth/signup_screen.dart';
import './view/screens/auth/verify_email_screen.dart';
import './view/screens/nav_screen.dart';
import './view/screens/more_screen.dart';
import './view/screens/profile_screen.dart';
import './view/screens/my_account_screen.dart';
import './view/screens/edit_profile_screen.dart';
import './view/screens/product_category_screen.dart';
import './view/screens/crate.dart';
import './view/screens/trucks.dart';
import './view/screens/product_detail_screen.dart';
import './view/screens/forgot_screen_one.dart';
import './view/screens/forgot_screen_two.dart';
import './view/screens/forgot_screen_three.dart';
import './view/screens/cart_screen.dart';
import './view/screens/delivery_options.dart';
import './view/screens/order_tracker.dart';
import './view/screens/order_detail_screen.dart';
import './view/screens/order_screen.dart';
import 'view/screens/pending_order_screen.dart';
import './view/screens/received_items_screen.dart';
import './view/screens/returned_empties_screen.dart';
import './view/screens/product_received_screen.dart';

final routes = <String, WidgetBuilder>{
  SignupScreen.routeName: (_) => const SignupScreen(),
  SigninScreen.routeName: (_) => const SigninScreen(),
  VerifyEmailScreen.routeName: (_) => const VerifyEmailScreen(),
  SelectNicheScreen.routeName: (_) => const SelectNicheScreen(),
  NavScreen.routeName: (_) => const NavScreen(),
  MoreScreen.routeName: (_) => const MoreScreen(),
  ProfileScreen.routeName: (_) => const ProfileScreen(),
  MyAccountScreen.routeName: (_) => const MyAccountScreen(),
  EditProfileScreen.routeName: (_) => const EditProfileScreen(),
  ProductCategoryScreen.routeName: (_) => const ProductCategoryScreen(),
  Crate.routeName: (_) => const Crate(),
  Trucks.routeName: (_) => const Trucks(),
  ProductDetailScreen.routeName: (_) => const ProductDetailScreen(),
  ForgotScreenOne.routeName: (_) => const ForgotScreenOne(),
  ForgotScreenTwo.routeName: (_) => const ForgotScreenTwo(),
  ForgotScreenThree.routeName: (_) => const ForgotScreenThree(),
  CartScreen.routeName: (_) => const CartScreen(),
  DeliveryOptions.routeName: (_) => const DeliveryOptions(),
  OrderTracker.routeName: (_) => const OrderTracker(),
  PendingOrderScreen.routeName: (_) => const PendingOrderScreen(),
  OrderDetailScreen.routeName: (_) => const OrderDetailScreen(),
  OrderScreen.routeName: (_) => const OrderScreen(),
  ReturnedEmptiesScreen.routeName: (_) => const ReturnedEmptiesScreen(),
  ReceivedItemsScreen.routeName: (_) => const ReceivedItemsScreen(),
  ProductReceivedScreen.routeName: (_) => const ProductReceivedScreen(),
};
