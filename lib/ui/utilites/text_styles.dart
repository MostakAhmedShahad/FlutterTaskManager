import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

const colorRed = Color.fromRGBO(235, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

TextStyle ScreenTittleTextStyle = const TextStyle(
    fontSize: 34, fontWeight: FontWeight.w900, color: Colors.black);

TextStyle Head1Text(textColor) {
  return TextStyle(
    color:textColor,
    
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head6Text(textColor ) {
  return TextStyle(
    color: textColor,
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

InputDecoration CustomInputDecoration(hintText) {
  return InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:
          BorderSide(color: Colors.green, width: 2), // Changed width to 2
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    ),
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

TextStyle ButtonTextStyle (){
  return TextStyle (
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400

  );

}

void SuccessToast(msg){
  Fluttertoast.showToast(
     msg:msg,
  gravity :ToastGravity.BOTTOM,
  timeInSecForIosWeb: 1,
  toastLength: Toast.LENGTH_SHORT,
  backgroundColor: colorGreen,
  fontSize: 16

  );
 
}

void ErrorToast(msg){
  Fluttertoast.showToast(
     msg:msg,
  gravity :ToastGravity.BOTTOM,
  timeInSecForIosWeb: 1,
  toastLength: Toast.LENGTH_SHORT,
  backgroundColor: colorRed,
  fontSize: 16

  );
 
}

PinTheme AppOTPstyle(){
  return PinTheme(

    inactiveColor: Colors.lightBlue,
    inactiveFillColor: Colors.white,
    selectedColor: Colors.green,
    activeColor: Colors.white,
    selectedFillColor: colorGreen,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    borderWidth: .5,
    fieldWidth: 60,
    activeFillColor: Colors.white
  );
}

