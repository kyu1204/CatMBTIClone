//
//  ResultView.swift
//  CatMBTI
//
//  Created by 김민규 on 2021/09/13.
//

import Foundation
import UIKit

class ResultView : UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resetButton: UIButton!
    
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.image = UIImage(named: imageName)
    }
    @IBAction func resetButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "unwindVC1", sender: self)
    }
}
