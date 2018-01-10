//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Fai Wu on 10/4/17.
//  Copyright © 2017 Fai Wu. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    @IBOutlet weak var memeImage: UIImageView!
    var meme: Meme!
    // MARK: Life Cycle
    override func viewDidLoad() {
        self.memeImage.image = self.meme.memedImage
        self.memeImage.contentMode = .scaleAspectFit
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
}
