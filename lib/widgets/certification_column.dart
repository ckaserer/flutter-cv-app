import 'package:ckaserer/constants/personal_details.dart';
import 'package:ckaserer/models/certification_model.dart';
import 'package:ckaserer/widgets/certification.dart';
import 'package:flutter/material.dart';

class CertificationColumn extends StatelessWidget {
  const CertificationColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // sort certifications with newest certification first
    PersonalDetails.certifications.sort((a, b) => b.issued.compareTo(a.issued));
    List<Widget> certs = [];
    for (MyCertificationModel element in PersonalDetails.certifications) {
      certs.add(MyCertification(
        certificationModel: element,
      ));
    }
    return Column(
      children: certs,
    );
  }
}
