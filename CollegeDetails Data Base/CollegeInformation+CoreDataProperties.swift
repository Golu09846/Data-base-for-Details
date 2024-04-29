//
//  CollegeInformation+CoreDataProperties.swift
//  DetailsOfStudents
//
//  Created by STUDENT on 4/25/24.
//
//

import Foundation
import CoreData


extension CollegeInformation {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CollegeInformation> {
        return NSFetchRequest<CollegeInformation>(entityName: "CollegeInformation")
    }

    @NSManaged public var password: String?
    @NSManaged public var name: String?
    @NSManaged public var studentInformation_rel: NSSet?

}

// MARK: Generated accessors for studentInformation_rel
extension CollegeInformation {

    @objc(addStudentInformation_relObject:)
    @NSManaged public func addToStudentInformation_rel(_ value: StudentsInformation)

    @objc(removeStudentInformation_relObject:)
    @NSManaged public func removeFromStudentInformation_rel(_ value: StudentsInformation)

    @objc(addStudentInformation_rel:)
    @NSManaged public func addToStudentInformation_rel(_ values: NSSet)

    @objc(removeStudentInformation_rel:)
    @NSManaged public func removeFromStudentInformation_rel(_ values: NSSet)

}

extension CollegeInformation : Identifiable {

}
