//
//  ViewController.swift
//  repeatDay4
//
//  Created by Aaron Levy on 3/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let btnRight = UIBarButtonItem.init(title: "green", style: .plain, target: self, action: #selector(turnGreen))

        navigationItem.rightBarButtonItem = btnRight
        
        
        let buttonLeft = UIBarButtonItem.init(title: "red", style: .plain, target: self, action: #selector(turnRed))
    
        navigationItem.leftBarButtonItem = buttonLeft
    }
    


    @objc func turnGreen() {
        view.backgroundColor = .green
    }
    
    @objc func turnRed() {
        view.backgroundColor = .red
    }
    
    

    enum ButtonNum {
        case one
        case two
        case three
        case four
    }
    
    @IBAction func jumpToLighter(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "SecondViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        
        let senderTag: Int = sender.tag
        
        switch senderTag{
        case 0:
            Lbl.text = "You pressed button one"
        case 1:
            Lbl.text = "You pressed button two"
        case 2:
            Lbl.text = "You pressed button three"
        case 3:
            Lbl.text = "You pressed button four"
        default:
            return
        }
        
        
    }
    
}

