//
//  ResultsViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/20/22.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    var result1 = 0
    var result2 = 0
    var result3 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ("\(result1)")
        label2.text = ("\(result2)")
        label3.text = ("\(result3)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
