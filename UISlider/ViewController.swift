//
//  ViewController.swift
//  UISlider
//
//  Created by Damir Chalkarov on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var mySlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        mySlider = UISlider(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        view.addSubview(mySlider)
        mySlider.center = view.center
        
        mySlider.minimumValue = 0
        mySlider.maximumValue = 100
        mySlider.addTarget(self, action: #selector(sliderAction(sender:)), for: .valueChanged)
        mySlider.isContinuous = false
        
        mySlider.minimumTrackTintColor = .red
        mySlider.maximumTrackTintColor = .green
        mySlider.thumbTintColor = .systemPink
        
        mySlider.value = 50
        
        label = UILabel(frame: CGRect(x: 0, y: 320, width: 300, height: 100))
        view.addSubview(label)
        label.text = "value"
        label.center.x = view.center.x
    }
    
    @objc func sliderAction(sender: UISlider) {
        label.text = "\(sender.value)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        sleep(1)
        mySlider.setValue(75.0, animated: true)
    }


}

