import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/model/item_message.dart';

class AppState {
  final bool isLoading;
  final Customer customer;
  final String location;
  final String time;
  final List<ItemMessage> messages;
  final List<Customer> customers;

  AppState({
    required this.isLoading,
    required this.customer,
    required this.location,
    required this.time,
    required this.messages,
    required this.customers,
  });

  const AppState.initialState()
      : isLoading = false,
        // customer = const Customer.initialState(),
        customer = const Customer(
          email: "Sylvie",
          imgUrl:
          "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
          isConnected: true,
        ),
        location = "",
        time = "00:00",
        messages = const [
          ItemMessage(
            title: "Sylvie",
            content: "j'ai tenté",
            customer: Customer(
              email: "Sylvie",
              imgUrl:
              "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
              isConnected: true,
            ),
          ),
          ItemMessage(
            title: "Adrien",
            content: "La parole est libre tant fait pas",
            customer: Customer(
              email: "Adrien",
              imgUrl:
              "https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=6080",
              isConnected: false,
            ),
          ),
          ItemMessage(
            title: "Bryan",
            content: "faut aller sur place",
            customer: Customer(
              email: "Bryan",
              imgUrl:
              "https://images.unsplash.com/photo-1475809913362-28a064062ccd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              isConnected: false,
            ),
          ),
          ItemMessage(
            title: "Benjamin",
            content: "Vous: bah ouais!",
            customer: Customer(
              email: "Benjamin",
              imgUrl:
              "https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              isConnected: false,
            ),
          ),
          ItemMessage(
            title: "Nicolas",
            content: "Vous: ahahah y a encore du cheminahahah y a encore du chemin !ahahah y a encore du chemin !ahahah y a encore du chemin !ahahah y a encore du chemin !",
            customer: Customer(
              email: "Nicolas",
              imgUrl:
              "https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              isConnected: false,
            ),
          ),
          ItemMessage(
            title: "Thomas",
            content: "Vous: oklm et toi ?",
            customer: Customer(
              email: "Thomas",
              imgUrl:
              "https://images.unsplash.com/photo-1581300134629-4c3a06a31948?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=6080",
              isConnected: false,
            ),
          ),
        ],
        customers = const [
          Customer(
            email: "Henri",
            imgUrl:
                "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80",
            isConnected: false,
          ),
          Customer(
            email: "Sylvie",
            imgUrl:
                "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
            isConnected: false,
          ),
          Customer(
            email: "Adrien",
            imgUrl:
                "https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=6080",
            isConnected: false,
          ),
          Customer(
            email: "Bryan",
            imgUrl:
                "https://images.unsplash.com/photo-1475809913362-28a064062ccd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
            isConnected: false,
          ),
          Customer(
            email: "Benjamin",
            imgUrl:
                "https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
            isConnected: false,
          ),
          Customer(
            email: "Nicolas",
            imgUrl:
                "https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
            isConnected: false,
          ),
          Customer(
            email: "Thomas",
            imgUrl:
                "https://images.unsplash.com/photo-1581300134629-4c3a06a31948?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=6080",
            isConnected: false,
          ),
        ];

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, user: $customer, location: $location, time: $time}';
  }
}
