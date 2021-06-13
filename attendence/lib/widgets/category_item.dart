import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final String id;
  final String title;
  Color color;
  final Icon icon;
  CategoryItem(this.title, this.color, this.id, this.icon);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
          onTap: () => {
            setState(() {
              widget.color = widget.color == Color.fromARGB(255, 12, 109, 230)
                  ? Colors.red
                  : Color.fromARGB(255, 12, 109, 230);
            }),
          },
          splashColor: Colors.orange,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 130,
            width: 130,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '___',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    widget.icon,
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.color.withOpacity(0.7), widget.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
