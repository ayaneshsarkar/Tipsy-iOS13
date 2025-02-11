//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Ayanesh Sarkar on 28/01/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalValue: String?
    var splitNumber: String?
    var tipValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = totalValue ?? ""
        settingsLabel.text = "Split between \(splitNumber ?? "") people with \(tipValue ?? "")% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
