import 'package:facebook_ui/models/market_model.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Market Place",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Container(
                child: IconButton(
                  onPressed: () {
                    print("Search Clicked");
                  },
                  icon: Icon(Icons.search_outlined),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.black38),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: (2 / 3),
            children: [
              for (int i = 0; i < marketPlaceData.length; i++) ...[
                InkWell(
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage(marketPlaceData[i].photo)),
                        ),
                        Text(
                          marketPlaceData[i].title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(marketPlaceData[i].price.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  onTap: () {
                    print("Bike 2 months Old Clicked");
                  },
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
