import 'package:ckaserer/models/buttons/contact_info_button_model.dart';
import 'package:ckaserer/models/buttons/social_media_button_model.dart';
import 'package:ckaserer/models/certification_model.dart';
import 'package:ckaserer/utilities/url_utilities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalDetails {
  static const String name = 'Clemens Kaserer';
  static const String jobTitle = 'CLOUD ARCHITECT';
  static const String avatarImagePath = 'assets/images/clemens.jpg';
  static MyContactInfoButtonModel phone = MyContactInfoButtonModel(
    icon: Icons.phone,
    label: "+43 (0) 123 456 78 90",
    onPressed: UrlUtils.launchUrlFunc(
      url: "tel:+43-123-456-78-90",
    ),
  );
  static MyContactInfoButtonModel mail = MyContactInfoButtonModel(
    icon: Icons.mail,
    label: "ckaserer@gmail.com",
    onPressed: UrlUtils.launchUrlFunc(
      url: "mailto:ckaserer@gmail.com",
    ),
  );

  static List<MySocialMediaButtonModel> socialMediaItems = [
    MySocialMediaButtonModel(
      icon: FontAwesomeIcons.linkedin,
      onPressed: UrlUtils.launchUrlFunc(
        url: "https://linkedin.com/in/ckaserer",
      ),
      tooltip: "LinkedIn",
    ),
    MySocialMediaButtonModel(
      icon: FontAwesomeIcons.github,
      onPressed: UrlUtils.launchUrlFunc(
        url: "https://github.com/ckaserer",
      ),
      tooltip: "Github",
    ),
    MySocialMediaButtonModel(
      icon: FontAwesomeIcons.stackOverflow,
      onPressed: UrlUtils.launchUrlFunc(
        url: "https://stackoverflow.com/users/12153397/ckaserer",
      ),
      tooltip: "StackOverflow",
    ),
  ];

  static List<MyCertificationModel> certifications = [
    // Kubernetes
    MyCertificationModel(
      badgePath: "assets/badges/cka-certified-kubernetes-administrator.png",
      title: "CKA: Certified Kubernetes Administrator",
      issuer: "The Linux Foundation",
      url:
          "https://www.credly.com/badges/3ef28e47-3360-499e-9957-b121f1a84ced/public_url",
      issued: DateTime.parse("2020-09-16"),
    ),
    MyCertificationModel(
      badgePath:
          "assets/badges/ckad-certified-kubernetes-application-developer.png",
      title: "CKAD: Certified Kubernetes Application Developer",
      issuer: "The Linux Foundation",
      url:
          "https://www.credly.com/badges/503005fe-9b2e-4416-b214-95acd343f399/public_url",
      issued: DateTime.parse("2021-07-28"),
    ),
    //Microsoft
    MyCertificationModel(
      badgePath: "assets/badges/microsoft-certified-azure-fundamentals.png",
      title: "Microsoft Certified: Azure Fundamentals",
      issuer: "Microsoft",
      url:
          "https://www.credly.com/badges/bffcff69-671e-4131-86e2-ce3a41b0f33b/public_url",
      issued: DateTime.parse("2022-02-18"),
    ),
    // Scrum
    MyCertificationModel(
      badgePath: "assets/badges/professional-scrum-developer-i-psd-i.png",
      title: "Professional Scrum Developer I (PSD I)",
      issuer: "Scrum.org",
      url:
          "https://www.credly.com/badges/59baa902-f297-4d36-bb72-e692e929196a/public_url",
      issued: DateTime.parse("2019-03-26"),
    ),
    MyCertificationModel(
      badgePath: "assets/badges/professional-scrum-product-owner-i-pspo-i.png",
      title: "Professional Scrum Product Owner I (PSPO I)",
      issuer: "Scrum.org",
      url:
          "https://www.credly.com/badges/223af2c2-5f5c-4dcd-8e68-fc498c320984/public_url",
      issued: DateTime.parse("2019-03-26"),
    ),
    MyCertificationModel(
      badgePath: "assets/badges/professional-scrum-master-i-psm-i.png",
      title: "Professional Scrum Master I (PSM I)",
      issuer: "Scrum.org",
      url:
          "https://www.credly.com/badges/362748f4-28b5-481d-b89b-d9af9e001ebd/public_url",
      issued: DateTime.parse("2019-03-21"),
    )
  ];
}
