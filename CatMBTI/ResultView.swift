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
    @IBOutlet weak var shareButton: UIButton!
    
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.image = UIImage(named: imageName)
        resetButton.layer.cornerRadius = 20
        shareButton.layer.cornerRadius = 20
    }
    @IBAction func resetButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "unwindVC1", sender: self)
    }
    @IBAction func shareButtonClick(_ sender: Any) {
        let shareData = UIActivityViewController(activityItems: [resultImage.image!], applicationActivities: nil)
        
        self.present(shareData, animated: true, completion: nil)
    }
}
