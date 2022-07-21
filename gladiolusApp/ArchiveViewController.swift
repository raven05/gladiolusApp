//
//  ArchiveViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class ArchiveViewController: UIViewController {

    var story = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var like: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = ("\(story)")
    }
    
    var count = 0
    @IBAction func countLike(_ sender: Any) {
        if count%2 == 0{
            like.text = "11 likes"
        }
    }
    
}
