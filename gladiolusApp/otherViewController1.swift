//
//  otherViewController1.swift
//  gladiolusApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class otherViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var like: UILabel!
    var count = 0
    @IBAction func countLike(_ sender: Any) {
        if count%2 == 0{
            like.text = "146 likes"
        }
    }
}
