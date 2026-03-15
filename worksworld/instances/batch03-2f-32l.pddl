; problem: site1-wfc2-free-32l
; domain: worksworld-simplified
; 1 site, 32 intrasite links, 2 workflow components, linear chain, free goal, multi-link

(define (problem site1-wfc2-free-32l)(:domain worksworld-simplified)

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
    link-cloud1-cloud1-1 link-cloud1-cloud1-2 link-cloud1-cloud1-3 link-cloud1-cloud1-4 link-cloud1-cloud1-5 link-cloud1-cloud1-6 link-cloud1-cloud1-7 link-cloud1-cloud1-8 link-cloud1-cloud1-9 link-cloud1-cloud1-10 link-cloud1-cloud1-11 link-cloud1-cloud1-12 link-cloud1-cloud1-13 link-cloud1-cloud1-14 link-cloud1-cloud1-15 link-cloud1-cloud1-16 link-cloud1-cloud1-17 link-cloud1-cloud1-18 link-cloud1-cloud1-19 link-cloud1-cloud1-20 link-cloud1-cloud1-21 link-cloud1-cloud1-22 link-cloud1-cloud1-23 link-cloud1-cloud1-24 link-cloud1-cloud1-25 link-cloud1-cloud1-26 link-cloud1-cloud1-27 link-cloud1-cloud1-28 link-cloud1-cloud1-29 link-cloud1-cloud1-30 link-cloud1-cloud1-31 link-cloud1-cloud1-32 - direct_link

    ; available interfaces
    ; Single interface per site
    ; Clouds interfaces
    dpi-cloud1 - dpi
    dsi-cloud1 - dsi    
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
    (has_input dc0 dsi-cloud1) ; sensor data input
    (has_data dc0 dsi-cloud1 dc0 dsi-cloud1)
    (scheduled_on dc0 dsi-cloud1) ; pre-scheduled

    ; dc0 - msg metrics
    (= (msg_actual_rate dc0 dsi-cloud1) 57) ; 57 msg/s
    (= (msg_max_rate dc0) 120) ; max possible msg/s
    
    ; dc0 - work_amounts
    (= (work_amount dc0 config) 0.000498046875) ; config size in MB
    (= (work_amount dc0 storage) 434.53125000000006) ; storage requirements (MB): 0.001005859375 MB/msg * 120 msg/s * 3600s

    ; dc1 - data component
    (type_of dc1 dt1) ; data type of dt1
    (available_at dc1 config cloud1) ; config is at cloud1

    ; dc1 - msg metrics
    (= (msg_max_rate dc1) 123) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 661.60546875) ; storage requirements (MB): 0.001494140625 MB/msg * 123 msg/s * 3600s


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
    (= (resource_total dpi-cloud1 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1 compute) 56200) ; 56 cores available
    (available_at dpi-cloud1 compute cloud1)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1 storage) 67780) ; 67780 MB available
    (available_at dsi-cloud1 storage cloud1)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-1 network) 100) ; 100MB/s
    (= (resource_available link-cloud1-cloud1-1 network) 56) ; 56MB/s
    (= (network_latency link-cloud1-cloud1-1) 0.007) ; 7ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-2 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-2 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1-2 network) 51576) ; 51576MB/s
    (= (network_latency link-cloud1-cloud1-2) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-3 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-3 network) 100000) ; 100000MB/s
    (= (resource_available link-cloud1-cloud1-3 network) 65440) ; 65440MB/s
    (= (network_latency link-cloud1-cloud1-3) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-4 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-4 network) 85000) ; 85000MB/s
    (= (resource_available link-cloud1-cloud1-4 network) 59874) ; 59874MB/s
    (= (network_latency link-cloud1-cloud1-4) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-5 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-5 network) 85000) ; 85000MB/s
    (= (resource_available link-cloud1-cloud1-5 network) 75514) ; 75514MB/s
    (= (network_latency link-cloud1-cloud1-5) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-6 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-6 network) 100000) ; 100000MB/s
    (= (resource_available link-cloud1-cloud1-6 network) 64600) ; 64600MB/s
    (= (network_latency link-cloud1-cloud1-6) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-7 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-7 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1-7 network) 49296) ; 49296MB/s
    (= (network_latency link-cloud1-cloud1-7) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-8 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-8 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1-8 network) 46680) ; 46680MB/s
    (= (network_latency link-cloud1-cloud1-8) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-9 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-9 network) 55000) ; 55000MB/s
    (= (resource_available link-cloud1-cloud1-9 network) 35024) ; 35024MB/s
    (= (network_latency link-cloud1-cloud1-9) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-10 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-10 network) 85000) ; 85000MB/s
    (= (resource_available link-cloud1-cloud1-10 network) 74902) ; 74902MB/s
    (= (network_latency link-cloud1-cloud1-10) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-11 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-11 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-cloud1-11 network) 38080) ; 38080MB/s
    (= (network_latency link-cloud1-cloud1-11) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-12 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-12 network) 70000) ; 70000MB/s
    (= (resource_available link-cloud1-cloud1-12 network) 41748) ; 41748MB/s
    (= (network_latency link-cloud1-cloud1-12) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-13 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-13 network) 65000) ; 65000MB/s
    (= (resource_available link-cloud1-cloud1-13 network) 51974) ; 51974MB/s
    (= (network_latency link-cloud1-cloud1-13) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-14 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-14 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-cloud1-14 network) 27180) ; 27180MB/s
    (= (network_latency link-cloud1-cloud1-14) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-15 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-15 network) 65000) ; 65000MB/s
    (= (resource_available link-cloud1-cloud1-15 network) 39728) ; 39728MB/s
    (= (network_latency link-cloud1-cloud1-15) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-16 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-16 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-cloud1-16 network) 42820) ; 42820MB/s
    (= (network_latency link-cloud1-cloud1-16) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-17 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-17 network) 75000) ; 75000MB/s
    (= (resource_available link-cloud1-cloud1-17 network) 58980) ; 58980MB/s
    (= (network_latency link-cloud1-cloud1-17) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-18 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-18 network) 70000) ; 70000MB/s
    (= (resource_available link-cloud1-cloud1-18 network) 62916) ; 62916MB/s
    (= (network_latency link-cloud1-cloud1-18) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-19 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-19 network) 90000) ; 90000MB/s
    (= (resource_available link-cloud1-cloud1-19 network) 76428) ; 76428MB/s
    (= (network_latency link-cloud1-cloud1-19) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-20 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-20 network) 80000) ; 80000MB/s
    (= (resource_available link-cloud1-cloud1-20 network) 62112) ; 62112MB/s
    (= (network_latency link-cloud1-cloud1-20) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-21 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-21 network) 90000) ; 90000MB/s
    (= (resource_available link-cloud1-cloud1-21 network) 45252) ; 45252MB/s
    (= (network_latency link-cloud1-cloud1-21) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-22 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-22 network) 85000) ; 85000MB/s
    (= (resource_available link-cloud1-cloud1-22 network) 64430) ; 64430MB/s
    (= (network_latency link-cloud1-cloud1-22) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-23 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-23 network) 70000) ; 70000MB/s
    (= (resource_available link-cloud1-cloud1-23 network) 43540) ; 43540MB/s
    (= (network_latency link-cloud1-cloud1-23) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-24 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-24 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-cloud1-24 network) 40680) ; 40680MB/s
    (= (network_latency link-cloud1-cloud1-24) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-25 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-25 network) 100000) ; 100000MB/s
    (= (resource_available link-cloud1-cloud1-25 network) 76920) ; 76920MB/s
    (= (network_latency link-cloud1-cloud1-25) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-26 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-26 network) 65000) ; 65000MB/s
    (= (resource_available link-cloud1-cloud1-26 network) 33098) ; 33098MB/s
    (= (network_latency link-cloud1-cloud1-26) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-27 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-27 network) 70000) ; 70000MB/s
    (= (resource_available link-cloud1-cloud1-27 network) 42588) ; 42588MB/s
    (= (network_latency link-cloud1-cloud1-27) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-28 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-28 network) 75000) ; 75000MB/s
    (= (resource_available link-cloud1-cloud1-28 network) 64950) ; 64950MB/s
    (= (network_latency link-cloud1-cloud1-28) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-29 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-29 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-cloud1-29 network) 36120) ; 36120MB/s
    (= (network_latency link-cloud1-cloud1-29) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-30 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-30 network) 100000) ; 100000MB/s
    (= (resource_available link-cloud1-cloud1-30 network) 67320) ; 67320MB/s
    (= (network_latency link-cloud1-cloud1-30) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-31 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-31 network) 75000) ; 75000MB/s
    (= (resource_available link-cloud1-cloud1-31 network) 56850) ; 56850MB/s
    (= (network_latency link-cloud1-cloud1-31) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-32 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-32 network) 70000) ; 70000MB/s
    (= (resource_available link-cloud1-cloud1-32 network) 52360) ; 52360MB/s
    (= (network_latency link-cloud1-cloud1-32) 0.001) ; 1ms


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
          (has_data dc1 ?dsi dc0 dsi-cloud1)
        )
      )
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)