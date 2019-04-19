//
//  DetialViewController.swift
//  CoffeeLab
//
//  Created by SungIn on 2019. 4. 19..
//  Copyright © 2019년 SungIn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var coffee : Coffee?

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        imageView.image = UIImage(named: coffee!.coffeeImg)
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
