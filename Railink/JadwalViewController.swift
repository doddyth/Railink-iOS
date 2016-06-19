//
//  JadwalViewController.swift
//  Railink
//
//  Created by Doddy on 6/19/16.
//  Copyright © 2016 Doddy. All rights reserved.
//

import UIKit
import SegueManager

class JadwalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SeguePerformer {

    @IBOutlet weak var jadwalTableView: UITableView!
    
    var jadwals =  [JadwalSementaraViewParam]()
    
    lazy var segueManager: SegueManager = {
        return SegueManager(viewController: self)
    }()
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        segueManager.prepareForSegue(segue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupJadwalData()
        setupTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jadwals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: JadwalTableViewCell = tableView.dequeueReusableCellWithIdentifier("jadwalCell") as! JadwalTableViewCell
        cell.set(jadwals[indexPath.row])
        
        return cell
    }
    
    private func setupTableView() {
        jadwalTableView.delegate = self
        jadwalTableView.dataSource = self
    }
    
    // MARK: Sementara
    private func setupJadwalData() {
        jadwals.append(JadwalSementaraViewParam(namaKereta: "ARS (U1) Eksekutif A", time: "04:45 - 05:25", price: "Dewasa IDR 100.000 Anak-Anak IDR 100.000"))
        
        jadwals.append(JadwalSementaraViewParam(namaKereta: "ARS (U2) Eksekutif A", time: "06:10 - 06:52", price: "Dewasa IDR 100.000 Anak-Anak IDR 100.000"))
        
        jadwals.append(JadwalSementaraViewParam(namaKereta: "ARS (U7) Eksekutif A", time: "07:45 - 08:25", price: "Dewasa IDR 100.000 Anak-Anak IDR 100.000"))
        
        jadwals.append(JadwalSementaraViewParam(namaKereta: "ARS (U9) Eksekutif A", time: "08:45 - 09:25", price: "Dewasa IDR 100.000 Anak-Anak IDR 100.000"))
        
        jadwals.append(JadwalSementaraViewParam(namaKereta: "ARS (U13) Eksekutif A", time: "09:10 - 10:00", price: "Dewasa IDR 100.000 Anak-Anak IDR 100.000"))
    }
}
