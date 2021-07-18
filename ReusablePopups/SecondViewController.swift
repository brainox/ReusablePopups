//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Decagon on 18/07/2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 1. Notifications: Old Way
        //        NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateName, object: nil)
        
        // 2. Notifications: New Way
        observer = NotificationCenter.default.addObserver(forName: .saveDateName, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVC = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVC.formattedDate
        }
    }
    // 2. Notifications: New Way
    //    @objc func handlePopupClosing(notification: Notification) {
    //        let dateVC = notification.object as! DatePopupViewController
    //        dateLabel.text = dateVC.formattedDate
    //    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}
