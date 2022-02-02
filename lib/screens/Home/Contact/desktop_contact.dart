import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: 1366,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ContactMeWidget(),
              SizedBox(width: 10),
              Expanded(child: SengMessage()),
            ],
          ),
        ),
      ),
    );
  }
}

class SengMessage extends StatelessWidget {
  const SengMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Leave a Message",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Expanded(
              child: CustomTextFiedl(
                hintText: "Name",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: CustomTextFiedl(
                hintText: "Email",
              ),
            ),
          ],
        ),
        const CustomTextFiedl(
          hintText: "Subject",
        ),
        const CustomTextFiedl(
          hintText: "Message",
          maxLine: 8,
        ),
        const CustomButton(text: "Submit")
      ],
    );
  }
}

class CustomTextFiedl extends StatelessWidget {
  const CustomTextFiedl({
    Key? key,
    required this.hintText,
    this.maxLine = 1,
  }) : super(key: key);
  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        // height: 45,
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: maxLine != 1 ? 20 : 0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
        ),
        child: TextField(
          maxLines: maxLine,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              hintText: hintText),
        ),
      ),
    );
  }
}

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Contact me",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 30),
          Text(
            kContactMeSectionDetails,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 30),
          const ContactWidget(
            title: "Address",
            description: kContactMeSectionAddress,
          ),
          const ContactWidget(
            title: "Phone",
            description: kContactMeSectionPhone,
          ),
          const ContactWidget(
            title: "Email",
            description: kContactMeSectionEmail,
          )
        ],
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 85,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
