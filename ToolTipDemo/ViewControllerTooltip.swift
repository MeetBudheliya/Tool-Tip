//
//  ViewControllerTooltip.swift
//  MagicTooltips
//
//  Created by Evandro Harrison Hoffmann on 11/02/2020.
//  Copyright © 2020 It's Day Off. All rights reserved.
//

import UIKit

enum ViewControllerTooltip: Tooltip {
    case sendMoney(in: UIView)
    case checkRate(in: UIView)
    case walletTab(in: UIView)
    case addMoneyRefillWallet(in: UIView)
    case addDebitCard(in: UIView)
    case sendToInternational(in: UIView)
    case sendToAnotherWallet(in: UIView)
    
    var key: String {
        let prefix: String = "tooltip_didshow_"
        switch self {
        case .sendMoney: return "\(prefix)sendMoney"
        case .checkRate: return "\(prefix)checkRate"
        case .walletTab: return "\(prefix)walletTab"
        case .addMoneyRefillWallet: return "\(prefix)addMoneyRefillWallet"
        case .addDebitCard: return "\(prefix)addDebitCard"
        case .sendToInternational: return "\(prefix)sendToInternational"
        case .sendToAnotherWallet: return "\(prefix)sendToAnotherWallet"
        }
    }
    
    var didShow: Bool {
        return false
        //return UserDefaults.standard.bool(forKey: key)
    }
    
    func setShown() {
        UserDefaults.standard.set(true, forKey: key)
    }
    
    var direction: TooltipDirection {
        switch self {
        case .sendMoney: return .up
        case .checkRate: return .up
        case .walletTab: return .down
        case .addMoneyRefillWallet: return .down
        case .addDebitCard: return .up
        case .sendToInternational: return .up
        case .sendToAnotherWallet: return .up
        }
    }
    
    var title: String? {
        return nil
    }
    
    var message: String {
        switch self {
        case .sendMoney: return "This is the Send Money"
        case .checkRate: return "This is the Check Rate"
        case .walletTab: return "This is the Wallet Tab"
        case .addMoneyRefillWallet: return "This is the add Money || Refill Wallet"
        case .addDebitCard: return "This is the add Debit Card"
        case .sendToInternational: return "This is the Send To International"
        case .sendToAnotherWallet: return "This is the Send To Another Wallet"
        }
    }
    
    var view: UIView {
        switch self {
        case let .sendMoney(view):
            return view
        case let .checkRate(view):
            return view
        case let .walletTab(view):
            return view
        case let .addMoneyRefillWallet(view):
            return view
        case let .addDebitCard(view):
            return view
        case let .sendToInternational(view):
            return view
        case let .sendToAnotherWallet(view):
            return view
        }
    }
}
