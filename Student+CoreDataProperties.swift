//
//  Student+CoreDataProperties.swift
//  crudTest
//
//  Created by Caio Soares on 03/10/22.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var school: String?
    @NSManaged public var std: String?

}

extension Student : Identifiable {

}
