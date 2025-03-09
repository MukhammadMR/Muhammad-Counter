//
//  ViewController.swift
//  Counter
//
//  Created by Мухаммад Махмудов on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var CounterLabelView: UILabel!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var refreshCounterButton: UIButton!
    
    func updateLabel() {
        CounterLabelView.text = "Значение счетчика: \(counter)"
    }
    
    func addToHistory(_ text: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        
        let timestamp = formatter.string(from: Date())
        historyTextView.text += "\n[\(timestamp)]: \(text)"
    }
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextView.text = "История изменений:"
        historyTextView.isEditable = false
        increaseButton.tintColor = .red
        updateLabel()
    }

    @IBAction func increaseButtonTaped(_ sender: Any) {
        counter += 1
        updateLabel()
        addToHistory("Значение изменено на +1")
    }
    
    @IBAction func decreaseButtonTapped(_ sender: Any) {
        if counter > 0 {
        counter -= 1
        updateLabel()
        addToHistory("Значение изменено на -1")
        } else {
            addToHistory("Попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        counter = 0
        updateLabel()
        addToHistory("Значение сброшено")
    }
}

