workspace extends ../catalog.dsl {
    name "customer-service"
    description "Customer Service Workspace"

    configuration {
        scope softwaresystem
    }

    model {
        !ref customerService {
            api = container "Customer API"
            database = container "Customer Database"
            
            api -> database "Reads from and writes to"
        }
    }
    
    views {
        systemContext customerService "CustomerService-SystemContext" {
            include *
            autolayout lr
        }

        container customerService "CustomerService-Containers" {
            include *
            autolayout lr
        }
    }
    
}