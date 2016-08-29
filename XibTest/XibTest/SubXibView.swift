//
//  SubXibView.swift
//  XibTest
//
//  Created by happyelements on 8/29/16.
//  Copyright © 2016 DengLY. All rights reserved.
//

import UIKit

class SubXibView: UIView {

    weak var view: UIView!
    
    @IBOutlet weak var testLabel: UILabel!
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle.init(forClass: SubXibView.self)
        let nib = UINib(nibName: String(SubXibView), bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func setupSubViews() {
        view = loadViewFromNib()
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        addSubview(view)
        testLabel.text = "测试Label"
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubViews()
    }
}
