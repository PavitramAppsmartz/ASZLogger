//
//  ASZLogger.swift
//  LearningFramework
//
//  Created by apple on 23/08/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Alamofire

public class ASZLogger: NSObject {

   public static func logger(_ message:String)
    {
        print(message)
        let url = URL(string:"https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22")!
      Alamofire.request(url, method:.get
            , parameters:nil, encoding: URLEncoding.default, headers: nil).responseString { (response) in
                print(response)
        }
    }
}
