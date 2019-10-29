//
//  AllocateComponentViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 28/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon

class AllocateComponentViewController: UIViewController {
 let supervisor = HomePageViewController()
    
    
    @IBOutlet weak var ComponentId: UITextField!
    
    @IBOutlet weak var InspectorId: UITextField!
    
    @IBOutlet weak var Date: UITextField!
    
    
    @IBOutlet weak var SearchId: UITextField!
    
    @IBOutlet weak var SearchedComponentId: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Search(_ sender: Any) {
         loginSupervisor1(supervisor.serviceURL, supervisor.myContext.sapURLSession)
    }
    
    @IBAction func AllocateWork(_ sender: Any) {
        loginSupervisor(supervisor.serviceURL, supervisor.myContext.sapURLSession)
    }
    
    
    //new entity allocation
    private func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
            let componentId = DataQuery()
                .select(AllComponentsType.id, AllComponentsType.name, AllComponentsType.systemName, AllComponentsType.make, AllComponentsType.model, AllComponentsType.partNumber, AllComponentsType.serialNumber, AllComponentsType.barCode,AllComponentsType.compartment,AllComponentsType.condition)
                .where(AllComponentsType.id==(ComponentId.text!))
            
            let inspectorId = DataQuery()
                .select(InspectorType.id)
                .where(InspectorType.id==(InspectorId.text!))
            
            supervisor.fetchAllComponents(matching: componentId) { comId, error in
                let comId = comId
                if comId!.count>0 {
                    supervisor.fetchInspector(matching: inspectorId) { insId, error in
                        let insId = insId
                        if insId!.count>0 {
                        if self.InspectorId.text == insId?[0].id! {
                           
                            //add entity
                            var _entity: AllocatedListType?
                            var entity: AllocatedListType {
                                get {
                                    if _entity == nil {
                                        _entity = createEntityWithDefaultValues()
                                    }
                                    return _entity!
                                }
                                set {
                                    _entity = newValue
                                }
                            }
                            
                            supervisor.createEntity(entity){error in
                            }
                            func createEntityWithDefaultValues() -> AllocatedListType {
                                let newEntity = AllocatedListType()
                                
                                newEntity.id = comId?[0].id
                                newEntity.inspectorID = insId?[0].id
                                newEntity.name = comId?[0].name
                                newEntity.systemName = comId?[0].systemName
                                newEntity.make = comId?[0].make
                                newEntity.model = comId?[0].model
                                newEntity.partNumber = comId?[0].partNumber
                                newEntity.serialNumber = comId?[0].serialNumber
                                newEntity.barCode = comId?[0].barCode
                                newEntity.compartment = comId?[0].compartment
                                newEntity.condition = comId?[0].condition
                                if newEntity.id == nil || newEntity.id!.isEmpty {
                                   
                                }
                               
                                return newEntity
                            }
                            
                            
                            }
                        }
                        else{
                            Alert.showIdInvalid(on: self)
                            print("invalid pass")
                        }
                    }
                    
                }
                else{
                    Alert.showIdInvalid(on: self)
                    print("invalid id")
                }
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    
    
    
    private func loginSupervisor1(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let inspector = InspectproService(provider: oDataProvider)
        
        let queryName = DataQuery()
            .select(AllComponentsType.name)
            .where(AllComponentsType.name==(SearchId.text!))
        
        let queryId = DataQuery()
            .select(AllComponentsType.id)
            .where(AllComponentsType.name==(SearchId.text!))
        
        inspector.fetchAllComponents(matching: queryName) { name, error in
            let name = name
            if name!.count>0 {
                inspector.fetchAllComponents(matching: queryId) { id, error in
                    let id = id
                    self.SearchedComponentId.text = id?[0].id
                        print("success ")
                }
                
            }
            else{
                Alert.showIdInvalid(on: self)
                print("invalid id")
            }
        }
    }
}
    

    

    
    
    


