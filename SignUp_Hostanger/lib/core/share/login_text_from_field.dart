import 'package:flutter/material.dart';

class LogInTextFromField extends StatelessWidget {
  final bool? obscureText;
  final String hitText;
  final String labelText;
  final IconData iconData;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final void Function()? onTapIcon;
  final TextInputType? textInputType;

  const LogInTextFromField({
    super.key, required this.hitText, required this.labelText, required this.iconData, required this.myController, required this.valid,  this.obscureText, this.onTapIcon,this.textInputType
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText== null || obscureText ==false ? false : true,
      validator: valid,
      style: const  TextStyle(
        color: Colors.blue,),
      cursorColor: Colors.red,
      controller: myController,
      enableSuggestions: true,
      keyboardType: textInputType,
      expands: false,
      decoration:  InputDecoration(

        contentPadding:const EdgeInsets.symmetric( horizontal:40 ,vertical: 15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle:const TextStyle(color: Colors.black ,fontSize: 20 ,),
        border:const OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        suffixIcon:
         Padding(
          padding:const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: onTapIcon,
            child: Icon(
              iconData,
              color: Colors.black,
            ),
          ),
        ),
        hintText: hitText ,
        label: Container(
            margin:const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labelText)),
      ),
    );
  }
}
