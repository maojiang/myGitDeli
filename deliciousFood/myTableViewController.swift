//
//  myTableViewController.swift
//  deliciousFood
//
//  Created by dengmaojiang on 16/3/7.
//  Copyright © 2016年 dengmaojiang. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    var Restaurant = [
        restaurants(name: "潮记烧腊",address: "xxx",image: "chaojiRestaurant",isvisited: false,type: "eating"),
        restaurants(name: "爱尔康药行", address: "xxx", image: "aierkangRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "川菜园", address: "xxx", image: "chuanCaiYuanRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "丰乐沙县", address: "xxx", image: "fengLeShaxuanRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "花样年华花店", address: "xxx", image: "flowerRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "李记潮人商超", address: "xxx", image: "liJiSupermakitRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "柳州螺粉", address: "xxx", image: "liuZhouLuoShiRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "连美桂林米粉", address: "xxx", image: "lianMeiRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "美碟轩蛋糕连锁店", address: "xxx", image: "meiDieXuanRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "美宜佳", address: "xxx", image: "meiYiJiaRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "美宜佳便利店", address: "xxx", image: "meiYijiaBianLiRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "荣隆美食（蒸饭煲仔饭）", address: "xxx", image: "rongLongRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "四叶草蛋糕专家", address: "xxx", image: "siYecaoRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "夜HOME邂逅尚饮", address: "xxx", image: "yeHOMERestaurant", isvisited: false, type: "eating"),
        restaurants(name: "SalonCoffee", address: "xxx", image: "SalonCoffeeRestaurant", isvisited: false, type: "eating"),
        restaurants(name: "DoubleCup", address: "xxx", image: "DoubleCupRestaurant", isvisited: false, type: "eating")
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        return Restaurant.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! MyTableViewCell

        // Configure the cell...
        cell.restaurantImage.image=UIImage(named: "\(Restaurant[indexPath.row].image).jpg")
        cell.restaurantImage.layer.cornerRadius=cell.restaurantImage.frame.size.width/2
        cell.restaurantImage.layer.masksToBounds = true
        
        cell.restaurantName.text=Restaurant[indexPath.row].name
        cell.restaurantSaleCount.text="月售单数\(cell.count)"
        
        cell.restaurantPrice1.text="￥\(cell.price)"
        
        cell.restaurantFrieghtTime.text="运送时间\(cell.time)"
        
        cell.restaurantFirst.layer.cornerRadius=cell.restaurantFirst.frame.size.width/2
        cell.restaurantFirst.layer.masksToBounds = true
        
        cell.restaurantFavorable.layer.cornerRadius = cell.restaurantFavorable.frame.size.width/2
        cell.restaurantFavorable.layer.masksToBounds = true
        
        
        
        
        

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    //响应事件
//  
//   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//    
//        
//    }
    
    
    
    
    
    
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "detailSegue"{
        let destVc = segue.destinationViewController as! DetailTableViewController
        destVc.restaurantName = Restaurant[(tableView.indexPathForSelectedRow!.row)].name
        destVc.restaurantCount = Restaurant.count
            print("\(destVc.restaurantName)")
        }
    }
    

}
