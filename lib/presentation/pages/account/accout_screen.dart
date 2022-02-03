import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:himu_shop/presentation/pages/account/views/list_item_cart.dart';
import 'package:himu_shop/presentation/pages/landing_home/home_controller.dart';
import 'package:himu_shop/presentation/routes/app_routes.dart';

import 'package:himu_shop/presentation/widgets/scaffold.dart';

class AccountScreen extends StatelessWidget {
  final int index;

  AccountScreen(this.index);

  final controller = Get.find<HomeController>();
  final googlesignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );

  Future<void> logout() async {
    await googlesignIn.signOut();
    controller.logout();

    Get.offAllNamed(HimuShopRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    final user = controller.user();

    return SafeArea(child: Obx(() {
      if (controller.isLoading.value) {
        return HimuShopScaffold(
          title: null,
          background: null,
          body: Container(
            child: ListView(
              children: [
                Container(
                  height: 50,
                ),
                Center(
                  child: Text(
                    user.username != null ? user.username! : '',
                    style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ListItemCart(
                  icon: Icons.person,
                  title: 'My Account',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.badge,
                  title: 'My Orders',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.location_city,
                  title: 'Shipping Address',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.card_giftcard,
                  title: 'My Cards',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.settings,
                  title: 'Settings',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.chat,
                  title: 'Contact Us',
                  onpressed: () {},
                ),
                user.username == null
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.redAccent)),
                            onPressed: () {
                              Get.offNamed(HimuShopRoutes.login);
                            },
                            child: Text('Sign Up/Login')),
                      )
                    : SizedBox(),
                user.username != null
                    ? ListItemCart(
                        icon: Icons.logout,
                        title: 'Logout',
                        onpressed: logout,
                      )
                    : SizedBox(),
              ],
            ),
          ),
          bottomMenuIndex: index,
        );
      } else {
        return Container();
      }
    }));
  }
}
