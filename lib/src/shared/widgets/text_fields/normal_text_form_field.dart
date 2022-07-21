import 'package:estate_project/src/shared/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NormalFormFieldWidget extends StatelessWidget {
  final String? label;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final int? maxLength;
  final TextEditingController? textEditingController;
  final dynamic validator;
  final bool shouldReadOnly;

  const NormalFormFieldWidget({
    Key? key,
    this.label,
    this.onChanged,
    this.onTap,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.maxLength,
    this.textEditingController,
    this.validator,
    this.shouldReadOnly = false,
    trailing,
    suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? "",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 3.0),
        SizedBox(
          // height: maxLength != null ? 9.h : 7.h,
          width: mq.width,
          child: TextFormField(
            controller: textEditingController,
            maxLength: maxLength,
            onTap: onTap,
            onChanged: (text) {
              if (onChanged != null) onChanged!(text);
            },
            cursorColor: RoutineCheckAppColors.primary,
            keyboardType: keyboardType,
            obscureText: obscureText!,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            style: Theme.of(context).textTheme.titleSmall,
            readOnly: shouldReadOnly,
            decoration: InputDecoration(
                counterText: "",
                hintText: hintText,
                contentPadding: const EdgeInsets.only(
                  left: 8.0,
                  top: 19.0,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: RoutineCheckAppColors.primary, width: 1.5),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(5.0)))),
          ),
        )
      ],
    );
  }
}
