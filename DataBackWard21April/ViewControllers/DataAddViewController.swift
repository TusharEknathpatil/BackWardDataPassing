//
//  DataAddViewController.swift
//  DataBackWard21April
//
//  Created by Mac on 21/04/23.
//

import UIKit

class DataAddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneNoTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    var delegate:BackDataPassingProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let delegateSvc = delegate else { return  }
        guard let nameText = nameTextField.text, nameText != "",
        let addressText = addressTextField.text, addressText != "",
        let phoneNoText = phoneNoTextField.text, phoneNoText != "",
        let cityText = cityTextField.text, cityText != ""
        else {
            print("Enter Data")
            return
        }
        delegateSvc.backData(name: nameText, address: addressText, phoneNo: phoneNoText, city: cityText)
        navigationController?.popViewController(animated: true)
    }
    
   
}
