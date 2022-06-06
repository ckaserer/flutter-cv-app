import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:homepage/constants/contact_details.dart';
import 'package:homepage/widgets/card.dart';

class ContactPage extends StatelessWidget {
  final double width;

  const ContactPage({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: width,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 220,
                      maxWidth: 220,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        ContactDetails.avatarImagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        ContactDetails.name,
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        ContactDetails.jobTitle,
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.white,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
