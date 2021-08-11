//
//  SecondPageViewController.swift
//  RandomProject
//
//  Created by Emin Çelikkan on 10.08.2021.
//

import UIKit

class SecondPageViewController: UIViewController {
    

    @IBOutlet weak var saveButton: UIButton!
    var infoTextArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    
    var selectedRow = Int()
    @IBOutlet weak var infoTextView: UITextView!
    @IBOutlet weak var dayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.setValue(infoTextArray, forKey: "infoArray")
        
        dayLabel.text = "Day : " + String(describing:selectedRow + 1)
        //infoTextView.text = infoTextArray[selectedRow + 1]
        let arrayIndexValue = UserDefaults.standard.value(forKey: "infoArray")
        infoTextView.text = String(describing: arrayIndexValue)
        navigationItem.title = "Second Page"
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        print("User Defaults Array " + "\(String(describing: UserDefaults.standard.value(forKey: "infoArray")))")
        infoTextArray[selectedRow + 1] = infoTextView.text
        UserDefaults.standard.setValue(infoTextArray, forKey: "infoArray")
        
        let newArray = UserDefaults.standard.value(forKey: "infoArray")
        print(newArray!)
        print("New User Defaults Array " + "\(String(describing: UserDefaults.standard.value(forKey: "infoArray")))")
        
        
        //infoTextArray.insert(infoTextView.text, at: selectedRow - 1)
        //print(infoTextArray[selectedRow + 1])
       // print(infoTextArray)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        // infoTextView.text = infoTextArray[selectedRow + 1]
        
        let arrayIndexValue = UserDefaults.standard.value(forKey: "infoArray")
        infoTextView.text = String(describing: arrayIndexValue)
    }
}
