//
//  main.swift
//  UserDefault Practice
//
//  Created by 鈴木彰悟 on 2022/11/29.
//


import Foundation

let defaults = UserDefaults.standard
defaults.set(0.24, forKey: "Volume")

//ゲームを開くたびに、好みに応じて常に音楽がオン
defaults.set(true, forKey: "MusicOn")

//ユーザーの追跡
defaults.set("Shogo", forKey: "PlayerName")

//dateの新しいオブジェクトをタップするだけで現在の日付を使用
defaults.set(Date(), forKey: "AppLastOpenedByUser")


let array = [1,2,3]
defaults.set(array, forKey: "myArray")

let dictionary = ["Lastname": "Shogo"]
defaults.set(dictionary, forKey: "myDictionary")


let Volume = defaults.float(forKey: "Volume")
print(Volume)

if let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser") {
    print(appLastOpen)
}

let myArray = defaults.array(forKey:  "myArray") as! [Int]
print(myArray)

let myDictionary = defaults.dictionary(forKey: "myDictionary") 
print(myDictionary)





