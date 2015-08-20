//
//  ViewController.swift
//  quizzerStudent
//
//  Created by Jae Hoon Lee on 8/19/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let socket = SocketIOClient(socketURL: "http://192.168.1.124:5000")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        socket.connect()
        
        socket.on("connect") { data, ack in
            print("iOS::WE ARE USING SOCKETS!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAPressed(sender: UIButton) {
        socket.emit("A")
    }

    @IBAction func buttonBPressed(sender: UIButton) {
        socket.emit("B")
    }
    
    @IBAction func buttonCPressed(sender: UIButton) {
        socket.emit("C")
    }
    
    @IBAction func buttonDPressed(sender: UIButton) {
        socket.emit("D")
    }
}

