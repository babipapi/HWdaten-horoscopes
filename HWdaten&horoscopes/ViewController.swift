//
//  ViewController.swift
//  HWdaten&horoscopes
//  Created by Daniel on 2019/4/17.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calenderDate: UIDatePicker!
    @IBOutlet weak var horoImage: UIImageView!
    @IBOutlet weak var weekSegment: UISegmentedControl!
    @IBOutlet weak var yearSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func dateselectDatePicker(_ sender: UIDatePicker) {
        //星期幾
        let today = calenderDate.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let weekday = dateFormatter.string(from: today)
        if weekday == "Sunday" {
            weekSegment.selectedSegmentIndex = 0
        } else if weekday == "Monday" {
            weekSegment.selectedSegmentIndex = 1
        } else if weekday == "Tuesday" {
            weekSegment.selectedSegmentIndex = 2
        } else if weekday == "Wednesday" {
            weekSegment.selectedSegmentIndex = 3
        } else if weekday == "Thursday" {
            weekSegment.selectedSegmentIndex = 4
        } else if weekday == "Firday" {
            weekSegment.selectedSegmentIndex = 5
        } else if weekday == "Saturday" {
            weekSegment.selectedSegmentIndex = 6
        }
        //星座
        dateFormatter.dateFormat = "MM"
        let month = dateFormatter.string(from: today)
        dateFormatter.dateFormat = "dd"
        let day = dateFormatter.string(from: today)
        if month == "01",day > "21" {
            horoImage.image = UIImage(named: "水瓶")
        } else if month == "01",day < "20"{ horoImage.image = UIImage(named: "摩羯")
            
        }
        if month == "02",day > "20" {
            horoImage.image = UIImage(named: "雙魚")
        } else if month == "02",day < "19"{ horoImage.image = UIImage(named: "水瓶")
            
        }
        if month == "03",day > "20" {
            horoImage.image = UIImage(named: "白羊")
        } else if month == "03",day < "21"{ horoImage.image = UIImage(named: "雙魚")
            
        }
        if month == "04",day > "19" {
            horoImage.image = UIImage(named: "金牛")
        } else if month == "04",day < "20"{ horoImage.image = UIImage(named: "白羊")
            
        }
        if month == "05",day > "20" {
            horoImage.image = UIImage(named: "雙子")
        } else if month == "05",day < "21"{ horoImage.image = UIImage(named: "金牛")
            
        }
        if month == "06",day > "20" {
            horoImage.image = UIImage(named: "巨蟹")
        } else if month == "06",day < "21"{ horoImage.image = UIImage(named: "雙子")
            
        }
        if month == "07",day > "22" {
            horoImage.image = UIImage(named: "獅子")
        } else if month == "07",day < "23"{ horoImage.image = UIImage(named: "巨蟹")
            
        }
        if month == "08",day > "22" {
            horoImage.image = UIImage(named: "處女")
        } else if month == "08",day < "23"{ horoImage.image = UIImage(named: "獅子")
            
        }
        if month == "09",day > "22" {
            horoImage.image = UIImage(named: "天秤")
        } else if month == "09",day < "23"{ horoImage.image = UIImage(named: "處女")
            
        }
        if month == "10",day > "22" {
            horoImage.image = UIImage(named: "天蠍")
        } else if month == "10",day < "23"{ horoImage.image = UIImage(named: "天秤")
            
        }
        if month == "11",day > "21" {
            horoImage.image = UIImage(named: "射手")
        } else if month == "11",day < "22"{ horoImage.image = UIImage(named: "天蠍")
            
        }
        if month == "12",day > "21" {
            horoImage.image = UIImage(named: "摩羯")
        } else if month == "12",day < "22"{ horoImage.image = UIImage(named: "射手")
            
        }
        
        //閏年
        let calender = Calendar.current
        let year = calender.component(.year, from: today)
        if year % 4 == 0, year % 100 != 0 {
            yearSwitch.isOn = true
        } else if year % 400 == 0, year % 3200 != 0{
            yearSwitch.isOn = true
        } else {yearSwitch.isOn = false}
        
        
}
    
    
}
