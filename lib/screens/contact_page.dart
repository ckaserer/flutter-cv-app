import 'package:ckaserer/constants/contact_details.dart';
import 'package:ckaserer/widgets/card.dart';
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
