import 'package:estate_project/src/shared/res/res.dart';
import 'package:flutter/material.dart';

class TextAreaFormFieldWidget extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String Function(String?)? validator;
  final String Function(String?)? onChange;
  final TextEditingController controller;

  const TextAreaFormFieldWidget(
      {Key? key,
      this.label,
      this.hintText,
      this.validator,
      this.onChange,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 3.0),
        SizedBox(
          child: TextFormField(
            controller: controller,
            cursorColor: RoutineCheckAppColors.primary,
            minLines: 4,
            maxLines: null,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(5.0)))),
            validator: (String? val) => validator!(val!),
            onChanged: (String? val) => onChange!(val!),
          ),
        )
      ],
    );
  }
}
