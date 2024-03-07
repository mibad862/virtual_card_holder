import 'package:flutter/material.dart';
import 'package:virtual_card_holder/models/contact_model.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key, required this.contactModel});

  static const String routeName = 'form';
  final ContactModel contactModel;

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contactModel.name),
      ),
    );
  }
}
