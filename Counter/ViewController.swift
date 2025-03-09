//
//  ViewController.swift
//  Counter
//
//  Created by Мухаммад Махмудов on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CounterLabelView: UILabel!
    @IBOutlet weak var tapMeButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTaped(_ sender: Any) {
        counter += 1
        updateLabel()
    }
    
    func updateLabel() {
        CounterLabelView.text = "Значение счетчика: \(counter)"
    }
    
}

