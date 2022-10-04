import 'package:alobhatestapp/util/style.dart';
import 'package:flutter/material.dart';

class DataCard extends StatefulWidget {
  final String email;
  final String id;
  const DataCard({
    Key? key,
    required this.email,
    required this.id,
  }) : super(key: key);

  @override
  _DataCardState createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 2.0,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "email address:",
                    style: w700,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "id:",
                    style: w700,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.email,
                      style: w400,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      widget.id,
                      style: w400,
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
