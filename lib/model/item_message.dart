import 'package:my_first_app/model/customer.dart';

class ItemMessage {
  final String title;
  final String content;
  final Customer customer;

  const ItemMessage({
    required this.title,
    required this.content,
    required this.customer,
  });
}