//
//  ApplicationServicesManager+InterfaceGeometry.swift
//  BCSTools
//
//  Created by Mikhail Pchelnikov on 31/07/2018.
//  Copyright © 2018 BCS. All rights reserved.
//

import UIKit

extension PluggableApplicationDelegate {

    @available(iOS 2.0, *)
    open func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        for service in _services {
            service.application?(application, willChangeStatusBarOrientation: newStatusBarOrientation, duration: duration)
        }
    }

    @available(iOS 2.0, *)
    open func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation) {
        for service in _services {
            service.application?(application, didChangeStatusBarOrientation: oldStatusBarOrientation)
        }
    }
}
