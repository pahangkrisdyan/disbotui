import 'package:disbot/constants.dart';
import 'package:flutter_web/widgets.dart';

double getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}

ScreenType getScreenType(BuildContext context){
  double screenWidth = getScreenWidth(context);
  if(screenWidth<800){
    return ScreenType.Small;
  }else if(screenWidth<1100){
    return ScreenType.Medium;
  }else{
    return ScreenType.Large;
  }
}

double getRelativeToScreenSize(BuildContext context ,double small, double medium, double large){
  switch(getScreenType(context)){
    case ScreenType.Small : return small;
    case ScreenType.Medium: return medium;
    case ScreenType.Large : return large;
  }
  return small;
}