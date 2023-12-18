workspace extends ../catalog.dsl {

    name "system-landscape"
    description "C4 Model System Catalog Landscape"

    configuration {
        scope landscape
    }

    !plugin FindRelationshipsPlugin {
        filename ../order-service/workspace.dsl
    }
    
    !plugin FindRelationshipsPlugin {

        filename ../invoice-service/workspace.dsl
    }

    model {

        !ref customerService {
          url https://structurizr.local/workspace/7/diagrams#CustomerService-SystemContext
        }
        !ref orderService {
          url https://structurizr.local/workspace/9/diagrams#OrderService-SystemContext
        }
    }

    views {
        systemLandscape "SystemLandscape" {
            default
            include *
        }
    }
    
}