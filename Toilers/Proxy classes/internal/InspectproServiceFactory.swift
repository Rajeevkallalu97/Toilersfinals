//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

internal class InspectproServiceFactory {
    static func registerAll() throws -> Void {
        InspectproServiceMetadata.EntityTypes.allComponentsType.registerFactory(ObjectFactory.with(create: { AllComponentsType(withDefaults: false) }, createWithDecoder: { d in try AllComponentsType(from: d) } ))
        InspectproServiceMetadata.EntityTypes.allocatedListType.registerFactory(ObjectFactory.with(create: { AllocatedListType(withDefaults: false) }, createWithDecoder: { d in try AllocatedListType(from: d) } ))
        InspectproServiceMetadata.EntityTypes.inspectedListType.registerFactory(ObjectFactory.with(create: { InspectedListType(withDefaults: false) }, createWithDecoder: { d in try InspectedListType(from: d) } ))
        InspectproServiceMetadata.EntityTypes.inspectorType.registerFactory(ObjectFactory.with(create: { InspectorType(withDefaults: false) }, createWithDecoder: { d in try InspectorType(from: d) } ))
        InspectproServiceMetadata.EntityTypes.supervisorType.registerFactory(ObjectFactory.with(create: { SupervisorType(withDefaults: false) }, createWithDecoder: { d in try SupervisorType(from: d) } ))
        InspectproServiceStaticResolver.resolve()
    }
}
