//
//  OthersViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class OthersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var like: UILabel!
    var count = 0
    @IBAction func countLike(_ sender: Any) {
        if count%2 == 0{
            like.text = "103 likes"
        }
    }
    
}
