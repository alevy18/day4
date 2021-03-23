//
//  SecondViewController.swift
//  repeatDay4
//
//  Created by Aaron Levy on 3/22/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    var secondLabelTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        secondLabel.text = secondLabelTitle
    }
    
    @IBAction func evenLighter(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "ThirdViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
   
    
    
    
    @IBAction func goDarker(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "ViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
