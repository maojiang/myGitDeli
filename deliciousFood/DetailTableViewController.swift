//
//  DetailTableViewController.swift
//  deliciousFood
//
//  Created by dengmaojiang on 16/3/11.
//  Copyright © 2016年 dengmaojiang. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    @IBOutlet weak var myAdress: UILabel!
    @IBOutlet weak var myGood: UILabel!
    @IBOutlet weak var myTips: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTipsContain: UILabel!
    @IBOutlet weak var myView: UIView!
    var restaurantName = ""
    var restaurantCount = 0
    
    
    var allData = ["潮记烧腊":[menus(name: "白切鸡饭",image: "白切鸡饭", count: 0 ,sale: 15,support: 0 ),
        menus(name: "大白菜蒸咸肉",image: "大白菜蒸咸肉", count: 0 ,sale: 13,support: 0 ),
        menus(name: "冬菇蒸鸡饭",image: "冬菇蒸鸡饭", count: 0 ,sale: 18,support: 0 ),
        menus(name: "荷芹腊味饭",image: "荷芹腊味饭", count: 0 ,sale: 16,support: 0 ),
        menus(name: "韭王炒蛋",image: "韭王炒蛋", count: 0 ,sale: 12,support: 0 ),
        menus(name: "榄菜四季豆饭",image: "榄菜四季豆饭", count: 0 ,sale: 12,support: 0 ),
        menus(name: "凉瓜拌牛肉",image: "凉瓜拌牛肉", count: 0 ,sale: 14,support: 0 ),
        menus(name: "麻婆豆腐饭",image: "麻婆豆腐饭", count: 0 ,sale: 12,support: 0 ),
        menus(name: "牛腩饭",image: "牛腩饭", count: 0 ,sale: 16,support: 0 ),
        menus(name: "清蒸排骨饭",image: "清蒸排骨饭", count: 0 ,sale: 14,support: 0 ),
        menus(name: "烧鹅饭",image: "烧鹅饭", count: 0 ,sale: 18,support: 0 ),
        menus(name: "时蔬肉片饭",image: "时蔬肉片饭", count: 0 ,sale: 12,support: 0 ),
        menus(name: "豉汗鱼腩饭",image: "豉汗鱼腩饭", count: 0 ,sale: 14,support: 0 ),
        menus(name: "咸菜猪肚",image: "咸菜猪肚", count: 0 ,sale: 14,support: 0 ),
        menus(name: "咸鱼茄子煲饭",image: "咸鱼茄子煲饭", count: 0 ,sale: 15,support: 0 ),
        menus(name: "正宗隆江肉卷饭",image: "正宗隆江肉卷饭", count: 0 ,sale: 14,support: 0 ),
        menus(name: "正宗隆江猪脚饭",image: "正宗隆江猪脚饭", count: 0 ,sale: 14,support: 0 ),
        menus(name: "正宗隆江猪蹄饭",image: "正宗隆江猪蹄饭", count: 0 ,sale: 14,support: 0 ),
        menus(name: "猪杂汤饭",image: "猪杂汤饭", count: 0 ,sale: 14,support: 0 )],
        "川菜园":[],
        "爱尔康药行":[],
        "丰乐沙县":[],
        "花样年华花店":[],
        "李记潮人商超":[],
        "柳州螺粉":[],
        "连美桂林米粉":[],
        "美碟轩蛋糕连锁店":[],
        "美宜佳":[],
        "美宜佳便利店":[],
        "荣隆美食（蒸饭煲仔饭）":[],
        "四叶草蛋糕专家":[],
        "夜HOME邂逅尚饮":[],
        "SalonCoffee":[],
        "DoubleCup":[]
        
        
    ]
    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        myImage.image = UIImage(named: "\(restaurantName).jpg")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var k = 0
        for (key,value) in allData
        {
        if (key==restaurantName)
        {
            k=(allData[key]?.count)!
            
            }
        }

                return k
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath) as! DetailTableViewCell

        // Configure the cell...
        for(key,value)in allData{
            if (key==restaurantName)
            {
                cell.detailFoodImage.image = UIImage(named: allData[key]![indexPath.row].image)
                
            }
        }
        


        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
