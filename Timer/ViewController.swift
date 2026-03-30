//
//  ViewController.swift
//  Timer
//
//  Created by arkhat on 30.03.2026.
//

import UIKit



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = .countDownTimer
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.time = Int(datePicker.countDownDuration)
        }
    }
}
