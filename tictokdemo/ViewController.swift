//
//  ViewController.swift
//  tictokdemo
//
//  Created by MacStudent on 2020-01-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var activeplayer = 1
    var gamestate = [0,0,0,0,0,0,0,0,0]
    let winningcombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnpressed(_ sender: UIButton) {
        
        print(sender.tag)
        let activeposition = sender.tag - 1
        if gamestate[activeposition] == 0{
            gamestate[activeposition] = activeplayer
            if activeplayer == 1{
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activeplayer = 2
            }
            else {
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activeplayer = 1
            }
        }
        
        
    }
    
}

