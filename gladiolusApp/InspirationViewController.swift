//
//  InspirationViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class InspirationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func youtubeLink1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=FEeTLopLkEo")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func youtubeLink2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=QijH4UAqGD8")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func youtubeLink3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=vaRzxPxhYkE")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func youtubeLink4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=x7ttdYqguAY")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func youtubeLink5(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://youtu.be/w94uiz3hMk0")! as URL, options: [:], completionHandler: nil)
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
