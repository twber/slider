//
//  ViewController.swift
//  slider
//
//  Created by Bernice TSAI on 2020/8/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MoveSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var rightView: UIImageView!
    @IBOutlet weak var leftView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func distanceShift(_ sender: UISlider) {
        //sender.setValue(sender.value.rounded(), animated: true)
           numberLabel.text = Int(sender.value).description
           numberLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        //alpha
        leftView.alpha = CGFloat( sender.value / sender.maximumValue)
        rightView.alpha = CGFloat( sender.value / sender.maximumValue)
        
        
        let index = MoveSegmentedControl.selectedSegmentIndex
        switch index {
        case 0:
            leftView.frame.origin.x = CGFloat(0 + 10 * sender.value * 1.8)
            rightView.frame.origin.x = CGFloat(480 - 10 * sender.value * 0.2)
        case 1:
            leftView.transform = CGAffineTransform(translationX: CGFloat(10 * sender.value), y: 0)
            rightView.transform = CGAffineTransform(translationX: CGFloat(-9 * sender.value), y: 0)
        default:
            return
        }
    }
    
}

