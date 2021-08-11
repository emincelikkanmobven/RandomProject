//
//  FirstPageViewController.swift
//  RandomProject
//
//  Created by Emin Çelikkan on 10.08.2021.
//

import UIKit

class FirstPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "internshipCell") as? InternshipTableViewCell
        cell?.dayLabel.text = "Day :" + "\(indexPath.row + 1)"
        return cell!
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondPageVC") as! SecondPageViewController

        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBOutlet weak var internshipTableView: UITableView!
    @IBOutlet weak var nextBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        internshipTableView.delegate = self
        internshipTableView.dataSource = self
        navigationController?.title = "title"
        navigationItem.title = "Internship Book"
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
