workspace "system-catalog" "C4 Model System Catalog Example" {

    !identifiers hierarchical
    model {
        customer = person "Customer"

        group orderManagement {
          orderService = softwareSystem "Order Service"
          orderBackend = softwareSystem "Order Bäckend"
        }
        invoiceService = softwareSystem "Invoice Service"
        customerService = softwareSystem "Customer Service"
    }

    views {
        styles {
            element "Group" {
              color green
              stroke red
              strokeWidth 10
              fontSize 32
              opacity 100
            }
            element "Person" {
                shape person
            }
        }
    }
        
}