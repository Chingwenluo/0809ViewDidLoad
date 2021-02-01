//
//  ViewController.swift
//  0809ViewDidLoad
//
//  Created by eric on 2020/8/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //利用 UIImageView 實現多張圖片連續播放的動畫
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 70, y: 650, width: 300, height: 136))
        view.addSubview(imageView)
        let animatedImage = UIImage.animatedImageNamed("685abc2fb2cc4a2dd2be8b13a3ed8300GhJaRkFNFWVVtpnu-", duration: 1)
         imageView.image = animatedImage
        
        //漸層練習。
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
           CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1),
            CGColor(srgbRed: 0, green: 1, blue: 0, alpha: 0.3)
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        //利用 CAEmitterLayer 口罩動畫。
        let faceMaskEmitterCell = CAEmitterCell()
        faceMaskEmitterCell.contents = UIImage(named: "facemask")?.cgImage
        faceMaskEmitterCell.birthRate = 1
        faceMaskEmitterCell.lifetime = 20
        faceMaskEmitterCell.scale = 0.05
        faceMaskEmitterCell.scaleRange = 0.1
        faceMaskEmitterCell.yAcceleration = 30
        faceMaskEmitterCell.spin = 0.5
        faceMaskEmitterCell.spinRange = 1
        faceMaskEmitterCell.emissionRange = CGFloat.pi
        
        faceMaskEmitterCell.velocity = 100
        let faceMaskEmitterLayer = CAEmitterLayer()
        faceMaskEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width/2, y: -50)
        faceMaskEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        faceMaskEmitterLayer.emitterShape = .line
        faceMaskEmitterLayer.emitterCells = [faceMaskEmitterCell]
        view.layer.addSublayer(faceMaskEmitterLayer)
    }


}

