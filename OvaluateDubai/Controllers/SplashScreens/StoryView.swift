//
//  StoryView.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit

class StoryView: UIViewController , SegmentedProgressBarDelegate {
    
    private var spb: SegmentedProgressBar!
    private let iv = UIImageView()
    private let titlelbl = UILabel()
    private let descriptionlbl = UILabel()
    private let images = [#imageLiteral(resourceName: "image-1"), #imageLiteral(resourceName: "image"), #imageLiteral(resourceName: "image-2")]
    private let titlearry = ["The World’s 1st AI-Driven Property Valuation Platform","Property Valuations Made Easy For Residents & Foreign Investors","Get Auto-Generated,DLD-Approved Valuations"]
    private let descriptionarry = ["We understand today's real estate needs and deliver accurate valuation certificates in a matter of seconds.","Our platform and qualified specialists provide seamless real estate valuation solutions in the UAE and soon, across the GCC.","We offer our own property valuation reports, and are certified by the Dubai Land Development to do so."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        print("abc")
        
       
        iv.frame = view.bounds
        iv.contentMode = .scaleAspectFill
        view.addSubview(iv)
       
        
        descriptionlbl.font = UIFont(name:"Roboto-Regular",size:18)
        descriptionlbl.textColor = .white
        descriptionlbl.numberOfLines = 3
        let y = Int(view.bounds.size.height - 160)
        let width = Int(view.bounds.size.width - 20)
        descriptionlbl.frame = CGRect(x:10 , y:y , width:width, height: 150)
        view.addSubview(descriptionlbl)
        
       

        titlelbl.font = UIFont(name:"Roboto-Medium",size:25)
        let Y = Int(view.bounds.size.height - 190)
        let Width = Int(view.bounds.size.width - 20)
        titlelbl.frame = CGRect(x:10 , y:Y , width:Width, height: 60)
        titlelbl.textColor = .white
        titlelbl.numberOfLines = 2
        view.addSubview(titlelbl)
        let x = Int(view.bounds.size.width - 30)
        let button = UIButton(frame: CGRect(x: x, y: 70, width: 20, height: 20))
        button.tintColor = .white
        button.setImage(#imageLiteral(resourceName: "cancel") , for: .normal)
        button.addTarget(self, action: #selector(menuitemAction), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            button.widthAnchor.constraint(equalToConstant: 25),
            button.heightAnchor.constraint(equalToConstant: 25)
        ])
        updateImage(index: 0)
        
        
        spb = SegmentedProgressBar(numberOfSegments: 3, duration: 5)
        spb.frame = CGRect(x: 15, y: 40, width: view.frame.width - 30, height: 4)
        spb.delegate = self
        spb.topColor = UIColor.white
        spb.bottomColor = UIColor.white.withAlphaComponent(0.25)
        spb.padding = 2
        view.addSubview(spb)

        spb.startAnimation()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedView)))
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    func segmentedProgressBarChangedIndex(index: Int) {
        print("Now showing index: \(index)")
        updateImage(index: index)
    }
    
    func segmentedProgressBarFinished() {
        print("Finished!")
        Switcher.presentRegistration(viewController: self)
    }
    
    @objc private func tappedView() {
        spb.isPaused = !spb.isPaused
    }
    @objc func menuitemAction(sender: UIButton!) {
    }
    private func updateImage(index: Int) {
        iv.image = images[index]
        titlelbl.text = titlearry[index]
        
        descriptionlbl.text = descriptionarry[index]
        
    }
}

