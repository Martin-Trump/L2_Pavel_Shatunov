//
//  main.swift
//  L2_Pavel_Shatunov
//
//  Created by Павел Шатунов on 06.03.2021.
//

import Foundation
//1. Проверка четности

func parity(num: Int){
    if num % 2 == 0{
        print("Число четное")
    }
    else{
        print("Число нечетное")
    }
}
parity(num:7) //Проверяемое число указывается при вызове функции, как входной параметр

//2. Деление на 3
func division3(num: Int){
    if num % 3 == 0{
        print("\(num) Делится без остатка на 3")
    }
    else{
        print("\(num) Не делится без остатка на 3")
    }
}
division3(num:9)

//3. Создание массива
var array = Array(stride(from: 1, through: 100, by: 1))
print(array)
var newArray = array.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(newArray)

//4. Числа Фибоначчи
func fibArray(n: Int) -> [Int]{
    var fibonacci: [Int] = [0,1]
    for i in stride(from: 2, to: n, by: 1){
        fibonacci.append(fibonacci[i-2] + fibonacci[i-1])
    }
    return fibonacci
    
}
print("Числа Фибоначчи: \(fibArray(n:50))")

//5. Заполнить массив из 100 элементов различными простыми числами.
func Prime (num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Prime(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (PrimeArray())
