//
//  DetailViewController.swift
//  PostestRemajaIslam
//
//  Created by Sam Pramudana on 10/23/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelIsi: UILabel!
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var labelJudul: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelJudul.text = TITle[myIndex]
        imgPreview.image = UIImage(named: TITle[myIndex] + ".jpg")
        labelIsi.text = titleDesc[myIndex]
        
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
