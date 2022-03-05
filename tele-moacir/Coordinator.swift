//
//  Coordinator.swift
//  tele-moacir
//
//  Created by Jonathan Pereira Almeida on 01/03/22.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    func start()
    
}
