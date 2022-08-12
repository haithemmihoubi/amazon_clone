import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final TextEditingController controller ;
  final String hint;
  const CustomTextField({Key? key,required this.controller,required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
 padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 2,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          enabledBorder: const OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black,

              width: 2,
            ),
          ),
          // create border radius for the input field
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },

      ),
    );

  }
}
