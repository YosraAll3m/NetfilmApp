

import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => widget, ));

void navigateWithReplacement(context, widget) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => widget, ));

void navigateToBack(context, widget) => Navigator.pop(context);

void navigateFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget,
), (route){
      return false;
    }
);