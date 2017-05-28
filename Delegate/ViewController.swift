//
//  ViewController.swift
//  Delegate
//
//  Created by Đoàn Minh Hoàng on 5/21/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, dataControllerProtocol {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1(_ sender: Any) {
        performSegue(withIdentifier: "move", sender: nil)
    }
    
    func sendBack(backText: String) {
        label.text = backText
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "move" {
            let editVC = segue.destination as! ViewController2
            editVC.delegate = self
            editVC.textVC2 = text.text!
        }
    }
}

