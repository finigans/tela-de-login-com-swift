//
//  MainCoordinator.swift
//  tele-moacir
//
//  Created by Jonathan Pereira Almeida on 01/03/22.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    
    func start() {
        let viewModel = LoginViewModel(coordinator: self)
        let vc = LoginViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }

    func showEmployeeScreen() {
        var empregados: [EmployeeModel] = []
        let cassia = EmployeeModel(name: "Jonathan ", cargo: "CEO", foto: "CB")
        let gabriel = EmployeeModel(name: "Nikolas", cargo: "CFO", foto: "GC")
        let paula = EmployeeModel(name: "Fabiana", cargo: "CMO", foto: "PL")

        empregados.append(cassia)
        empregados.append(gabriel)
        empregados.append(paula)

        let viewModel = EmployeeViewModel(coordinator: self, model: empregados)

       let vc = EmployeeViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
