//
//  StartView.swift
//  CatMBTI
//
//  Created by 김민규 on 2021/09/15.
//

import Foundation
import UIKit

class StartView: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBAction func unwindVC1 (segue : UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func startButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "StartSegue", sender: nil)
    }
}
