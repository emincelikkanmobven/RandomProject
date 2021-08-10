//
//  FirstPageViewController.swift
//  RandomProject
//
//  Created by Emin Çelikkan on 10.08.2021.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var nextBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.title = "title"
        navigationItem.title = "Title!"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let vc: UIViewController = storyboard.instantiateViewController(withIdentifier: "SecondPageViewController") as! UINavigationController
//
//        self.present(vc, animated: true, completion: nil)
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondPageVC") as! SecondPageViewController

        self.navigationController?.pushViewController(vc, animated: true)
    }
   

}
