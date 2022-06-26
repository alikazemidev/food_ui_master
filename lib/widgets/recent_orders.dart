import 'package:flutter/material.dart';
import 'package:food_master_ui/data/data.dart';
import 'package:food_master_ui/models/order.dart';

class RecentOrders extends StatelessWidget {
  // *build recent orders
  _buildRecentOrders(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6,
          )
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              image: AssetImage(
                order.food.imageUrl,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    order.food.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    order.restaurant.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    order.date,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 48,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          height: 120,
          decoration: BoxDecoration(
              // color: Colors.blue,
              ),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];
              return _buildRecentOrders(context, order);
            },
          ),
        ),
      ],
    );
  }
}
