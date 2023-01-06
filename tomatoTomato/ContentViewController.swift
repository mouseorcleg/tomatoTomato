//
//  ContentViewController.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 17/11/2022.
//

import UIKit

class ContentViewController: UIViewController {
    private(set) var task: tomatoTaskDbModel
    
    init?(_ coder: NSCoder, task: tomatoTaskDbModel) {
        self.task = task
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // when view is created in memory / only one time
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //every time right before view is on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    //every time before the view is dissmised, good for saving stuff
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

