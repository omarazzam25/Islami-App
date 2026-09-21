import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../them/app_color.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key , this.onChange});

  void Function(String)? onChange ;

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        onChanged:  onChange,
        cursorColor: AppColor.primary,
          decoration: InputDecoration(
            hintText: 'Sura Name',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Assets.icons.quran.svg(colorFilter: ColorFilter.mode(AppColor.primary, BlendMode.srcIn) ),
            ),
            hintStyle:them.textTheme.bodyLarge?.copyWith(fontSize: 16) ,
            filled: true,
            fillColor: AppColor.black.withValues(alpha: 0.7),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.primary,width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.primary,width: 1)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.primary,width: 1)
            ),
          )

      ),
    );
  }
}
