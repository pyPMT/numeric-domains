; problem: site1-wfc2-free-16l
; domain: worksworld-simplified
; 1 site, 16 intrasite links, 2 workflow components, linear chain, free goal, multi-link

(define (problem site1-wfc2-free-16l)(:domain worksworld-simplified)

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
    link-cloud1-cloud1-1 link-cloud1-cloud1-2 link-cloud1-cloud1-3 link-cloud1-cloud1-4 link-cloud1-cloud1-5 link-cloud1-cloud1-6 link-cloud1-cloud1-7 link-cloud1-cloud1-8 link-cloud1-cloud1-9 link-cloud1-cloud1-10 link-cloud1-cloud1-11 link-cloud1-cloud1-12 link-cloud1-cloud1-13 link-cloud1-cloud1-14 link-cloud1-cloud1-15 link-cloud1-cloud1-16 - direct_link

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
    (= (msg_max_rate dc1) 128) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 688.5) ; storage requirements (MB): 0.001494140625 MB/msg * 128 msg/s * 3600s


    ;;;;;;;;;;;;;;;;;;;;;;
    ;processing_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dp0 - processing component
    (type_of dp0 pt0)
    (= (msg_max_rate dp0) 124) ; max possible msg/s
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
    (= (resource_total link-cloud1-cloud1-1 network) 150) ; 150MB/s
    (= (resource_available link-cloud1-cloud1-1 network) 84) ; 84MB/s
    (= (network_latency link-cloud1-cloud1-1) 0.007) ; 6ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-2 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-2 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1-2 network) 51576) ; 51576MB/s
    (= (network_latency link-cloud1-cloud1-2) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-3 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-3 network) 100000) ; 100000MB/s
    (= (resource_available link-cloud1-cloud1-3 network) 65440) ; 65440MB/s
    (= (network_latency link-cloud1-cloud1-3) 0.002) ; 1ms
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
    (= (network_latency link-cloud1-cloud1-7) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-8 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-8 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1-8 network) 46680) ; 46680MB/s
    (= (network_latency link-cloud1-cloud1-8) 0.001) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-9 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-9 network) 55000) ; 55000MB/s
    (= (resource_available link-cloud1-cloud1-9 network) 35024) ; 35024MB/s
    (= (network_latency link-cloud1-cloud1-9) 0.002) ; 1ms
    ; Direct link - Intrasite link at cloud1
    (linked link-cloud1-cloud1-10 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1-10 network) 85000) ; 85000MB/s
    (= (resource_available link-cloud1-cloud1-10 network) 74902) ; 74902MB/s
    (= (network_latency link-cloud1-cloud1-10) 0.001) ; 1ms
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
    (= (network_latency link-cloud1-cloud1-16) 0.002) ; 1ms


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