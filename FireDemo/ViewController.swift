//
//  ViewController.swift
//  FireDemo
//
//  Created by Matt Ao on 12/12/19.
//  Copyright © 2019 Betty Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        let homeTeamBadgeView = TeamBadgeView.fromNib()
        homeTeamBadgeView.configure()
        
        self.view.addSubview(homeTeamBadgeView)
        homeTeamBadgeView.frame.origin = CGPoint(x: 300, y: 500)
    }


}

