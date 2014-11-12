//
//  ViewController.swift
//  HomeLights
//
//  Created by Wojciech Stasiński on 28.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

import UIKit
import Foundation
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBOutlet var lblInfo: UILabel?
    @IBOutlet var btnLCDOUTLET: UIButton?
    @IBOutlet var btnRoomLightOUTLET: UIButton?
    @IBOutlet var btnLampOUTLET: UIButton?
    
    
    var state = ["LCD": 0, "Lamp": 0, "RoomLight": 0, "Con": 0]
    
    var authorization: Bool = false
    
    func changeState(device : String){
        if (state[device]! == 0){
            state[device] = 1
        }
        else{
            state[device] = 0
        }
    }
    
    @IBAction func btnLamp(sender : AnyObject) {
        var request = NSMutableURLRequest(URL: NSURL(string: "http://lazor.asuscomm.com:85/set")!)
        var session = NSURLSession.sharedSession()
        
        request.HTTPMethod = "POST"
        
        var params = ["set":"Lamp"] as Dictionary
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let rData = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("Body: \(rData)")
        })
        
        task.resume()

        changeState("Lamp")
        
        if (state["Lamp"]! == 0){
            btnLampOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
            lblInfo?.text = "Lamp Turned OFF"
        }
        else{
            btnLampOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
            lblInfo?.text = "Lamp Turned ON"
        }
    
    }
    
    @IBAction func btnRoomLight(sender : AnyObject) {
        var request = NSMutableURLRequest(URL: NSURL(string: "http://lazor.asuscomm.com:85/set")!)
        var session = NSURLSession.sharedSession()
        
        request.HTTPMethod = "POST"
        
        var params = ["set":"RoomLight"] as Dictionary
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let rData = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("Body: \(rData)")
        })
        
        task.resume()
        
        changeState("RoomLight")

        if (state["RoomLight"]! == 0){
            btnRoomLightOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
            lblInfo?.text = "RoomLight Turned OFF"
        }
        else{
            btnRoomLightOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
            lblInfo?.text = "RoomLight Turned ON"
        }
        
    }
    
    @IBAction func btnLCD(sender : AnyObject) {
        var request = NSMutableURLRequest(URL: NSURL(string: "http://lazor.asuscomm.com:85/set")!)
        var session = NSURLSession.sharedSession()
        
        request.HTTPMethod = "POST"
        
        var params = ["set":"LCD"] as Dictionary
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let rData = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("Body: \(rData)")
        })
        
        task.resume()
        
        changeState("LCD")
        
        if (state["LCD"]! == 1){
            btnLCDOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
            lblInfo?.text = "LCD Turned OFF"
        }
        else{
            btnLCDOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
            lblInfo?.text = "LCD Turned ON"
        }

    }
    
    func activateButtons(){
        self.btnLCDOUTLET?.enabled = true
        self.btnRoomLightOUTLET?.enabled = true
        self.btnLampOUTLET?.enabled = true
        println("Buttons active")
    }

    
    func requestFingerprintAuthentication() -> Bool {
        let context = LAContext()
        var authError: NSError?
        var authenticationResult:Bool = false
        let authenticationReason: String = "Tylko pan rzadzi swiatlem"
        
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &authError) {
            context.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: authenticationReason, reply: {
                (success: Bool, error: NSError?) -> Void in
                
                if (success) {
                    println("Access Granted")
                    self.activateButtons()
                    authenticationResult = true
                }
                else{
                    authenticationResult = false
                }
                
            })
        }
        return authenticationResult
    }
    
    func setState(){
        println(state["Con"]!)
        if (state["Con"]! == 0){
            lblInfo?.text = "CONNCECTION ERROR"
        }
        else{
            lblInfo?.text = "CONNECTED"
        }
    }
    
    func refresh(){
        
        var request = NSMutableURLRequest(URL: NSURL(string: "http://lazor.asuscomm.com:85/login")!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        
        var params = ["username":"jameson", "password":"password"] as Dictionary<String, String>
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("Body: \(strData)")
            if (error == nil){
                let json_state = JSON.parse(strData!)
                self.state["LCD"] = json_state["LCD"].asInt!
                self.state["Lamp"] = json_state["Lamp"].asInt!
                self.state["RoomLight"] = json_state["RoomLight"].asInt!
                self.state["Con"] = json_state["Con"].asInt!
            }
            
        })
        task.resume()
        usleep(500000)
        setState()
        
        activateButtons()
        
        if (state["LCD"]! == 1){
            btnLCDOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
        }
        else{
            btnLCDOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
        }
        
        if (state["Lamp"]! == 0){
            btnLampOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
        }
        else{
            btnLampOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
        }
        
        if (state["RoomLight"]! == 0){
            btnRoomLightOUTLET?.setImage(UIImage(named:"off.png"), forState: .Normal)
        }
        else{
            btnRoomLightOUTLET?.setImage(UIImage(named:"on.png"), forState: .Normal)
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //authorization = requestFingerprintAuthentication()
        //usleep(500000)
        refresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

