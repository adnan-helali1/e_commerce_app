import 'package:flutter/material.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Field extends StatefulWidget {
  const Field({
    required this.context,
    this.label,
    required this.hintText,
    required this.icon,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1,
    this.controller,
    this.validator,
    this.onChanged,
  });

  final BuildContext context;
  final String? label;
  final String hintText;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  String? _errorMessage;
  late TextEditingController _controller;
  late bool _isPasswordVisible;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _isPasswordVisible = false; // Password hidden by default
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _validate() {
    if (widget.validator != null) {
      final error = widget.validator!(_controller.text);
      setState(() {
        _errorMessage = error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkError = _errorMessage != null;
    final isPasswordField = widget.obscureText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Row(
            children: [
              Text(widget.label!, style: TextStyles.label(widget.context)),
              if (isDarkError)
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Icon(
                    Icons.error_outline,
                    color: widget.context.cs.error,
                    size: 16.sp,
                  ),
                ),
            ],
          ),
          verticalSpace(8),
        ],
        TextField(
          controller: _controller,
          keyboardType: widget.keyboardType,
          obscureText: isPasswordField
              ? !_isPasswordVisible
              : widget.obscureText,
          maxLines: widget.maxLines,
          style: TextStyles.fieldText(widget.context),
          onChanged: (value) {
            _validate();
            widget.onChanged?.call(value);
          },
          onEditingComplete: _validate,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: widget.context.cs.onSurfaceVariant),
            prefixIcon: Icon(
              widget.icon,
              color: widget.context.cs.onSurfaceVariant,
            ),
            suffixIcon: isPasswordField
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: widget.context.cs.onSurfaceVariant,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : null,
            errorText: _errorMessage,
            errorStyle: TextStyle(
              color: widget.context.cs.error,
              fontSize: 12.sp,
            ),
            filled: true,
            fillColor: widget.context.cs.surface,
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 14.w,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(
                color: isDarkError
                    ? widget.context.cs.error
                    : widget.context.appColors.borderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(
                color: isDarkError
                    ? widget.context.cs.error
                    : widget.context.appColors.borderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(
                color: isDarkError
                    ? widget.context.cs.error
                    : widget.context.cs.primary,
                width: 1.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
