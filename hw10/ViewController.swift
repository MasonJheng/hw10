//
//  ViewController.swift
//  hw10
//
//  Created by masonjheng on 2021/7/31.
//

import UIKit

class ViewController: UIViewController {
var water = 0
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var resultWaterLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var kingOfCupLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //將ageSlider 數值傳到 ageLabel
    @IBAction func ageSliderChange(_ sender: UISlider) {
        ageLabel.text = String(format: "%d",Int(ageSlider.value))

    }
    func selectkingCup(funwater : Int){
        
    }
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            kingOfCupLabel.text = "200cc馬克杯要喝" + String(format:"%d", (water/200) + 1) + "杯"
        case 1:
            kingOfCupLabel.text = "700cc手搖杯要喝" + String(format:"%d", water/700) + "杯"
        case 2:
            kingOfCupLabel.text = "480cc保溫要喝" + String(format:"%d", water/480) + "杯"
        default:
            break
        }
    }
    @IBAction func calculateWeightButtom(_ sender: Any) {

        
    
        if let weightText = weightTextField.text,let weight = Int(weightText),let ageText = ageLabel.text, let age = Int(ageText){
            if age < 30{
                water = weight * 40
            }else if age >= 30 && age < 55{
                water = weight * 35
            }else{
                water = weight * 30
            }
        }
        //顯示每日要喝多少水
        if let Name = textFieldName.text{
            resultWaterLabel.text = Name + "每日你要喝" + String(format:"%d", water) + "cc的水"
        }
        
        
        //顯示馬克杯要喝幾杯、手搖杯要喝幾杯、保溫杯要喝幾杯
        //kingOfCupLabel.text = "200cc馬克杯要喝" + String(format:"%d", //water/200) + "杯"
        kingOfCupLabel.text = "點選上面的選項"
        //selectkingCup(funwater : water)
        segmentedControl.selectedSegmentIndex = -1
    }
}

/*
 
 @IBAction func changeSegment(_ sender: UISegmentedControl) {
     movieIndex = sender.selectedSegmentIndex
     movieSelect()
 }
 
 */
