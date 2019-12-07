//
//  ViewController.swift
//  RocketApp
//
//  Created by Mahendar ramidi on 2/2/19.
//  Copyright © 2019 Mahendar ramidi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var barkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var hustleView: UIView!
    @IBOutlet weak var rocketAndStream: UIImageView!
    
    @IBOutlet weak var cloudAndOrange: UIImageView!
    @IBOutlet weak var hustlelbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource:"hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay();
        }
        catch let error as NSError{
        print(error.description)
        }
        
    }

    @IBAction func powerBtnClicked(_ sender: Any) {
        hustleView.isHidden = false
        cloudAndOrange.isHidden = false
        barkBlueBG.isHidden = true
        powerBtn.isHidden = true
        player.play();
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketAndStream.frame = CGRect(x: 0, y: 240, width: 375, height: 180)
            
        }){ (finished) in
            self.rocketAndStream.isHidden = false
            self.hustlelbl.isHidden = false
            self.onLbl.isHidden = false
            
        }
        
        
        
    }
    
}

