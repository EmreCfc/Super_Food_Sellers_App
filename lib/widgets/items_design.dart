import 'package:flutter/material.dart';
import 'package:superfood_app/mainScreens/item_detail_screen.dart';
import 'package:superfood_app/mainScreens/itemsScreen.dart';
import 'package:superfood_app/model/items.dart';
import 'package:superfood_app/model/menus.dart';


class ItemsDesignWidget extends StatefulWidget {

  Items model;
  BuildContext context;

  ItemsDesignWidget({required this.model, required this.context});


  @override
  State<ItemsDesignWidget> createState() => _ItemsDesignWidgetState();
}

class _ItemsDesignWidgetState extends State<ItemsDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
       Navigator.push(context, MaterialPageRoute(builder: (c)=> ItemDetailsScreen(model: widget.model)));
      },
      splashColor: Colors.amberAccent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 280,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Divider(
                height: 4,
                thickness: 3,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 1),
              Text(widget.model.title!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontFamily: "Train",
                ),
              ),
              const SizedBox(height: 2.0),
              Image.network(widget.model.thumbnailUrl!,
                height: 210,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 2.0,),
              Text(widget.model.shortInfo!,
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 1),
              Divider(
                height: 4,
                thickness: 3,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
