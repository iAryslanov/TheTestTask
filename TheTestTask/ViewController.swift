//
//  ViewController.swift
//  TheTestTask
//
//  Created by Igor Aryslanov on 09.04.2020.
//  Copyright © 2020 Igor Aryslanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
//    var dataModel: [DataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//
        setupTableView()
//        readFromFile()
    }
    
    
    private func setupTableView() {
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
//    func readFromFile() {
//        guard let path = Bundle.main.path(forResource: "userAPI", ofType: "json") else { return }
//        //        print("Path: \(path)")
//        let url = URL(fileURLWithPath: path)
//        //        print("url: \(url)")
//        do {
//            let data = try Data(contentsOf: url)
//            //            print("Data: \(data)")
//            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? Array<Dictionary<String, Any>> {
//                //                print("JSON: \(json)")
//                for participant in json {
//                    print("id: \(participant["id"] ?? "Not Id")")
//                    print("guid: \(participant["guid"] ?? "Not Guid")")
//                    print("name: \(participant["name"] ?? "Not Name")")
//                    print("beginDate: \(participant["beginDate"] ?? "Not Begin Date")")
//                    print("endDate: \(participant["endDate"] ?? "Not End Date")")
//                    print("kind: \(participant["kind"] ?? "Not Kind")")
//                    print("description: \(participant["description"] ?? "Not Description")")
//                    print("imageId: \(participant["imageId"] ?? "Not Image Id")")
//                    print("venue: \(participant["venue"] ?? "Not venue")")
//
////                    print("participant: \(participant["participant"] ?? "Not Participant")")
//                    print("----------")
//                    if let dataPoint = participant["participant"] as? Array<Dictionary<String, Any>>  {
//                        print("Type of dataPoint: \(type(of: dataPoint))")
//                        for i in dataPoint {
//                            print("surname: \(i["surname"] ?? "not Surname")")
//                            print("name: \(i["name"] ?? "not Name")")
//                            print("patronyc: \(i["patronyc"] ?? "not Patronyc")")
//                            print("position: \(i["position"] ?? "not Position")")
//                            print("company: \(i["company"] ?? "not Company")")
//                            print("imageId: \(i["imageId"] ?? "not Image Id")")
//                            print("==============================================================================")
//                        }
//                    }
//                }
//            }
//        } catch let err {
//            print(err.localizedDescription)
//        }
//    }
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "123_321"
        return cell
    }
    
    
}

