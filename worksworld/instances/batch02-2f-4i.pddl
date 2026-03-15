; problem: site1-wfc2-free-4i
; domain: worksworld-simplified
; 1 site, 4 dpis and dsis per site, 2 workflow components, linear chain, free goal, multi-interface

(define (problem site1-wfc2-free-4i)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site
    ; workflow components
    dc0 dc1 - data_component
    dp0 - processing_component

    ; data component types:
    dt0 dt1 - data_component_type

    ; processing component types:
    pt0 - processing_component_type

    ; network links - direct links
    link-cloud1-cloud1 - direct_link

    ; available interfaces
    ; Multi-interface mode: 4 interfaces per site
    dpi-cloud1-1 dpi-cloud1-2 dpi-cloud1-3 dpi-cloud1-4 - dpi
    dsi-cloud1-1 dsi-cloud1-2 dsi-cloud1-3 dsi-cloud1-4 - dsi
    
  )

  (:init
    ;NOTE: we use the following units in this file:
    ; - Time: Seconds (s)
    ; - Storage, Message Size, Config Size: Megabytes (MB)
    ; - Bandwidth: MB/s (megabytes per second)
    ; - Compute: millicores
    ; - Message Rate: msg/s

    ;;;;;;;;;;;;;;;;;;;;;;;;
    ; data_components_types
    ;;;;;;;;;;;;;;;;;;;;;;;;


    ; dct dt0
    (= (msg_size dt0) 0.001005859375) ; 0.001005859375MB per message
    ; dct dt1
    (= (msg_size dt1) 0.001494140625) ; 0.001494140625MB per message

    ;;;;;;;;;;;;;;;;;;;;;;
    ; data_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dc0 - data component
    (type_of dc0 dt0) ; data type of dt0
    (available_at dc0 config cloud1) ; config is at cloud1
    (fixed dc0) ; fixed component
    (has_input dc0 dsi-cloud1-1) ; sensor data input
    (has_data dc0 dsi-cloud1-1 dc0 dsi-cloud1-1)
    (scheduled_on dc0 dsi-cloud1-1) ; pre-scheduled

    ; dc0 - msg metrics
    (= (msg_actual_rate dc0 dsi-cloud1-1) 57) ; 57 msg/s
    (= (msg_max_rate dc0) 120) ; max possible msg/s
    
    ; dc0 - work_amounts
    (= (work_amount dc0 config) 0.000498046875) ; config size in MB
    (= (work_amount dc0 storage) 434.53125000000006) ; storage requirements (MB): 0.001005859375 MB/msg * 120 msg/s * 3600s

    ; dc1 - data component
    (type_of dc1 dt1) ; data type of dt1
    (available_at dc1 config cloud1) ; config is at cloud1

    ; dc1 - msg metrics
    (= (msg_max_rate dc1) 125) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 672.36328125) ; storage requirements (MB): 0.001494140625 MB/msg * 125 msg/s * 3600s


    ;;;;;;;;;;;;;;;;;;;;;;
    ;processing_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dp0 - processing component
    (type_of dp0 pt0)
    (= (msg_max_rate dp0) 121) ; max possible msg/s
    (= (work_amount dp0 compute) 4671) ; compute requirements
    (= (work_amount dp0 config) 0.0019921875) ; config size
    (available_at dp0 config cloud1) ; available at cloud1

    (input_format dp0 dt0)
    (output_format dp0 dt1)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1-1 (cloud compute resources)
    (= (resource_total dpi-cloud1-1 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-1 compute) 65200) ; 65 cores available
    (available_at dpi-cloud1-1 compute cloud1)
    ; dpi-cloud1-2 (cloud compute resources)
    (= (resource_total dpi-cloud1-2 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-2 compute) 56360) ; 56 cores available
    (available_at dpi-cloud1-2 compute cloud1)
    ; dpi-cloud1-3 (cloud compute resources)
    (= (resource_total dpi-cloud1-3 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-3 compute) 85480) ; 85 cores available
    (available_at dpi-cloud1-3 compute cloud1)
    ; dpi-cloud1-4 (cloud compute resources)
    (= (resource_total dpi-cloud1-4 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-4 compute) 59400) ; 59 cores available
    (available_at dpi-cloud1-4 compute cloud1)

    
    ; dsi-cloud1-1 (cloud storage resources)
    (= (resource_total dsi-cloud1-1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-1 storage) 76400) ; 76400 MB available
    (available_at dsi-cloud1-1 storage cloud1)
    
    ; dsi-cloud1-2 (cloud storage resources)
    (= (resource_total dsi-cloud1-2 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-2 storage) 79954) ; 79954 MB available
    (available_at dsi-cloud1-2 storage cloud1)
    
    ; dsi-cloud1-3 (cloud storage resources)
    (= (resource_total dsi-cloud1-3 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-3 storage) 56684) ; 56684 MB available
    (available_at dsi-cloud1-3 storage cloud1)
    
    ; dsi-cloud1-4 (cloud storage resources)
    (= (resource_total dsi-cloud1-4 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-4 storage) 51649) ; 51649 MB available
    (available_at dsi-cloud1-4 storage cloud1)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (cloud-to-cloud)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1 network) 32087) ; 32087MB/s
    (= (network_latency link-cloud1-cloud1) 0.005) ; 5ms


    ;;;;;;;;;;;;;;;;;;;;;;
    ; metrics
    ;;;;;;;;;;;;;;;;;;;;;;
    (= (total-cost) 0) ;track action costs
    (= (total-cost-max) 100) ; arbitrary

    (= (workflow-makespan) 0) ; track latency of one message through workflow (makespan)
    (= (workflow-makespan-max) 1); seconds

    ;;;;;;;;;;;;;;;;;;;;;;
    ; cost weighting
    ;;;;;;;;;;;;;;;;;;;;;;
    (= (work-cost-weight config) 1)
    (= (work-cost-weight storage) 1)
    (= (work-cost-weight compute) 1)
    (= (work-cost-weight network) 1)  
  )

  (:goal
    ; Connect components through processing pipeline
    (and
      (has_data dc1 dsi-cloud1-4 dc0 dsi-cloud1-1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)