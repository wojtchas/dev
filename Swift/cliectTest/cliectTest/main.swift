//
//  main.swift
//  cliectTest
//
//  Created by Wojciech Stasiński on 28.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

import Foundation

var request = NSMutableURLRequest(URL: NSURL(string: "http://localhost/login"))
var session = NSURLSession.sharedSession()

request.HTTPMethod = "POST"

var params = ["username":"jameson", "password":"password"] as Dictionary

var err: NSError?
request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
request.addValue("application/json", forHTTPHeaderField: "Accept")

var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
    println("Response: \(response)")
    var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
    println("Body: \(strData)")
    var err: NSError?
    var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as NSDictionary
    
    if((err) != nil) {
        println(err!.localizedDescription)
    }
    else {
        var success = json["success"] as? Int
        println("Succes: \(success)")
    }
})

task.resume()

