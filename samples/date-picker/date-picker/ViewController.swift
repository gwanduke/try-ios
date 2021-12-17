//
//  ViewController.swift
//  date-picker
//
//  Created by Kim Gwanduk on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var pickedDate: Date?
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblSelectedTime: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }


    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblSelectedTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        self.pickedDate = datePickerView.date
        
        
    }
    
    // Swift4에서는 #selector의 인자로 사용될 메서드를 선언할 때, objc와 호환성을 위하여 @objc 키워드 필요
    @objc func updateTime() {
        let date = NSDate()
        
        if (pickedDate != nil) {
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm"
            if (formatter.string(from: pickedDate!) == formatter.string(from: date as Date)) {
                view.backgroundColor = UIColor.red
            } else {
                view.backgroundColor = UIColor.white
            }
            
        }
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }
}

