import 'dart:io';

void main() {
  bool calculator=true;
    while(calculator){

    try{print('Введите первое число:');
    
    double a = double.parse(stdin.readLineSync()!);
    

    print('Выберите знак (+, -, *, /):');
    String operator = stdin.readLineSync()!;
    
    if(operator!='+' && operator!='-' && operator!='/' && operator!='*' ){
      print('\x1B[31mНеправильно введен оператор\x1B[0m');
      continue;
    }


    print('Введите второе число:');
    double b= double.parse(stdin.readLineSync()!);
      
   
    double result = 0.0;

       switch (operator) {
      case '+':
        result = a + b;
        break;
      case '-':
        result = a - b;
        break;
      case '*':
        result = a * b;
        break;
      case '/':
        if (b != 0) {
          result = a / b;
        } else {
          print('\x1B[31mНа ноль делить нельзя\x1B[0m');
          continue;
        }
        
        
     break;
      
  
    }
    String newResult = result % 1 == 0
        ? result.toStringAsFixed(0)
        : result.toString() ;
         print('\x1B[32mРезультат: $newResult\x1B[0m');}
         on FormatException {
      print('\x1B[31mОшибка: Введено некорректное число. Попробуйте еще раз.\x1B[0m');
      continue;
    } 
     catch (e){
     
        print('\x1B[31mнеизвестная ошибка ${e}\x1B[0m');}
      
    
    
         
print("Вы готовы продолжить вычисления: yes или no");
String hello = stdin.readLineSync()!;
if(hello!= "yes"){
  calculator=false;
}

}
    
    
   }


