//
//  ViewController.swift
//  image_slider
//
//  Created by COE-029 on 13/09/19.
//  Copyright © 2019 COE-029. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ArrayImage = [UIImage]()
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var SliderOutlet: UISlider!
    
    @IBAction func NextButton(_ sender: Any)
    {
        SliderOutlet.value += 1
        ImageView.image = ArrayImage[Int(SliderOutlet.value)]
        
    }
    
    @IBAction func PrevButton(_ sender: Any)
    {
        SliderOutlet.value -= 1
        ImageView.image = ArrayImage[Int(SliderOutlet.value)]
    }
    
    @IBAction func Slider(_ sender: UISlider)
    {
        var value = Int(sender.value)
        ImageView.image = ArrayImage[value]
    }
    
    override func viewDidLoad() {
        
        ArrayImage = [#imageLiteral(resourceName: "back1"),#imageLiteral(resourceName: "back2"),#imageLiteral(resourceName: "back3"),#imageLiteral(resourceName: "back4"),#imageLiteral(resourceName: "back5"),#imageLiteral(resourceName: "back6"),#imageLiteral(resourceName: "back7")]
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

