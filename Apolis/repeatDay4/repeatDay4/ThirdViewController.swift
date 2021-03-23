//
//  ThirdViewController.swift
//  repeatDay4
//
//  Created by Aaron Levy on 3/22/21.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func muchDarker(_ sender: Any) {

        let arrOfVCs = navigationController?.viewControllers
        
        
        for vc in arrOfVCs! {
            if vc is SecondViewController{
                (vc as! SecondViewController).secondLabelTitle = "You were in the third view Controller"
                navigationController?.popToViewController(vc, animated: true)
            }
        }
        
    }
    
    
    @IBAction func muchMuchDarker(_ sender: Any) {
//        let st = UIStoryboard.init(name: "Main", bundle: nil)
//        let vc = st.instantiateViewController(identifier: "ViewController")
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
    
}
