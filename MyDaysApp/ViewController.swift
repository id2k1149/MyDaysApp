//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Max Franz Immelmann on 10/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
//    @IBOutlet weak var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Change corner radius
//        resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide,
                                                   fields: [.day]))
    }
    @IBAction func resultButtonTapped() {
        infoLabel.text = "You've been enjoying your life for \(numberOfDays)"
    }
    
}

