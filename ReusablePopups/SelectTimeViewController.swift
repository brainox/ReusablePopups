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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
//        let storyBoard = UIStoryboard(name: "DatePopupViewController", bundle: nil)
//        guard let popupVC = storyboard?.instantiateViewController(withIdentifier: "toDatePopupViewControllerSegue")  else { return } //storyboard?.instantiateInitialViewController() else { return}
//        storyboard?.instantiateViewController(withIdentifier: "datePopupVC")
//        present(popupVC, animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "datePopupVC") as! DatePopupViewController
        controller.showTimePicker = true
        present(controller, animated: true, completion: nil)
    }
    
}
