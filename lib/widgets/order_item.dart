import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/providers/orders.dart' as ord;

class OrderItem extends StatelessWidget {
  final ord.OrderItem orderItem;

  OrderItem(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${orderItem.amount}'),
            subtitle:
                Text(DateFormat('dd MM yyyy hh:mm').format(orderItem.dateTime)),
            trailing: IconButton(icon: Icon(Icons.expand_more), onPressed: () {},),
          )
        ],
      ),
    );
  }
}