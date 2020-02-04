//
//  ViewController.swift
//  NewsApp
//
//  Created by Apple MacBook Pro  on 2/4/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var ballbutton: UIBarButtonItem!
    
    @IBOutlet weak var seaechbutton: UIBarButtonItem!
    
    @IBOutlet weak var newsTable: UITableView!
    
    var newstitels = ["Trump campaign manager blasts Democrats, calls Iowa caucuses a 'train wreck'", "Fox News Voter Analysis Survey:  The Iowa Democratic Caucuses","Gordon Chang: 'Overwhelmed' Chinese authorities are deliberately falsifying coronavirus death toll","Trump tweets encouragement to Rush Limbaugh as he fights advanced lung cancer"]
    
    var newsPhotos = ["A1","A2","A3","A4"]
    var newsTime = ["16:09", "16:06", "15:56", "15:26"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "NewsCell", bundle:nil)
          self.newsTable.register(nibName, forCellReuseIdentifier: "newscell")
        
        self.newsTable.rowHeight = 220
        
        // Do any additional setup after loading the view.
    }

    func neviEdit() {
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newstitels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newscell", for: indexPath) as! NewsCell
        cell.showNewsTitle.text = newstitels[indexPath.row]
        cell.showNewsTime.text = newsTime[indexPath.row]
        cell.shownewsPhoto.image = UIImage(named: newsPhotos[indexPath.row])
        
        return cell
    }

}

