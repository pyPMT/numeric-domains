; problem: site8-wfc2-free-8s
; domain: worksworld-simplified
; 8 sites, star topology (1 cloud hub + 7 region peripherals), 2 workflow components, linear chain, free goal, multi-site

(define (problem site8-wfc2-free-8s)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site    ; Regions sites
    region1 region2 region3 region4 region5 region6 region7 - site
    ; workflow components
    dc0 dc1 - data_component
    dp0 - processing_component

    ; data component types:
    dt0 dt1 - data_component_type

    ; processing component types:
    pt0 - processing_component_type

    ; network links - direct links
    link-cloud1-cloud1 link-region1-region1 link-cloud1-region1 link-region2-region2 link-cloud1-region2 link-region3-region3 link-cloud1-region3 link-region4-region4 link-cloud1-region4 link-region5-region5 link-cloud1-region5 link-region6-region6 link-cloud1-region6 link-region7-region7 link-cloud1-region7 - direct_link

    ; available interfaces
    ; Single interface per site
    ; Clouds interfaces
    dpi-cloud1 - dpi
    dsi-cloud1 - dsi    ; Regions interfaces
    dpi-region1 dpi-region2 dpi-region3 dpi-region4 dpi-region5 dpi-region6 dpi-region7 - dpi
    dsi-region1 dsi-region2 dsi-region3 dsi-region4 dsi-region5 dsi-region6 dsi-region7 - dsi    
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
    (available_at dc0 config region1) ; config is at region1
    (fixed dc0) ; fixed component
    (has_input dc0 dsi-region1) ; sensor data input
    (has_data dc0 dsi-region1 dc0 dsi-region1)
    (scheduled_on dc0 dsi-region1) ; pre-scheduled

    ; dc0 - msg metrics
    (= (msg_actual_rate dc0 dsi-region1) 57) ; 57 msg/s
    (= (msg_max_rate dc0) 120) ; max possible msg/s
    
    ; dc0 - work_amounts
    (= (work_amount dc0 config) 0.000498046875) ; config size in MB
    (= (work_amount dc0 storage) 434.53125000000006) ; storage requirements (MB): 0.001005859375 MB/msg * 120 msg/s * 3600s

    ; dc1 - data component
    (type_of dc1 dt1) ; data type of dt1
    (available_at dc1 config cloud1) ; config is at cloud1

    ; dc1 - msg metrics
    (= (msg_max_rate dc1) 126) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 677.7421875) ; storage requirements (MB): 0.001494140625 MB/msg * 126 msg/s * 3600s


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

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 200000) ; 200 cores
    (= (resource_available dpi-cloud1 compute) 109520) ; 109 cores available
    (available_at dpi-cloud1 compute cloud1)
    ; dpi-region1 (region compute resources)
    (= (resource_total dpi-region1 compute) 100000) ; 100 cores
    (= (resource_available dpi-region1 compute) 57600) ; 57 cores available
    (available_at dpi-region1 compute region1)
    ; dpi-region2 (region compute resources)
    (= (resource_total dpi-region2 compute) 100000) ; 100 cores
    (= (resource_available dpi-region2 compute) 63600) ; 63 cores available
    (available_at dpi-region2 compute region2)
    ; dpi-region3 (region compute resources)
    (= (resource_total dpi-region3 compute) 100000) ; 100 cores
    (= (resource_available dpi-region3 compute) 67520) ; 67 cores available
    (available_at dpi-region3 compute region3)
    ; dpi-region4 (region compute resources)
    (= (resource_total dpi-region4 compute) 100000) ; 100 cores
    (= (resource_available dpi-region4 compute) 67320) ; 67 cores available
    (available_at dpi-region4 compute region4)
    ; dpi-region5 (region compute resources)
    (= (resource_total dpi-region5 compute) 100000) ; 100 cores
    (= (resource_available dpi-region5 compute) 65800) ; 65 cores available
    (available_at dpi-region5 compute region5)
    ; dpi-region6 (region compute resources)
    (= (resource_total dpi-region6 compute) 100000) ; 100 cores
    (= (resource_available dpi-region6 compute) 59519) ; 59 cores available
    (available_at dpi-region6 compute region6)
    ; dpi-region7 (region compute resources)
    (= (resource_total dpi-region7 compute) 100000) ; 100 cores
    (= (resource_available dpi-region7 compute) 84120) ; 84 cores available
    (available_at dpi-region7 compute region7)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 190730) ; 190730 MB
    (= (resource_available dsi-cloud1 storage) 140758) ; 140758 MB available
    (available_at dsi-cloud1 storage cloud1)
    
    ; dsi-region1 (region storage resources)
    (= (resource_total dsi-region1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region1 storage) 59464) ; 59464 MB available
    (available_at dsi-region1 storage region1)
    
    ; dsi-region2 (region storage resources)
    (= (resource_total dsi-region2 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region2 storage) 78657) ; 78657 MB available
    (available_at dsi-region2 storage region2)
    
    ; dsi-region3 (region storage resources)
    (= (resource_total dsi-region3 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region3 storage) 59545) ; 59545 MB available
    (available_at dsi-region3 storage region3)
    
    ; dsi-region4 (region storage resources)
    (= (resource_total dsi-region4 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region4 storage) 66335) ; 66335 MB available
    (available_at dsi-region4 storage region4)
    
    ; dsi-region5 (region storage resources)
    (= (resource_total dsi-region5 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region5 storage) 66221) ; 66221 MB available
    (available_at dsi-region5 storage region5)
    
    ; dsi-region6 (region storage resources)
    (= (resource_total dsi-region6 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region6 storage) 67785) ; 67785 MB available
    (available_at dsi-region6 storage region6)
    
    ; dsi-region7 (region storage resources)
    (= (resource_total dsi-region7 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region7 storage) 72401) ; 72401 MB available
    (available_at dsi-region7 storage region7)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (intrasite)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1 network) 36576) ; 36576MB/s
    (= (network_latency link-cloud1-cloud1) 0.005) ; 5ms
    ; Direct link - region1 to region1 (intrasite)
    (linked link-region1-region1 region1 region1)
    (= (resource_total link-region1-region1 network) 20000) ; 20000MB/s
    (= (resource_available link-region1-region1 network) 13208) ; 13208MB/s
    (= (network_latency link-region1-region1) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region1 (inter-site)
    (linked link-cloud1-region1 cloud1 region1)
    (linked link-cloud1-region1 region1 cloud1)
    (= (resource_total link-cloud1-region1 network) 1500) ; 1500MB/s
    (= (resource_available link-cloud1-region1 network) 1178) ; 1178MB/s
    (= (network_latency link-cloud1-region1) 0.031) ; 30ms
    ; Direct link - region2 to region2 (intrasite)
    (linked link-region2-region2 region2 region2)
    (= (resource_total link-region2-region2 network) 10000) ; 10000MB/s
    (= (resource_available link-region2-region2 network) 5944) ; 5944MB/s
    (= (network_latency link-region2-region2) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region2 (inter-site)
    (linked link-cloud1-region2 cloud1 region2)
    (linked link-cloud1-region2 region2 cloud1)
    (= (resource_total link-cloud1-region2 network) 40000) ; 40000MB/s
    (= (resource_available link-cloud1-region2 network) 23487) ; 23487MB/s
    (= (network_latency link-cloud1-region2) 0.022) ; 22ms
    ; Direct link - region3 to region3 (intrasite)
    (linked link-region3-region3 region3 region3)
    (= (resource_total link-region3-region3 network) 50000) ; 50000MB/s
    (= (resource_available link-region3-region3 network) 41840) ; 41840MB/s
    (= (network_latency link-region3-region3) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region3 (inter-site)
    (linked link-cloud1-region3 cloud1 region3)
    (linked link-cloud1-region3 region3 cloud1)
    (= (resource_total link-cloud1-region3 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region3 network) 20472) ; 20472MB/s
    (= (network_latency link-cloud1-region3) 0.021) ; 21ms
    ; Direct link - region4 to region4 (intrasite)
    (linked link-region4-region4 region4 region4)
    (= (resource_total link-region4-region4 network) 20000) ; 20000MB/s
    (= (resource_available link-region4-region4 network) 10376) ; 10376MB/s
    (= (network_latency link-region4-region4) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region4 (inter-site)
    (linked link-cloud1-region4 cloud1 region4)
    (linked link-cloud1-region4 region4 cloud1)
    (= (resource_total link-cloud1-region4 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region4 network) 23310) ; 23310MB/s
    (= (network_latency link-cloud1-region4) 0.030) ; 29ms
    ; Direct link - region5 to region5 (intrasite)
    (linked link-region5-region5 region5 region5)
    (= (resource_total link-region5-region5 network) 40000) ; 40000MB/s
    (= (resource_available link-region5-region5 network) 31648) ; 31648MB/s
    (= (network_latency link-region5-region5) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region5 (inter-site)
    (linked link-cloud1-region5 cloud1 region5)
    (linked link-cloud1-region5 region5 cloud1)
    (= (resource_total link-cloud1-region5 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region5 network) 25434) ; 25434MB/s
    (= (network_latency link-cloud1-region5) 0.027) ; 27ms
    ; Direct link - region6 to region6 (intrasite)
    (linked link-region6-region6 region6 region6)
    (= (resource_total link-region6-region6 network) 45000) ; 45000MB/s
    (= (resource_available link-region6-region6 network) 28044) ; 28044MB/s
    (= (network_latency link-region6-region6) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region6 (inter-site)
    (linked link-cloud1-region6 cloud1 region6)
    (linked link-cloud1-region6 region6 cloud1)
    (= (resource_total link-cloud1-region6 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region6 network) 14270) ; 14270MB/s
    (= (network_latency link-cloud1-region6) 0.033) ; 33ms
    ; Direct link - region7 to region7 (intrasite)
    (linked link-region7-region7 region7 region7)
    (= (resource_total link-region7-region7 network) 45000) ; 45000MB/s
    (= (resource_available link-region7-region7 network) 26028) ; 26028MB/s
    (= (network_latency link-region7-region7) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region7 (inter-site)
    (linked link-cloud1-region7 cloud1 region7)
    (linked link-cloud1-region7 region7 cloud1)
    (= (resource_total link-cloud1-region7 network) 15000) ; 15000MB/s
    (= (resource_available link-cloud1-region7 network) 9246) ; 9246MB/s
    (= (network_latency link-cloud1-region7) 0.028) ; 27ms


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
      (exists (?dsi - dsi)
        (and
          (has_data dc1 ?dsi dc0 dsi-region1)
        )
      )
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)