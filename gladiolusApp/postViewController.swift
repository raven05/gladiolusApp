//
//  postViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class postViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var input = ""
    @IBOutlet weak var textField: UITextView!
    
    @IBAction func buttonClicked(_ sender: Any) {
        input = textField.text!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? ArchiveViewController{
            addVC.story = input
        }
    }
}
