//
//  DetailViewController.swift
//  Store-Apple-Electronics-App_KK
//
//  Created by MacBook on 31.03.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productTitleLabel: UILabel!
    @IBOutlet var cartButton: UIButton!
    @IBOutlet var stepperTF: UITextField!
    
    var product: Device!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: product.name)
        productTitleLabel.text = product.title
        cartButton.backgroundColor = .red
        cartButton.layer.cornerRadius = 10
        stepperTF.text = "1"
    }
    
    @IBAction func cartButtonAction() {
        cartButton.backgroundColor = .gray
        cartButton.setTitle("Товар в корзине", for: .normal)
    }
    @IBAction func stepperAction(sender: UIStepper) {
            self.stepperTF.text = Int(sender.value).description
        }
    
}

