import 'package:ckaserer/constants/personal_details.dart';
import 'package:ckaserer/constants/theme.dart';
import 'package:ckaserer/widgets/card.dart';
import 'package:ckaserer/widgets/certification_column.dart';
import 'package:ckaserer/widgets/social_media_row.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth > 700
                      ? (constraints.maxWidth > 1200
                          ? constraints.maxWidth * 0.7
                          : constraints.maxWidth * 0.8)
                      : constraints.maxWidth,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    SocialMediaRow(
                      socialMediaItems: PersonalDetails.socialMediaItems,
                      height: constraints.maxWidth < 580
                          ? MyTheme.socialMediaIconButtonHeightMobile
                          : MyTheme.socialMediaIconButtonHeight,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 250,
                          maxHeight: 250,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            PersonalDetails.avatarImagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        PersonalDetails.name,
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        PersonalDetails.jobTitle,
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
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
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 250,
                        maxWidth: 340,
                      ),
                      child: MyCard(
                        leading: Icon(PersonalDetails.phone.icon),
                        title: PersonalDetails.phone.label,
                        onTap: PersonalDetails.phone.onPressed,
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 250,
                        maxWidth: 340,
                      ),
                      child: MyCard(
                        leading: Icon(PersonalDetails.mail.icon),
                        title: PersonalDetails.mail.label,
                        onTap: PersonalDetails.mail.onPressed,
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
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 250,
                        maxWidth: 340,
                      ),
                      child: CertificationColumn(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
