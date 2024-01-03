import 'package:emart_app/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
    ),
    onPressed: onPress,
    child: "$title".text.color(textColor).fontFamily(bold).make()
    );
}