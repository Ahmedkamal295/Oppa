//
//  RestartExtention.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/9/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    
     func restartApp(_ id : String) {
          guard let window = UIApplication.shared.keyWindow else{return}
          let sb = UIStoryboard(name: "Main", bundle: nil)
          var vc : UIViewController
          vc = sb.instantiateViewController(withIdentifier: id)
          window.rootViewController = vc
          UIView.transition(with: window, duration: 0.5, options: .showHideTransitionViews, animations: nil, completion: nil)
      }
}
