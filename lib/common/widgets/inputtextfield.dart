import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trust/core/theme/pallets.dart';

class OutlinedFormField extends StatefulWidget {
  const OutlinedFormField(
      {Key? key,
        required this.hint,
        this.suffix,
        this.validator,
        this.preffix,
        this.maxLine,
        this.inputType,
        this.obscure,
        this.controller,
        this.onChange,
        this.onFieldSubmitted,
        this.enabled,
        this.inputFormatters,  this.initialValue})
      : super(key: key);
  final String hint;
  final bool? obscure;
  final String? initialValue;
  final Widget? suffix;
  final Widget? preffix;
  final int? maxLine;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final Function(String d)? onChange;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<OutlinedFormField> createState() => _OutlinedFormFieldState();
}

class _OutlinedFormFieldState extends State<OutlinedFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        maxLines: widget.maxLine ?? 1,
        initialValue: widget.initialValue,
        onChanged: widget.onChange,
        keyboardType: widget.inputType,
        onFieldSubmitted: widget.onFieldSubmitted,
        inputFormatters: widget.inputFormatters,
        obscureText: widget.obscure == null ? false : widget.obscure!,
        style:  TextStyle(color: Theme.of(context).colorScheme.onBackground),
        decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
                gapPadding: 2,
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            fillColor: ColorPallets.white.withOpacity(0.2),
            hintText: widget.hint,
            suffixIcon: widget.suffix,
            prefixIcon: widget.preffix,
            iconColor: Colors.grey,
            enabled: widget.enabled ?? true,
            prefixIconColor: Colors.grey,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            suffixIconColor:ColorPallets.lightb,
            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
      ),
    );
  }
}