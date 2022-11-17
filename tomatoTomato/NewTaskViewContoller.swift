//
//  NewTaskViewContoller.swift
//  tomatoTomato
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
    
    @IBOutlet private weak var saveButtonItem: UIBarButtonItem!
//    @IBOutlet private weak var
    
    init?(_ coder: NSCoder, mode: Mode, task: tomatoTaskDbModel) {
        self.mode = mode
        self.task = task
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
