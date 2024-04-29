//
//  StudentsInformation+CoreDataProperties.swift
//  DetailsOfStudents
//
//  Created by STUDENT on 4/25/24.
//
//

import Foundation
import CoreData


extension StudentsInformation {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StudentsInformation> {
        return NSFetchRequest<StudentsInformation>(entityName: "StudentsInformation")
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var collegeInformation_rel: CollegeInformation?

}

extension StudentsInformation : Identifiable {

}
