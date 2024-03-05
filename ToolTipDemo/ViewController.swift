//
//  ViewController.swift
//  ToolTipDemo
//
//  Created by Meet Budheliya on 04/03/24.
//

import UIKit

class ViewController: UIViewController, ToolTipDelegate {
 

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var center: UIImageView!
    @IBOutlet weak var tabbar: UITabBar!
    
    private let tooltipManager: TooltipManager = TooltipManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        center.layer.cornerRadius = 12
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupTooltips(forcing: true)
    }

    private func setupTooltips(forcing: Bool = false) {
        guard !tooltipManager.didSetupTooltips || forcing else {
            return
        }
        
        let tooltips: [ViewControllerTooltip] = [.checkRate(in: lbl),
                                                 .sendMoney(in: center),
                                                 .walletTab(in: tabbar)]
        
        tooltipManager.delegate = self
        tooltipManager.setup(tooltips: tooltips, darkView: view)
    }

    func toolTipDidComplete() {
        print(#function)
    }
    
}

