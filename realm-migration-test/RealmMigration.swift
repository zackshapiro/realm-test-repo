//
//  RealmMigration.swift
//  realm-migration-test
//
//  Created by Zack Shapiro on 3/22/18.
//  Copyright © 2018 Zack Shapiro. All rights reserved.
//

import Foundation

import RealmSwift


final class RealmMigration {

    static func migrate() {
        let currentSchemaVersion: UInt64 = 1
        let key = UserService.getKeychainKeyID() as Data
        Realm.Configuration.defaultConfiguration = Realm.Configuration(
            encryptionKey: key,
            readOnly: false,
            schemaVersion: currentSchemaVersion,
            migrationBlock: { migration, oldSchemaVersion in
                print("Migrating Realm from schema version \(oldSchemaVersion) to \(currentSchemaVersion)")

                migration.enumerateObjects(ofType: Credentials.className()) { oldObject, newObject in
                    print("oldSchemaVersion = \(oldSchemaVersion)")
                }
        })
    }

}

