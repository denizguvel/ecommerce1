import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';


class ItemDetails extends StatelessWidget{
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Container(),
    );
  }
}