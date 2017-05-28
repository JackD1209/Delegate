//
//  ViewController2.swift
//  Delegate
//
//  Created by Đoàn Minh Hoàng on 5/21/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit

protocol dataControllerProtocol {
    func sendBack(backText: String)
}

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    
    var delegate: dataControllerProtocol?
    var textVC2: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = textVC2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button2(_ sender: Any) {
        self.delegate?.sendBack(backText: text.text!)
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
