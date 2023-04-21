//
//  ViewController.swift
//  DataBackWard21April
//
//  Created by Mac on 21/04/23.
//

import UIKit

class DataShowViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var phoneNoLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goOnSecondView(_ sender: Any) {
        let dataAddViewController = storyboard?.instantiateViewController(withIdentifier: "DataAddViewController") as! DataAddViewController
        dataAddViewController.delegate = self
        navigationController?.pushViewController(dataAddViewController, animated: true)
    }
    
}

extension DataShowViewController: BackDataPassingProtocol {
    func backData(name: String, address: String, phoneNo: String, city: String) {
        self.nameLbl.text = name
        self.addressLbl.text = address
        self.phoneNoLbl.text = phoneNo
        self.cityLbl.text = city
    }
    
    
}
