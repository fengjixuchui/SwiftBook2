//
//  ViewController.swift
//  SimpleTable
//
//  Created by 关东升 on 2017/1/20.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    var listTeams: [[String: String]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let plistPath = Bundle.main.path(forResource: "team", ofType: "plist")
        //获取属性列表文件中的全部数据
        self.listTeams = NSArray(contentsOfFile: plistPath!) as? [[String: String]]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //UITableViewDataSource 协议方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "CellIdentifier"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let row = indexPath.row
        let rowDict = self.listTeams[row] as [String: String]
        
        cell.textLabel?.text = rowDict["name"] as String?
        
        let imagePath = String(format: "%@.png", rowDict["image"]! as String)
        
        cell.imageView?.image = UIImage(named: imagePath)
        
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
    }
    
    //UITableViewDelegate 协议方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        let rowDict = self.listTeams[row] as [String: String]
        let name = rowDict["name"] as String?
        
        print("选择球队: \(name!)")
    }
}

