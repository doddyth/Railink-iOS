//
//  SwinjectStoryboard+Setup.swift
//  Railink
//
//  Created by Doddy on 6/17/16.
//  Copyright © 2016 Doddy. All rights reserved.
//

import Foundation
import Swinject

extension SwinjectStoryboard {
    class func setup() {
        registerStoryboards()
        
        registerAdapters()
        
        registerInteractors()
        
        registerViewModels()
    }
    
    class func resolveDefault<Service>(service: Service.Type) -> Service? {
        return SwinjectStoryboard.defaultContainer.resolve(service)
    }
    
    private class func registerStoryboards() {
    
    }
    
    private class func registerAdapters() {
        
    }
    
    private class func registerInteractors() {
        
    }
    
    private class func registerViewModels() {
        
    }
}
