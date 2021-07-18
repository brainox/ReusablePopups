//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Decagon on 18/07/2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: .saveDateName, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVC = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVC.formattedDate
        }
    }


}
