import 'package:ckaserer/models/certification_model.dart';
import 'package:flutter/material.dart';

class MyCertification extends StatelessWidget {
  final MyCertificationModel certificationModel;
  const MyCertification({
    Key? key,
    required this.certificationModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 370,
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                certificationModel.badgePath,
                width: 114,
                height: 114,
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      certificationModel.title,
                      style: const TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      certificationModel.issuer,
                      style: const TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
