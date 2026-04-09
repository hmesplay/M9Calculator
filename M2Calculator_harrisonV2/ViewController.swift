//
//  ViewController.swift
//  M2Calculator_harrison
//
//  Created by Mesplay, Harrison W. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    
    var selectedOperator: Operator?
    
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "+(plus)", style: .default, handler: {(action: UIAlertAction) ->() in self.selectOperator.setTitle("+", for: .normal) })
        
        //plus
        let plusAction = UIAlertAction(title: "+(plus)", style: .default){ _ in
            self.selectOperator.setTitle("+", for: .normal)
            self.selectedOperator = .plus
        }
        actionSheet.addAction(plusAction)
        
        //minus
        let minusAction = UIAlertAction(title: "-(minus)", style: .default){_ in
            self.selectOperator.setTitle("-", for: .normal)
            self.selectOperator = .minus
        }
        actionSheet.addAction(minusAction)
        
        //divide
        let divideAction = UIAlertAction(title: "/(divide)", style: .default){_ in
            self.selectOperator.setTitle("/", for: .normal)
            self.selectOperator = .divide
        }
        actionSheet.addAction(divideAction)
        
        //multiply
        let multiplyAction = UIAlertAction(title: "*(multiply)", style: .default){_ in
            self.selectOperator.setTitle("*", for: .normal)
            self.selectOperator = .multiply
        }
        actionSheet.addAction(multiplyAction)
        
        present(actionSheet, animated: true)
    }
    @IBOutlet weak var resultLabel:UILabel!
    
    func showAlert(message: String, title: String? = "Alert"){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        switch op{
        case .plus:
            result = a + b
        case .minus:
            result = a - b
        case .multiply:
            result = a * b
        case .divide:
            result = a / d
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else { return true }
        guard let _ = Int(string) else { return false }
        return true
    }
}
