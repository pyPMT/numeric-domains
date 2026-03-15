; problem: site1-wfc2-free-32i
; domain: worksworld-simplified
; 1 site, 32 dpis and dsis per site, 2 workflow components, linear chain, free goal, multi-interface

(define (problem site1-wfc2-free-32i)(:domain worksworld-simplified)

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
    ; Multi-interface mode: 32 interfaces per site
    dpi-cloud1-1 dpi-cloud1-2 dpi-cloud1-3 dpi-cloud1-4 dpi-cloud1-5 dpi-cloud1-6 dpi-cloud1-7 dpi-cloud1-8 dpi-cloud1-9 dpi-cloud1-10 dpi-cloud1-11 dpi-cloud1-12 dpi-cloud1-13 dpi-cloud1-14 dpi-cloud1-15 dpi-cloud1-16 dpi-cloud1-17 dpi-cloud1-18 dpi-cloud1-19 dpi-cloud1-20 dpi-cloud1-21 dpi-cloud1-22 dpi-cloud1-23 dpi-cloud1-24 dpi-cloud1-25 dpi-cloud1-26 dpi-cloud1-27 dpi-cloud1-28 dpi-cloud1-29 dpi-cloud1-30 dpi-cloud1-31 dpi-cloud1-32 - dpi
    dsi-cloud1-1 dsi-cloud1-2 dsi-cloud1-3 dsi-cloud1-4 dsi-cloud1-5 dsi-cloud1-6 dsi-cloud1-7 dsi-cloud1-8 dsi-cloud1-9 dsi-cloud1-10 dsi-cloud1-11 dsi-cloud1-12 dsi-cloud1-13 dsi-cloud1-14 dsi-cloud1-15 dsi-cloud1-16 dsi-cloud1-17 dsi-cloud1-18 dsi-cloud1-19 dsi-cloud1-20 dsi-cloud1-21 dsi-cloud1-22 dsi-cloud1-23 dsi-cloud1-24 dsi-cloud1-25 dsi-cloud1-26 dsi-cloud1-27 dsi-cloud1-28 dsi-cloud1-29 dsi-cloud1-30 dsi-cloud1-31 dsi-cloud1-32 - dsi
    
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
    (= (msg_max_rate dc1) 123) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 661.60546875) ; storage requirements (MB): 0.001494140625 MB/msg * 123 msg/s * 3600s


    ;;;;;;;;;;;;;;;;;;;;;;
    ;processing_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dp0 - processing component
    (type_of dp0 pt0)
    (= (msg_max_rate dp0) 120) ; max possible msg/s
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
    ; dpi-cloud1-5 (cloud compute resources)
    (= (resource_total dpi-cloud1-5 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-5 compute) 60360) ; 60 cores available
    (available_at dpi-cloud1-5 compute cloud1)
    ; dpi-cloud1-6 (cloud compute resources)
    (= (resource_total dpi-cloud1-6 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-6 compute) 50039) ; 50 cores available
    (available_at dpi-cloud1-6 compute cloud1)
    ; dpi-cloud1-7 (cloud compute resources)
    (= (resource_total dpi-cloud1-7 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-7 compute) 89600) ; 89 cores available
    (available_at dpi-cloud1-7 compute cloud1)
    ; dpi-cloud1-8 (cloud compute resources)
    (= (resource_total dpi-cloud1-8 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-8 compute) 69720) ; 69 cores available
    (available_at dpi-cloud1-8 compute cloud1)
    ; dpi-cloud1-9 (cloud compute resources)
    (= (resource_total dpi-cloud1-9 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-9 compute) 63040) ; 63 cores available
    (available_at dpi-cloud1-9 compute cloud1)
    ; dpi-cloud1-10 (cloud compute resources)
    (= (resource_total dpi-cloud1-10 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-10 compute) 83520) ; 83 cores available
    (available_at dpi-cloud1-10 compute cloud1)
    ; dpi-cloud1-11 (cloud compute resources)
    (= (resource_total dpi-cloud1-11 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-11 compute) 73360) ; 73 cores available
    (available_at dpi-cloud1-11 compute cloud1)
    ; dpi-cloud1-12 (cloud compute resources)
    (= (resource_total dpi-cloud1-12 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-12 compute) 82360) ; 82 cores available
    (available_at dpi-cloud1-12 compute cloud1)
    ; dpi-cloud1-13 (cloud compute resources)
    (= (resource_total dpi-cloud1-13 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-13 compute) 58040) ; 58 cores available
    (available_at dpi-cloud1-13 compute cloud1)
    ; dpi-cloud1-14 (cloud compute resources)
    (= (resource_total dpi-cloud1-14 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-14 compute) 78760) ; 78 cores available
    (available_at dpi-cloud1-14 compute cloud1)
    ; dpi-cloud1-15 (cloud compute resources)
    (= (resource_total dpi-cloud1-15 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-15 compute) 83800) ; 83 cores available
    (available_at dpi-cloud1-15 compute cloud1)
    ; dpi-cloud1-16 (cloud compute resources)
    (= (resource_total dpi-cloud1-16 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-16 compute) 55240) ; 55 cores available
    (available_at dpi-cloud1-16 compute cloud1)
    ; dpi-cloud1-17 (cloud compute resources)
    (= (resource_total dpi-cloud1-17 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-17 compute) 86920) ; 86 cores available
    (available_at dpi-cloud1-17 compute cloud1)
    ; dpi-cloud1-18 (cloud compute resources)
    (= (resource_total dpi-cloud1-18 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-18 compute) 65440) ; 65 cores available
    (available_at dpi-cloud1-18 compute cloud1)
    ; dpi-cloud1-19 (cloud compute resources)
    (= (resource_total dpi-cloud1-19 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-19 compute) 51759) ; 51 cores available
    (available_at dpi-cloud1-19 compute cloud1)
    ; dpi-cloud1-20 (cloud compute resources)
    (= (resource_total dpi-cloud1-20 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-20 compute) 62960) ; 62 cores available
    (available_at dpi-cloud1-20 compute cloud1)
    ; dpi-cloud1-21 (cloud compute resources)
    (= (resource_total dpi-cloud1-21 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-21 compute) 56880) ; 56 cores available
    (available_at dpi-cloud1-21 compute cloud1)
    ; dpi-cloud1-22 (cloud compute resources)
    (= (resource_total dpi-cloud1-22 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-22 compute) 76040) ; 76 cores available
    (available_at dpi-cloud1-22 compute cloud1)
    ; dpi-cloud1-23 (cloud compute resources)
    (= (resource_total dpi-cloud1-23 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-23 compute) 71640) ; 71 cores available
    (available_at dpi-cloud1-23 compute cloud1)
    ; dpi-cloud1-24 (cloud compute resources)
    (= (resource_total dpi-cloud1-24 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-24 compute) 79960) ; 79 cores available
    (available_at dpi-cloud1-24 compute cloud1)
    ; dpi-cloud1-25 (cloud compute resources)
    (= (resource_total dpi-cloud1-25 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-25 compute) 61600) ; 61 cores available
    (available_at dpi-cloud1-25 compute cloud1)
    ; dpi-cloud1-26 (cloud compute resources)
    (= (resource_total dpi-cloud1-26 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-26 compute) 78800) ; 78 cores available
    (available_at dpi-cloud1-26 compute cloud1)
    ; dpi-cloud1-27 (cloud compute resources)
    (= (resource_total dpi-cloud1-27 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-27 compute) 76680) ; 76 cores available
    (available_at dpi-cloud1-27 compute cloud1)
    ; dpi-cloud1-28 (cloud compute resources)
    (= (resource_total dpi-cloud1-28 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-28 compute) 68280) ; 68 cores available
    (available_at dpi-cloud1-28 compute cloud1)
    ; dpi-cloud1-29 (cloud compute resources)
    (= (resource_total dpi-cloud1-29 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-29 compute) 51440) ; 51 cores available
    (available_at dpi-cloud1-29 compute cloud1)
    ; dpi-cloud1-30 (cloud compute resources)
    (= (resource_total dpi-cloud1-30 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-30 compute) 89800) ; 89 cores available
    (available_at dpi-cloud1-30 compute cloud1)
    ; dpi-cloud1-31 (cloud compute resources)
    (= (resource_total dpi-cloud1-31 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-31 compute) 53000) ; 53 cores available
    (available_at dpi-cloud1-31 compute cloud1)
    ; dpi-cloud1-32 (cloud compute resources)
    (= (resource_total dpi-cloud1-32 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-32 compute) 84520) ; 84 cores available
    (available_at dpi-cloud1-32 compute cloud1)

    
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
    
    ; dsi-cloud1-5 (cloud storage resources)
    (= (resource_total dsi-cloud1-5 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-5 storage) 54358) ; 54358 MB available
    (available_at dsi-cloud1-5 storage cloud1)
    
    ; dsi-cloud1-6 (cloud storage resources)
    (= (resource_total dsi-cloud1-6 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-6 storage) 56379) ; 56379 MB available
    (available_at dsi-cloud1-6 storage cloud1)
    
    ; dsi-cloud1-7 (cloud storage resources)
    (= (resource_total dsi-cloud1-7 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-7 storage) 51649) ; 51649 MB available
    (available_at dsi-cloud1-7 storage cloud1)
    
    ; dsi-cloud1-8 (cloud storage resources)
    (= (resource_total dsi-cloud1-8 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-8 storage) 79076) ; 79076 MB available
    (available_at dsi-cloud1-8 storage cloud1)
    
    ; dsi-cloud1-9 (cloud storage resources)
    (= (resource_total dsi-cloud1-9 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-9 storage) 51840) ; 51840 MB available
    (available_at dsi-cloud1-9 storage cloud1)
    
    ; dsi-cloud1-10 (cloud storage resources)
    (= (resource_total dsi-cloud1-10 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-10 storage) 70455) ; 70455 MB available
    (available_at dsi-cloud1-10 storage cloud1)
    
    ; dsi-cloud1-11 (cloud storage resources)
    (= (resource_total dsi-cloud1-11 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-11 storage) 81060) ; 81060 MB available
    (available_at dsi-cloud1-11 storage cloud1)
    
    ; dsi-cloud1-12 (cloud storage resources)
    (= (resource_total dsi-cloud1-12 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-12 storage) 66946) ; 66946 MB available
    (available_at dsi-cloud1-12 storage cloud1)
    
    ; dsi-cloud1-13 (cloud storage resources)
    (= (resource_total dsi-cloud1-13 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-13 storage) 66908) ; 66908 MB available
    (available_at dsi-cloud1-13 storage cloud1)
    
    ; dsi-cloud1-14 (cloud storage resources)
    (= (resource_total dsi-cloud1-14 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-14 storage) 71409) ; 71409 MB available
    (available_at dsi-cloud1-14 storage cloud1)
    
    ; dsi-cloud1-15 (cloud storage resources)
    (= (resource_total dsi-cloud1-15 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-15 storage) 76253) ; 76253 MB available
    (available_at dsi-cloud1-15 storage cloud1)
    
    ; dsi-cloud1-16 (cloud storage resources)
    (= (resource_total dsi-cloud1-16 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-16 storage) 55426) ; 55426 MB available
    (available_at dsi-cloud1-16 storage cloud1)
    
    ; dsi-cloud1-17 (cloud storage resources)
    (= (resource_total dsi-cloud1-17 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-17 storage) 54586) ; 54586 MB available
    (available_at dsi-cloud1-17 storage cloud1)
    
    ; dsi-cloud1-18 (cloud storage resources)
    (= (resource_total dsi-cloud1-18 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-18 storage) 78847) ; 78847 MB available
    (available_at dsi-cloud1-18 storage cloud1)
    
    ; dsi-cloud1-19 (cloud storage resources)
    (= (resource_total dsi-cloud1-19 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-19 storage) 65725) ; 65725 MB available
    (available_at dsi-cloud1-19 storage cloud1)
    
    ; dsi-cloud1-20 (cloud storage resources)
    (= (resource_total dsi-cloud1-20 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-20 storage) 69921) ; 69921 MB available
    (available_at dsi-cloud1-20 storage cloud1)
    
    ; dsi-cloud1-21 (cloud storage resources)
    (= (resource_total dsi-cloud1-21 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-21 storage) 80144) ; 80144 MB available
    (available_at dsi-cloud1-21 storage cloud1)
    
    ; dsi-cloud1-22 (cloud storage resources)
    (= (resource_total dsi-cloud1-22 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-22 storage) 58172) ; 58172 MB available
    (available_at dsi-cloud1-22 storage cloud1)
    
    ; dsi-cloud1-23 (cloud storage resources)
    (= (resource_total dsi-cloud1-23 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-23 storage) 65305) ; 65305 MB available
    (available_at dsi-cloud1-23 storage cloud1)
    
    ; dsi-cloud1-24 (cloud storage resources)
    (= (resource_total dsi-cloud1-24 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-24 storage) 74689) ; 74689 MB available
    (available_at dsi-cloud1-24 storage cloud1)
    
    ; dsi-cloud1-25 (cloud storage resources)
    (= (resource_total dsi-cloud1-25 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-25 storage) 48559) ; 48559 MB available
    (available_at dsi-cloud1-25 storage cloud1)
    
    ; dsi-cloud1-26 (cloud storage resources)
    (= (resource_total dsi-cloud1-26 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-26 storage) 48979) ; 48979 MB available
    (available_at dsi-cloud1-26 storage cloud1)
    
    ; dsi-cloud1-27 (cloud storage resources)
    (= (resource_total dsi-cloud1-27 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-27 storage) 73621) ; 73621 MB available
    (available_at dsi-cloud1-27 storage cloud1)
    
    ; dsi-cloud1-28 (cloud storage resources)
    (= (resource_total dsi-cloud1-28 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-28 storage) 76253) ; 76253 MB available
    (available_at dsi-cloud1-28 storage cloud1)
    
    ; dsi-cloud1-29 (cloud storage resources)
    (= (resource_total dsi-cloud1-29 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-29 storage) 57028) ; 57028 MB available
    (available_at dsi-cloud1-29 storage cloud1)
    
    ; dsi-cloud1-30 (cloud storage resources)
    (= (resource_total dsi-cloud1-30 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-30 storage) 60461) ; 60461 MB available
    (available_at dsi-cloud1-30 storage cloud1)
    
    ; dsi-cloud1-31 (cloud storage resources)
    (= (resource_total dsi-cloud1-31 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-31 storage) 81136) ; 81136 MB available
    (available_at dsi-cloud1-31 storage cloud1)
    
    ; dsi-cloud1-32 (cloud storage resources)
    (= (resource_total dsi-cloud1-32 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-32 storage) 71142) ; 71142 MB available
    (available_at dsi-cloud1-32 storage cloud1)

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
      (has_data dc1 dsi-cloud1-32 dc0 dsi-cloud1-1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)