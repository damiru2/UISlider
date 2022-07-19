//
//  ViewController.swift
//  UISlider
//
//  Created by Damir Chalkarov on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var commonAmountLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var amountSlider: UISlider!
    @IBOutlet weak var periodSlider: UISlider!
    @IBOutlet weak var percentSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountLabel.text = "10000 p."
        periodLabel.text = "5 мес."
        percentLabel.text = "5 %"
        setAmountCount()
    
    }

    @IBAction func amountSliderAction(_ sender: UISlider) {
        switch sender.tag {
        case 0: amountLabel.text = "\(Int(sender.value)) p."
        case 1: periodLabel.text = "\(Int(sender.value)) мес."
        case 2: percentLabel.text = "\(Int(sender.value)) %"
        default:
            return
        }
        
        
        setAmountCount()
    }
    
    func setAmountCount() {
        let percentAmount = amountSlider.value / 100 * percentSlider.value / 12
        let periodAmount = percentAmount * periodSlider.value
        commonAmountLabel.text = "\(amountSlider.value + periodAmount) p."
    }
    
}

