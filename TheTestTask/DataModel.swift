//
//  DataModel.swift
//  TheTestTask
//
//  Created by Igor Aryslanov on 09.04.2020.
//  Copyright © 2020 Igor Aryslanov. All rights reserved.
//

struct DataModel: Decodable {
    let id: Int?
    let guid: String?
    let name: String?
    let beginDate: String?
    let endDate: String?
    let kind: Int?
    let description: String?
    let imageId: Int?
    let venue: String?
    let participant: [ParticipantDataModel?]
}

struct ParticipantDataModel: Decodable {
    let surname: String?
    let name: String?
    let patronyc: String?
    let position: String?
    let company: String?
    let imageId: Int?
}
