//
//  NewTaskViewContoller.swift
//  tomatoTomato
//  Thanks Sean Allen for tutorial about app's lifecycle [https://youtu.be/d7ZqxvbiTyg]
//
//  Created by Maria Kharybina on 17/11/2022.
//

import UIKit

class NewTaskViewController: UIViewController {
    enum Mode {
        case newTask
        case editTask
    }

    private(set) var task: tomatoTaskDbModel
    let mode: Mode
    
//    @IBOutlet private weak var saveButtonItem: UIBarButtonItem!
//    @IBOutlet private weak var
    
    init?(_ coder: NSCoder, mode: Mode, task: tomatoTaskDbModel) {
        self.mode = mode
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
    
    //every time view appears on the screen, good for animation
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//    }
    
    //every time before the view is dissmised, good for saving stuff
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}
