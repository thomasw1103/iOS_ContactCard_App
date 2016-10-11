//
//  DetailViewController.swift
//  ContactCard-App
//
//  Created by Thomas Woerdeman on 11/10/2016.
//  Copyright © 2016 Thomas Woerdeman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var foreNameLabel: UILabel!
    
    
    public var person : Person?
    
    override func viewWillAppear(_ animated : Bool) {
        super.viewWillAppear(animated)
        foreNameLabel.text = person!.foreName! + " " + person!.lastName!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
