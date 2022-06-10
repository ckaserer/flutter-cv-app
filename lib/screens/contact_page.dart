import 'package:ckaserer/constants/bottom_navigation.dart';
import 'package:ckaserer/constants/contact_details.dart';
import 'package:ckaserer/constants/theme.dart';
import 'package:ckaserer/widgets/card.dart';
import 'package:ckaserer/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final double width;
  final double height;

  const ContactPage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int kFlex = 10;
    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: width,
            maxHeight: height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: kFlex,
                child: Container(),
              ),
              Flexible(
                flex: 64,
                child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 250,
                    maxHeight: 250,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      ContactDetails.avatarImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 24,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      ContactDetails.name,
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 8,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    ContactDetails.jobTitle,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.white,
                  height: 2,
                ),
              ),
              MyCard(
                leading: Icon(ContactDetails.phone.icon),
                title: ContactDetails.phone.label,
                onTap: ContactDetails.phone.getUrlFunction(),
              ),
              MyCard(
                leading: Icon(ContactDetails.mail.icon),
                title: ContactDetails.mail.label,
                onTap: ContactDetails.mail.getUrlFunction(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(
                    key,
                    icon: BottomNavigation.links[0].icon,
                    onPressed: BottomNavigation.links[0].getUrlFunction(),
                    tooltip: BottomNavigation.links[0].label,
                    size: MyTheme.bottomNavigationBarIconButtonHeight,
                  ),
                  const SizedBox(
                    width: MyTheme.bottomNavigationBarIconButtonSpacing,
                  ),
                  MyIconButton(
                    key,
                    icon: BottomNavigation.links[1].icon,
                    onPressed: BottomNavigation.links[1].getUrlFunction(),
                    tooltip: BottomNavigation.links[1].label,
                    size: MyTheme.bottomNavigationBarIconButtonHeight,
                  ),
                  const SizedBox(
                    width: MyTheme.bottomNavigationBarIconButtonSpacing,
                  ),
                  MyIconButton(
                    key,
                    icon: BottomNavigation.links[2].icon,
                    onPressed: BottomNavigation.links[2].getUrlFunction(),
                    tooltip: BottomNavigation.links[2].label,
                    size: MyTheme.bottomNavigationBarIconButtonHeight,
                  )
                ],
              ),
              Flexible(
                flex: kFlex,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
