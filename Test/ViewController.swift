//
//  ViewController.swift
//  Test
//
//  Created by Sanjay Santhanam on 7/20/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeBackgroundColor(_ sender: UIButton){
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func increaseClick(_ sender: UIButton) {
        increaseFontSize(for: label1)
        increaseFontSize(for: label2)
        increaseFontSize(for: label3)
    }
    
    func increaseFontSize(for label: UILabel) {
        let currentFontSize = label.font.pointSize
        let newFontSize = currentFontSize + 0.5
        label.font = label.font.withSize(newFontSize)
    }
    
    @IBAction func decreaseClick(_ sender: UIButton) {
        decreaseFontSize(for: label1)
        decreaseFontSize(for: label2)
        decreaseFontSize(for: label3)
    }
    
    func decreaseFontSize(for label: UILabel) {
        let currentFontSize = label.font.pointSize
        let newFontSize = currentFontSize - 0.5
        label.font = label.font.withSize(newFontSize)
    }
    
    @IBAction func redClick(_ sender: UIButton) {
        changeTextColor(to: .red)
    }
    
    @IBAction func greenClick(_ sender: UIButton) {
        changeTextColor(to: .green)
    }
    
    @IBAction func blueClick(_ sender: UIButton) {
        changeTextColor(to: .blue)
    }
    
    func changeTextColor(to color: UIColor) {
        label1.textColor = color
        label2.textColor = color
        label3.textColor = color
    }
    
    @IBAction func resetClick(_ sender: UIButton) {
        resetAll();
    }
    
    func resetAll(){
        label1.textColor = .black
        label2.textColor = .black
        label3.textColor = .black
        label1.font = label1.font.withSize(20)
        label2.font = label2.font.withSize(20)
        label3.font = label3.font.withSize(20)
        view.backgroundColor = .white
    }
}

