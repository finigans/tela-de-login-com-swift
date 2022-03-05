//
//  EmployerViewModel.swift
//  tele-moacir
//
//  Created by Jonathan Pereira Almeida on 02/03/22.
//

import Foundation

protocol EmployeeViewModelDelegate: class {
    func reloadUI()
}

final class EmployeeViewModel {

    private let coordinator: MainCoordinator
    private var model: [EmployeeModel] {
        didSet {
            delegate?.reloadUI()
        }
    }

    weak var delegate: EmployeeViewModelDelegate?
    
    init(coordinator: MainCoordinator, model: [EmployeeModel]) {
        self.coordinator = coordinator
        self.model = model
    }

    public func name(at index: Int) -> String {
        return model[index].name
    }

    public func cargo(at index: Int) -> String {
        return model[index].cargo
    }
    
    public func foto(at index: Int) -> String {
        return model[index].foto
    }

    public func numberOfRows() -> Int {
        return model.count
    }
}

