//
//  ViewController.swift
//  realm-migration-test
//
//  Created by Zack Shapiro on 3/22/18.
//  Copyright © 2018 Zack Shapiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let userService = UserService()

    var credentials: Credentials {
        guard
            let seed = userService.currentUserSeed(),
            let credentials = Credentials(seedString: seed)
        else {
            fatalError("There should always be a seed")
        }

        return credentials
    }

    init() {
        super.init(nibName: nil, bundle: nil)

        print(credentials.seed)
        print(credentials.socketUUID)
        print(credentials.hasCompletedLegalAgreements)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        view.backgroundColor = .white

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

