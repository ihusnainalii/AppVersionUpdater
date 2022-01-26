//
//  AppUpdater.swift
//  AppUpdater
//
//  Created by Husnain Ali on 20/10/20.
//  Copyright © 2020 Husnain Ali. All rights reserved.
//

import UIKit

public class AppUpdater {
    
    // MARK: - Variable Declaration
    /// The SSAppUpdator singleton.
    public static let shared = AppUpdater()
    
    private var versionCheck: PerformVersionCheck!
    
    // MARK: - Initializers
    private init() { }
    
     // MARK: - Function
    /// All default parameter are implemented
    /// - Parameters:
    ///   - isForceUpdate: Boolean value check that user wants to forceUpdate or OptionalUpdate.
    ///   - completion: Return Version Information (App Version Info)
    public func performCheck(completion: @escaping (VersionInfo) -> Void ) {
        self.versionCheck = PerformVersionCheck(completion: completion)
    }
}
