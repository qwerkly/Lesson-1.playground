//: Playground - noun: a place where people can play

import UIKit

// 1 задание. Запишем массив литеральной записью
let arrayLiteral: [String] = ["one","two","three"]

// Теперь добавлением каждого элемента по отдельности
let one: Int = 1
let two: Int = 2
let arrayWithAddElements: Array <Int> = [one,two]


// 2 задание. Перепишем часть элементов из одного массива в другой,используя цикл
var array = Array <NSString>() // Создаем пустой массив

// Добавлять элементы будем из первого из вышестоящих массивов
for elements in arrayLiteral[1...2] {
    array.append(elements) // добавляем элементы в array с помощью структуры append
}
println(array) // Распечатываем содержимое массива

// Теперь сделаем это же,используя слайсы
let array2 = arrayLiteral[0...1]


// 3 задание. Создать словарь Dictionary,используя литеральную запись и добавление элементов после инициализации.
typealias dic = [Int:String] // Создаем алиас
var dict: dic = [1:"One",2:"Two",3:"Three"]
dict[4] = "Four" // Добавили новый элемент в дикт
println(dict)


// 4 задание. Переписать часть элементов из словаря в другой словарь используя цикл for-in.
var dict2 = Dictionary <Int, String>() // Создаем пустой Dictionary
for (dictKey,dictValue) in dict {
    dict2.updateValue(dictValue, forKey: dictKey)
}
println(dict2)  // Распечатываем содержимое Dictionary


// 5 задание. Создать массив словарей.
let arrayOfDict: Array = [dict,dict2]


// 6 задание. Создать две коллекции типа Set и произвести с ними все рассмотренные на лекции операции.
var set1 = Set<Int>()
set1.insert(1)   // Добавляем элементы в множество
set1.insert(243)
set1.insert(57)
set1.insert(150)
set1.insert(653)
set1.insert(100)
set1.insert(13)
set1.contains(1)         // Множество содержит в себе 1
// Создаем второй сет
var set2 = Set<Int>()
set2.insert(1)           // Добавляем элементы в множество
set2.insert(243)
set2.insert(57)
set2.insert(13)
set2.insert(100)
set1.intersect(set2)     // set2 имеет пересечение элементов с set1
set2.isSubsetOf(set1)    // set2 является подмножеством для set1
set1.isSupersetOf(set2)  // set1 является суперсетом для set2
set1.subtract(set2)      // Разница элементов,которая не содержится у set2
set1.union(set2)         // Объединение set1 с set2

