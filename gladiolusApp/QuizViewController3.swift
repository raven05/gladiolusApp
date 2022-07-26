//
//  QuizViewController3.swift
//  gladiolusApp
//
//  Created by Scholar on 7/20/22.
//

import UIKit

class QuizViewController3: UIViewController {
    
    var result1 = 0
    var result2 = 0
    var result3 = 0
    
    var selection = 0
    
    @IBAction func button1(_ sender: Any) {
        selection = 1
        performSegue(withIdentifier: "results", sender: Any?.self)
    }
    
    @IBAction func button2(_ sender: Any) {
        selection = 2
        performSegue(withIdentifier: "results", sender: Any?.self)
    }
    
    @IBAction func button3(_ sender: Any) {
        selection = 3
        performSegue(withIdentifier: "results", sender: Any?.self)
    }
    
    @IBAction func button4(_ sender: Any) {
        selection = 4
        performSegue(withIdentifier: "results", sender: Any?.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selection = 0
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red:0.86, green: 0.75, blue: 0.63, alpha:1.00)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? ResultsViewController{
            addVC.result3 = selection
            addVC.result2 = result2
            addVC.result1 = result1
        }
        
    }

}
