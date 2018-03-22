//
//  Credentials.swift
//  realm-migration-test
//
//  Created by Zack Shapiro on 3/22/18.
//  Copyright © 2018 Zack Shapiro. All rights reserved.
//

import Foundation

import RealmSwift


final class Credentials: Object {

//    @objc dynamic var id: String = "0"
    @objc dynamic var seed: String = ""
    @objc dynamic var privateKey: Data = Data()

//    @objc dynamic var hasCompletedLegalAgreements: Bool = false
//    @objc dynamic var socketUUID: String?

//    override class func primaryKey() -> String? {
//        return "id"
//    }

    convenience init?(seedString seed: String) {

        self.init()

        self.seed = seed
        self.privateKey = seed.data(using: .utf8)!
    }
}

// version 0 has these just seed and privateKey

