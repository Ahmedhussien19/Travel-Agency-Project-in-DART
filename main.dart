import 'dart:io';
import 'TripClass.dart';


main() {
  try {
    bool z = true;
    List list = [];
    // List tripItems=[];

    add() {
      print('enter id:');
      int id = int.parse(stdin.readLineSync());

      print('enter location:');
      String location = stdin.readLineSync();

      print('enter day:');
      int day = int.parse(stdin.readLineSync());

      print('enter month:');
      int month = int.parse(stdin.readLineSync());

      print('enter year:');
      int year = int.parse(stdin.readLineSync());

      print('enter passenger limit:');
      int passengerLimit = int.parse(stdin.readLineSync());

      print('enter price:');
      int price = int.parse(stdin.readLineSync());



      list.add(
          Trip(id, location, day, month, year, passengerLimit, price)
          .getTrip()
      );


      print('Adding new trip succeeded ...');
    }

    view() {
       // print(list);
      if(list.isNotEmpty) {
        print(list.reversed);
      }
    }

    reserve() {
      print('enter the passenger limit :');
      int passengerLimit = int.parse(stdin.readLineSync());
      Trip trip = Trip();
      if (passengerLimit == trip.price) {
          add();

        print(list);


      }


    }



    search(){

      print('enter the price :');
       int price = int.parse(stdin.readLineSync());
       Trip trip = Trip();
      if (price == trip.price) {
          for (int i=0; i < list.length ; i++){
            print(price);
          }
          return list;

      }
      print(list);
    }



    delete() {
      print(list);
      print('Choose what is the trip you want to delete? (type 1/2/3/...) ');
      int userInput = int.parse(stdin.readLineSync());


      if (userInput != null) {
        list.removeAt(userInput - 1);
        print('Deleting trip succeeded ...');
        if(list.isNotEmpty) {
          print(list);
        }
      }
    }

    edit(){
      print(list);
      print('Choose what is the trip you want to edit? (type 1/2/3/...) ');
      int userInput = int.parse(stdin.readLineSync());

      if (userInput != null ) {

        print(list[userInput-1]);
        print('**Note** : Enter the new values you want');
         add();
         list.removeAt(userInput - 1);
         return list.reversed;
        // print(list);

      }

      // if (userInput != null) {
      //   list.removeAt(userInput - 1);
      //   print(list[userInput-1]);
      //   print('**Note** : Enter the new values you want');
      //   add();
      //   if(list.isNotEmpty) {
      //     print(list.reversed);
      //   }
      // }

 }



    while (z) {
      print("\t\t\t**** || TRAVEL AGENCY MANAGEMENT SYSTEM || ****\n");
      print(
          "\n\t\t\t\tAdd Trip - 1\n\t\t\t\tEdit Trip - 2\n\t\t\t\tDelete Trip - 3\n\t\t\t\tView Trips - 4\n\t\t\t\tSearch Trip - 5"
          "\n\t\t\t\tReserve - 6");
      print("\n\t\t\ Enter your choice :\n");

      int userInput = int.parse(stdin.readLineSync());
      switch (userInput) {
        case 1:
          add();
          break;

        case 2:
          edit();
          break;

        case 3:
          delete();
          break;

        case 4:
          view();
          break;

        case 5:
          // Trip trip = Trip();
           search();
          break;

        case 6:
           reserve();
          break;

        case 7:
          z = false;
          break;

        default:
          print("Not a valid input at this stage\n");
          break;
      }
    }
  } catch (e) {
    main();
  }
}
