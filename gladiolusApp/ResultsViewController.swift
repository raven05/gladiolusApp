//
//  ResultsViewController.swift
//  gladiolusApp
//
//  Created by Scholar on 7/20/22.
//

import UIKit

class ResultsViewController: UIViewController {
    var result1 = 0
    var result2 = 0
    var result3 = 0
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imagetwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    
    @IBOutlet weak var labelTitle1: UILabel!
    @IBOutlet weak var labelCompany1: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var labelTitle2: UILabel!
    @IBOutlet weak var labelCompany2: UILabel!
    @IBOutlet weak var labelDescription3: UILabel!
    
    @IBOutlet weak var labelTitle3: UILabel!
    @IBOutlet weak var labelCompany3: UILabel!
    @IBOutlet weak var labelDescription2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        results()
        // Do any additional setup after loading the view.
    }
    var instructions = [
      [ "Job Type": "Web Developer",
        "Location": "Washington",
        "Company": "Microsoft",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Microsoft"
      ],
      [ "Job Type": "Web Developer",
        "Location": "Washington",
        "Company": "Amazon",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Amazon"],
      [ "Job Type": "Web Developer",
        "Location": "Washington",
        "Company": "Esterline",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Esterline"],
      [ "Job Type": "Software Engineer",
        "Location": "Washington",
        "Company": "Microsoft",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Microsoft"],
      [ "Job Type": "Software Engineer",
        "Location": "Washington",
        "Company": "Amazon",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Amazon"],
      [ "Job Type": "Software Engineer",
        "Location": "Washington",
        "Company": "Esterline",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Esterline"],
      [ "Job Type": "Computer network architect",
        "Location": "Washington",
        "Company": "Microsoft",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Microsoft"],
      [ "Job Type": "Computer network architect",
        "Location": "Washington",
        "Company": "Amazon",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Amazon"],
      [ "Job Type": "Computer network architect",
        "Location": "Washington",
        "Company": "Esterline",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Esterline"],
      [ "Job Type": "Web Developer",
        "Location": "Oregeon",
        "Company": "Precision Castparts",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "PCC"],
      [ "Job Type": "Web Developer",
        "Location": "Oregon",
        "Company": "Radisys",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Radisys"],
      [ "Job Type": "Web Developer",
        "Location": "Orgeon",
        "Company": "Digimarc",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Digimarc"],
      [ "Job Type": "Software Engineer",
        "Location": "Oregon",
        "Company": "Precision Castparts",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "PCC"],
      [ "Job Type": "Software Engineer",
        "Location": "Oregon",
        "Company": "Radisys",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Radisys"],
      [ "Job Type": "Software Engineer",
        "Location": "Oregon",
        "Company": "Digimarc",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Digimarc"],
      [ "Job Type": "Computer network architect",
        "Location": "Oregon",
        "Company": "Precision Castparts",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Precision Castparts"],
      [ "Job Type": "Computer network architect",
        "Location": "Oregon",
        "Company": "Radisys",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Radisys"],
      [ "Job Type": "Computer network architect",
        "Location": "Oregon",
        "Company": "Digimarc",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Digimarc"],
      [ "Job Type": "Web Developer",
        "Location": "California",
        "Company": "Adobe",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Adobe"],
      [ "Job Type": "Web Developer",
        "Location": "California",
        "Company": "Workday",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Workday"],
      [ "Job Type": "Web Developer",
        "Location": "California",
        "Company": "Paypal",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Paypal"],
      [ "Job Type": "Software Engineer",
        "Location": "California",
        "Company": "Adobe",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Adobe"],
      [ "Job Type": "Software Engineer",
        "Location": "California",
        "Company": "Workday",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Workday"],
      [ "Job Type": "Software Engineer",
        "Location": "California",
        "Company": "Paypal",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Paypal"],
      [ "Job Type": "Computer network architect",
        "Location": "California",
        "Company": "Adobe",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Adobe"],
      [ "Job Type": "Computer network architect",
        "Location": "California",
        "Company": "Workday",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Workday"],
      [ "Job Type": "Computer network architect",
        "Location": "California",
        "Company": "Paypal",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Paypal"],
      [ "Job Type": "Web Developer",
        "Location": "Nevada",
        "Company": "Sierra Nevada",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "SNC"],
      [ "Job Type": "Web Developer",
        "Location": "Nevada",
        "Company": "Rimini Street",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Rimini Street"],
      [ "Job Type": "Web Developer",
        "Location": "Nevada",
        "Company": "Trane",
        "Description": "Responsible for the visual and the technical part of sites. Pays around $90,000 per year",
        "Image": "Trane"],
      [ "Job Type": "Software Engineer",
        "Location": "Nevada",
        "Company": "Sierra Nevada",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "SNC"],
      [ "Job Type": "Software Engineer",
        "Location": "Nevada",
        "Company": "Rimini Street",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Rimini Street"],
      [ "Job Type": "Software Engineer",
        "Location": "California",
        "Company": "Trane",
        "Description": "They write code. For the front-end developers work on the program that interacts with users. Meanwhile, the back-end developers work on the non-visual parts of the program such as data storage. The average salary is $88, 568",
        "Image": "Trane"],
      [ "Job Type": "Computer network architect",
        "Location": "Nevada",
        "Company": "Sierra Nevada",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "SNC"],
      [ "Job Type": "Computer network architect",
        "Location": "Nevada",
        "Company": "Rimini Street",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Rimini Street"],
      [ "Job Type": "Computer network architect",
        "Location": "Nevada",
        "Company": "Trane",
        "Description": "Responsible for improve and keep data communication networks. The average salary is $116,780.",
        "Image": "Trane"],
    ]
    
    func results (){
        if ((result1 == 1) && (result2 == 1) && (result3 == 1)) || ((result1 == 2) && (result2 == 1) && (result3 == 1)) {
            labelTitle1.text = instructions[23]["Job Type"]
            labelCompany1.text = instructions[23]["Company"]
            labelDescription.text = instructions[23]["Description"]
            imageOne.image = UIImage(named: instructions[23]["Image"]!)
            
            labelTitle2.text = instructions[32]["Job Type"]
            labelCompany2.text = instructions[32]["Company"]
            labelDescription3.text = instructions[32]["Description"]
            imagetwo.image = UIImage(named: instructions[32]["Image"]!)
            
            labelTitle3.text = instructions[17]["Job Type"]
            labelCompany3.text = instructions[17]["Company"]
            labelDescription2.text = instructions[17]["Description"]
            imageThree.image = UIImage(named: instructions[17]["Image"]!)
        }
        else if ((result1 == 1) && (result2 == 1) && (result3 == 2)) || ((result1 == 2) && (result2 == 1) && (result3 == 1)) {
            labelTitle1.text = instructions[12]["Job Type"]
            labelCompany1.text = instructions[12]["Company"]
            labelDescription.text = instructions[12]["Description"]
            imageOne.image = UIImage(named: instructions[12]["Image"]!)
            
            labelTitle2.text = instructions[14]["Job Type"]
            labelCompany2.text = instructions[14]["Company"]
            labelDescription3.text = instructions[14]["Description"]
            imagetwo.image = UIImage(named: instructions[14]["Image"]!)
            
            labelTitle3.text = instructions[13]["Job Type"]
            labelCompany3.text = instructions[13]["Company"]
            labelDescription2.text = instructions[13]["Description"]
            imageThree.image = UIImage(named: instructions[13]["Image"]!)
        }
        else if ((result1 == 1) && (result2 == 1) && (result3 == 3)) || ((result1 == 2) && (result2 == 1) && (result3 == 3)) {
            labelTitle1.text = instructions[3]["Job Type"]
            labelCompany1.text = instructions[3]["Company"]
            labelDescription.text = instructions[3]["Description"]
            imageOne.image = UIImage(named: instructions[3]["Image"]!)
            
            labelTitle2.text = instructions[4]["Job Type"]
            labelCompany2.text = instructions[4]["Company"]
            labelDescription3.text = instructions[4]["Description"]
            imagetwo.image = UIImage(named: instructions[4]["Image"]!)
            
            labelTitle3.text = instructions[5]["Job Type"]
            labelCompany3.text = instructions[5]["Company"]
            labelDescription2.text = instructions[5]["Description"]
            imageThree.image = UIImage(named: instructions[5]["Image"]!)
        }
        else if ((result1 == 1) && (result2 == 1) && (result3 == 4)) || ((result1 == 2) && (result2 == 1) && (result3 == 4)) {
            labelTitle1.text = instructions[30]["Job Type"]
            labelCompany1.text = instructions[30]["Company"]
            labelDescription.text = instructions[30]["Description"]
            imageOne.image = UIImage(named: instructions[30]["Image"]!)
            
            labelTitle2.text = instructions[32]["Job Type"]
            labelCompany2.text = instructions[32]["Company"]
            labelDescription3.text = instructions[32]["Description"]
            imagetwo.image = UIImage(named: instructions[32]["Image"]!)
            
            labelTitle3.text = instructions[31]["Job Type"]
            labelCompany3.text = instructions[31]["Company"]
            labelDescription2.text = instructions[31]["Description"]
            imageThree.image = UIImage(named: instructions[31]["Image"]!)
        }
    }
    

}
