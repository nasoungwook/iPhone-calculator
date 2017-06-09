//
//  ViewController.swift
//  계산기
//
//  Created by 나성욱 on 2016. 4. 17..
//  Copyright © 2016년 나성욱. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
    
    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
    
    @IBAction func Number(sender:AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber == true {
            Screen.text = Screen.text! + number!!
        }
        else{
            Screen.text = number
        }
        isTypingNumber = true
    }
    
    
    
    @IBAction func operation(sender: AnyObject){
        isTypingNumber = false
        firstNumber = Int(Screen.text!)!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equals(sender: AnyObject){
        secondNumber = Int(Screen.text!)!
        if operation == "+"{
            result = firstNumber + secondNumber
        }
        else if operation == "-"{
            result = firstNumber - secondNumber
        }
        else if operation == "*"{
            result = firstNumber * secondNumber
        }
        else {
            result = firstNumber / secondNumber
        }
            Screen.text = "\(result)"
    }
    
    @IBAction func clear(sender: AnyObject){
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        result = 0
        Screen.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

