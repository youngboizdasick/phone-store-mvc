import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:phone_store_clean_architectutre/features/phone_store/views/widgets/app_bar_icon.dart';
import '../../../../core/constants/constants.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final bool? displayBackButton;
  final Widget? title;
  final bool? displayCartButton;
  final bool forceMaterialTransparency;
  const AppBarCustom(
      {super.key,
      this.displayBackButton = false,
      this.title,
      this.displayCartButton = false,
      this.forceMaterialTransparency = false});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    // double widthSize = MediaQuery.of(context).size.width;
    return AppBar(
      forceMaterialTransparency:
          forceMaterialTransparency == false ? false : true,
      // leading - arrow back
      leading: displayBackButton == true
          ? (IconButtonWidget(
              icon: BootstrapIcons.chevron_left,
              onPressed: () => Navigator.pop(context),
            ))
          : null,

      // title - title page
      title: Padding(
        padding: const EdgeInsets.only(left: elementSpacing),
        child: title,
      ),

      // action - cart page
      actions: displayCartButton == true
          ? ([
              Padding(
                padding: const EdgeInsets.only(right: elementSpacing),
                child: IconButtonWidget(
                  icon: BootstrapIcons.bag,
                  onPressed: () => Navigator.pushNamed(context, '/cartPage'),
                ),
              ),
            ])
          : null,

      // bottom line
      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(1),
      //   child: Container(
      //     height: 1,
      //     width: widthSize,
      //     color: AppPallete.background,
      //   ),
      // ),
    );
  }
}

class SearchBarAndCart extends AppBarCustom {
  const SearchBarAndCart({super.key, required Widget title})
      : super(displayCartButton: true, title: title);
}

class BackButtonAndCartButton extends AppBarCustom {
  const BackButtonAndCartButton({super.key})
      : super(
          displayBackButton: true,
          displayCartButton: true,
          title: null,
          forceMaterialTransparency: true,
        );
}

class BackButtonAndTitle extends AppBarCustom {
  const BackButtonAndTitle({super.key, required Widget title})
      : super(displayBackButton: true, title: title);
}
