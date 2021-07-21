//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Decagon on 18/07/2021.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "datePopupVC") as! DatePopupViewController
        controller.showTimePicker = true
        present(controller, animated: true, completion: nil)
    }
    
}
