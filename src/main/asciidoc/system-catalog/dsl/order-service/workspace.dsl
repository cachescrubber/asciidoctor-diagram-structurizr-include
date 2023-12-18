workspace extends ../catalog.dsl {
    !identifiers hierarchical

    configuration {
        scope softwaresystem
    }

    name "order-service"
    description "Order Service Workspace"

    model {
        !ref orderService {
            webapp = container "Orders UI"
            database = container "Orders Database"
            
            customer -> webapp "Makes orders using"
            webapp -> customerService "Gets customer data from" "JSON/HTTPS"
            webapp -> database "Reads from and writes to"
        }
    }
    
    views {
        systemContext orderService "OrderService-SystemContext" {
            include *
            autolayout lr
        }

        container orderService "OrderService-Containers" {
            include *
            autolayout lr
        }
    }
    
}