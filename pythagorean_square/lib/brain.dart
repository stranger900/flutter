import 'package:pythagorean_square/constants.dart';

class Brain{
  String dat = date.toString();
  int firstWorkNumber;
  int secondWorkNumber;
  int thirdWorkNumber;
  int fourthWorkNumber;
  int sum=0;
  List<int> numbers = [];


  List<int> days(){

    int sDay8 = int.parse(dat[8]); //15 => 1

    for(int i =0; i<10; i++){
      if (i == 4 || i==7) {
        continue;
      }else{
        numbers.add(int.parse(dat[i]));
        sum+=(int.parse(dat[i]));
      }
    }

    firstWorkNumber = sum; // sYear0 + sYear1 + sYear2 + sYear3 + sMonth5 + sMonth6 + sDay8 + sDay9;
    secondWorkNumber = ((firstWorkNumber.toDouble())%10 + firstWorkNumber/10).toInt();
    thirdWorkNumber = (firstWorkNumber - sDay8*2);
    fourthWorkNumber = ((thirdWorkNumber.toDouble())%10 + thirdWorkNumber.toDouble()/10).toInt();

    numbers.add((firstWorkNumber/10).toInt());
    numbers.add(((firstWorkNumber.toDouble())%10).toInt());
    numbers.add(secondWorkNumber);
    numbers.add((thirdWorkNumber/10).toInt());
    numbers.add(((thirdWorkNumber.toDouble())%10).toInt());
    numbers.add(fourthWorkNumber);

    return numbers;//work numbers
  }

//  String resultOfSquare1;
//  String resultOfSquare2;
//  String resultOfSquare3;
//  String resultOfSquare4;
//  String resultOfSquare5;
//  String resultOfSquare6;
//  String resultOfSquare7;
//  String resultOfSquare8;
//  String resultOfSquare9;


  List<int> resultOfSquare=[];

  List<int> calculateNumbers(){
    var numbers = Brain().days();
    int sumNumber=0;
    //int count=0;
    for(int i=1; i<=9; i++){
      for(int j=0; j<numbers.length; j++){
        if(numbers[j]==i){

          //print('count = $count');
          sumNumber=sumNumber*10+i;
        }
        //count++;
      }
      print('sumNumber = $sumNumber');
      print(numbers);
      resultOfSquare.add(sumNumber);
      sumNumber=0;
    }
    print(resultOfSquare);
    return resultOfSquare;
  }

}