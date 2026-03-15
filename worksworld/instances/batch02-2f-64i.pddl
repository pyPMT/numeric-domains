; problem: site1-wfc2-free-64i
; domain: worksworld-simplified
; 1 site, 64 dpis and dsis per site, 2 workflow components, linear chain, free goal, multi-interface

(define (problem site1-wfc2-free-64i)(:domain worksworld-simplified)

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
    ; Multi-interface mode: 64 interfaces per site
    dpi-cloud1-1 dpi-cloud1-2 dpi-cloud1-3 dpi-cloud1-4 dpi-cloud1-5 dpi-cloud1-6 dpi-cloud1-7 dpi-cloud1-8 dpi-cloud1-9 dpi-cloud1-10 dpi-cloud1-11 dpi-cloud1-12 dpi-cloud1-13 dpi-cloud1-14 dpi-cloud1-15 dpi-cloud1-16 dpi-cloud1-17 dpi-cloud1-18 dpi-cloud1-19 dpi-cloud1-20 dpi-cloud1-21 dpi-cloud1-22 dpi-cloud1-23 dpi-cloud1-24 dpi-cloud1-25 dpi-cloud1-26 dpi-cloud1-27 dpi-cloud1-28 dpi-cloud1-29 dpi-cloud1-30 dpi-cloud1-31 dpi-cloud1-32 dpi-cloud1-33 dpi-cloud1-34 dpi-cloud1-35 dpi-cloud1-36 dpi-cloud1-37 dpi-cloud1-38 dpi-cloud1-39 dpi-cloud1-40 dpi-cloud1-41 dpi-cloud1-42 dpi-cloud1-43 dpi-cloud1-44 dpi-cloud1-45 dpi-cloud1-46 dpi-cloud1-47 dpi-cloud1-48 dpi-cloud1-49 dpi-cloud1-50 dpi-cloud1-51 dpi-cloud1-52 dpi-cloud1-53 dpi-cloud1-54 dpi-cloud1-55 dpi-cloud1-56 dpi-cloud1-57 dpi-cloud1-58 dpi-cloud1-59 dpi-cloud1-60 dpi-cloud1-61 dpi-cloud1-62 dpi-cloud1-63 dpi-cloud1-64 - dpi
    dsi-cloud1-1 dsi-cloud1-2 dsi-cloud1-3 dsi-cloud1-4 dsi-cloud1-5 dsi-cloud1-6 dsi-cloud1-7 dsi-cloud1-8 dsi-cloud1-9 dsi-cloud1-10 dsi-cloud1-11 dsi-cloud1-12 dsi-cloud1-13 dsi-cloud1-14 dsi-cloud1-15 dsi-cloud1-16 dsi-cloud1-17 dsi-cloud1-18 dsi-cloud1-19 dsi-cloud1-20 dsi-cloud1-21 dsi-cloud1-22 dsi-cloud1-23 dsi-cloud1-24 dsi-cloud1-25 dsi-cloud1-26 dsi-cloud1-27 dsi-cloud1-28 dsi-cloud1-29 dsi-cloud1-30 dsi-cloud1-31 dsi-cloud1-32 dsi-cloud1-33 dsi-cloud1-34 dsi-cloud1-35 dsi-cloud1-36 dsi-cloud1-37 dsi-cloud1-38 dsi-cloud1-39 dsi-cloud1-40 dsi-cloud1-41 dsi-cloud1-42 dsi-cloud1-43 dsi-cloud1-44 dsi-cloud1-45 dsi-cloud1-46 dsi-cloud1-47 dsi-cloud1-48 dsi-cloud1-49 dsi-cloud1-50 dsi-cloud1-51 dsi-cloud1-52 dsi-cloud1-53 dsi-cloud1-54 dsi-cloud1-55 dsi-cloud1-56 dsi-cloud1-57 dsi-cloud1-58 dsi-cloud1-59 dsi-cloud1-60 dsi-cloud1-61 dsi-cloud1-62 dsi-cloud1-63 dsi-cloud1-64 - dsi
    
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
    (= (msg_max_rate dp0) 124) ; max possible msg/s
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
    ; dpi-cloud1-33 (cloud compute resources)
    (= (resource_total dpi-cloud1-33 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-33 compute) 69560) ; 69 cores available
    (available_at dpi-cloud1-33 compute cloud1)
    ; dpi-cloud1-34 (cloud compute resources)
    (= (resource_total dpi-cloud1-34 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-34 compute) 58080) ; 58 cores available
    (available_at dpi-cloud1-34 compute cloud1)
    ; dpi-cloud1-35 (cloud compute resources)
    (= (resource_total dpi-cloud1-35 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-35 compute) 69080) ; 69 cores available
    (available_at dpi-cloud1-35 compute cloud1)
    ; dpi-cloud1-36 (cloud compute resources)
    (= (resource_total dpi-cloud1-36 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-36 compute) 67920) ; 67 cores available
    (available_at dpi-cloud1-36 compute cloud1)
    ; dpi-cloud1-37 (cloud compute resources)
    (= (resource_total dpi-cloud1-37 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-37 compute) 67360) ; 67 cores available
    (available_at dpi-cloud1-37 compute cloud1)
    ; dpi-cloud1-38 (cloud compute resources)
    (= (resource_total dpi-cloud1-38 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-38 compute) 59800) ; 59 cores available
    (available_at dpi-cloud1-38 compute cloud1)
    ; dpi-cloud1-39 (cloud compute resources)
    (= (resource_total dpi-cloud1-39 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-39 compute) 57399) ; 57 cores available
    (available_at dpi-cloud1-39 compute cloud1)
    ; dpi-cloud1-40 (cloud compute resources)
    (= (resource_total dpi-cloud1-40 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-40 compute) 63040) ; 63 cores available
    (available_at dpi-cloud1-40 compute cloud1)
    ; dpi-cloud1-41 (cloud compute resources)
    (= (resource_total dpi-cloud1-41 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-41 compute) 57280) ; 57 cores available
    (available_at dpi-cloud1-41 compute cloud1)
    ; dpi-cloud1-42 (cloud compute resources)
    (= (resource_total dpi-cloud1-42 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-42 compute) 76160) ; 76 cores available
    (available_at dpi-cloud1-42 compute cloud1)
    ; dpi-cloud1-43 (cloud compute resources)
    (= (resource_total dpi-cloud1-43 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-43 compute) 57920) ; 57 cores available
    (available_at dpi-cloud1-43 compute cloud1)
    ; dpi-cloud1-44 (cloud compute resources)
    (= (resource_total dpi-cloud1-44 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-44 compute) 81560) ; 81 cores available
    (available_at dpi-cloud1-44 compute cloud1)
    ; dpi-cloud1-45 (cloud compute resources)
    (= (resource_total dpi-cloud1-45 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-45 compute) 72760) ; 72 cores available
    (available_at dpi-cloud1-45 compute cloud1)
    ; dpi-cloud1-46 (cloud compute resources)
    (= (resource_total dpi-cloud1-46 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-46 compute) 51480) ; 51 cores available
    (available_at dpi-cloud1-46 compute cloud1)
    ; dpi-cloud1-47 (cloud compute resources)
    (= (resource_total dpi-cloud1-47 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-47 compute) 78440) ; 78 cores available
    (available_at dpi-cloud1-47 compute cloud1)
    ; dpi-cloud1-48 (cloud compute resources)
    (= (resource_total dpi-cloud1-48 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-48 compute) 56560) ; 56 cores available
    (available_at dpi-cloud1-48 compute cloud1)
    ; dpi-cloud1-49 (cloud compute resources)
    (= (resource_total dpi-cloud1-49 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-49 compute) 72000) ; 72 cores available
    (available_at dpi-cloud1-49 compute cloud1)
    ; dpi-cloud1-50 (cloud compute resources)
    (= (resource_total dpi-cloud1-50 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-50 compute) 65000) ; 65 cores available
    (available_at dpi-cloud1-50 compute cloud1)
    ; dpi-cloud1-51 (cloud compute resources)
    (= (resource_total dpi-cloud1-51 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-51 compute) 65560) ; 65 cores available
    (available_at dpi-cloud1-51 compute cloud1)
    ; dpi-cloud1-52 (cloud compute resources)
    (= (resource_total dpi-cloud1-52 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-52 compute) 80280) ; 80 cores available
    (available_at dpi-cloud1-52 compute cloud1)
    ; dpi-cloud1-53 (cloud compute resources)
    (= (resource_total dpi-cloud1-53 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-53 compute) 56440) ; 56 cores available
    (available_at dpi-cloud1-53 compute cloud1)
    ; dpi-cloud1-54 (cloud compute resources)
    (= (resource_total dpi-cloud1-54 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-54 compute) 53520) ; 53 cores available
    (available_at dpi-cloud1-54 compute cloud1)
    ; dpi-cloud1-55 (cloud compute resources)
    (= (resource_total dpi-cloud1-55 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-55 compute) 87880) ; 87 cores available
    (available_at dpi-cloud1-55 compute cloud1)
    ; dpi-cloud1-56 (cloud compute resources)
    (= (resource_total dpi-cloud1-56 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-56 compute) 79280) ; 79 cores available
    (available_at dpi-cloud1-56 compute cloud1)
    ; dpi-cloud1-57 (cloud compute resources)
    (= (resource_total dpi-cloud1-57 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-57 compute) 81480) ; 81 cores available
    (available_at dpi-cloud1-57 compute cloud1)
    ; dpi-cloud1-58 (cloud compute resources)
    (= (resource_total dpi-cloud1-58 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-58 compute) 51280) ; 51 cores available
    (available_at dpi-cloud1-58 compute cloud1)
    ; dpi-cloud1-59 (cloud compute resources)
    (= (resource_total dpi-cloud1-59 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-59 compute) 67400) ; 67 cores available
    (available_at dpi-cloud1-59 compute cloud1)
    ; dpi-cloud1-60 (cloud compute resources)
    (= (resource_total dpi-cloud1-60 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-60 compute) 88920) ; 88 cores available
    (available_at dpi-cloud1-60 compute cloud1)
    ; dpi-cloud1-61 (cloud compute resources)
    (= (resource_total dpi-cloud1-61 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-61 compute) 62120) ; 62 cores available
    (available_at dpi-cloud1-61 compute cloud1)
    ; dpi-cloud1-62 (cloud compute resources)
    (= (resource_total dpi-cloud1-62 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-62 compute) 53200) ; 53 cores available
    (available_at dpi-cloud1-62 compute cloud1)
    ; dpi-cloud1-63 (cloud compute resources)
    (= (resource_total dpi-cloud1-63 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-63 compute) 59319) ; 59 cores available
    (available_at dpi-cloud1-63 compute cloud1)
    ; dpi-cloud1-64 (cloud compute resources)
    (= (resource_total dpi-cloud1-64 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1-64 compute) 68880) ; 68 cores available
    (available_at dpi-cloud1-64 compute cloud1)

    
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
    
    ; dsi-cloud1-33 (cloud storage resources)
    (= (resource_total dsi-cloud1-33 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-33 storage) 69044) ; 69044 MB available
    (available_at dsi-cloud1-33 storage cloud1)
    
    ; dsi-cloud1-34 (cloud storage resources)
    (= (resource_total dsi-cloud1-34 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-34 storage) 78237) ; 78237 MB available
    (available_at dsi-cloud1-34 storage cloud1)
    
    ; dsi-cloud1-35 (cloud storage resources)
    (= (resource_total dsi-cloud1-35 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-35 storage) 80488) ; 80488 MB available
    (available_at dsi-cloud1-35 storage cloud1)
    
    ; dsi-cloud1-36 (cloud storage resources)
    (= (resource_total dsi-cloud1-36 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-36 storage) 77817) ; 77817 MB available
    (available_at dsi-cloud1-36 storage cloud1)
    
    ; dsi-cloud1-37 (cloud storage resources)
    (= (resource_total dsi-cloud1-37 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-37 storage) 81022) ; 81022 MB available
    (available_at dsi-cloud1-37 storage cloud1)
    
    ; dsi-cloud1-38 (cloud storage resources)
    (= (resource_total dsi-cloud1-38 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-38 storage) 78008) ; 78008 MB available
    (available_at dsi-cloud1-38 storage cloud1)
    
    ; dsi-cloud1-39 (cloud storage resources)
    (= (resource_total dsi-cloud1-39 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-39 storage) 64543) ; 64543 MB available
    (available_at dsi-cloud1-39 storage cloud1)
    
    ; dsi-cloud1-40 (cloud storage resources)
    (= (resource_total dsi-cloud1-40 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-40 storage) 60156) ; 60156 MB available
    (available_at dsi-cloud1-40 storage cloud1)
    
    ; dsi-cloud1-41 (cloud storage resources)
    (= (resource_total dsi-cloud1-41 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-41 storage) 76749) ; 76749 MB available
    (available_at dsi-cloud1-41 storage cloud1)
    
    ; dsi-cloud1-42 (cloud storage resources)
    (= (resource_total dsi-cloud1-42 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-42 storage) 60156) ; 60156 MB available
    (available_at dsi-cloud1-42 storage cloud1)
    
    ; dsi-cloud1-43 (cloud storage resources)
    (= (resource_total dsi-cloud1-43 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-43 storage) 52069) ; 52069 MB available
    (available_at dsi-cloud1-43 storage cloud1)
    
    ; dsi-cloud1-44 (cloud storage resources)
    (= (resource_total dsi-cloud1-44 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-44 storage) 79801) ; 79801 MB available
    (available_at dsi-cloud1-44 storage cloud1)
    
    ; dsi-cloud1-45 (cloud storage resources)
    (= (resource_total dsi-cloud1-45 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-45 storage) 55845) ; 55845 MB available
    (available_at dsi-cloud1-45 storage cloud1)
    
    ; dsi-cloud1-46 (cloud storage resources)
    (= (resource_total dsi-cloud1-46 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-46 storage) 73888) ; 73888 MB available
    (available_at dsi-cloud1-46 storage cloud1)
    
    ; dsi-cloud1-47 (cloud storage resources)
    (= (resource_total dsi-cloud1-47 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-47 storage) 65458) ; 65458 MB available
    (available_at dsi-cloud1-47 storage cloud1)
    
    ; dsi-cloud1-48 (cloud storage resources)
    (= (resource_total dsi-cloud1-48 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-48 storage) 78885) ; 78885 MB available
    (available_at dsi-cloud1-48 storage cloud1)
    
    ; dsi-cloud1-49 (cloud storage resources)
    (= (resource_total dsi-cloud1-49 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-49 storage) 83120) ; 83120 MB available
    (available_at dsi-cloud1-49 storage cloud1)
    
    ; dsi-cloud1-50 (cloud storage resources)
    (= (resource_total dsi-cloud1-50 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-50 storage) 63246) ; 63246 MB available
    (available_at dsi-cloud1-50 storage cloud1)
    
    ; dsi-cloud1-51 (cloud storage resources)
    (= (resource_total dsi-cloud1-51 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-51 storage) 58287) ; 58287 MB available
    (available_at dsi-cloud1-51 storage cloud1)
    
    ; dsi-cloud1-52 (cloud storage resources)
    (= (resource_total dsi-cloud1-52 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-52 storage) 48674) ; 48674 MB available
    (available_at dsi-cloud1-52 storage cloud1)
    
    ; dsi-cloud1-53 (cloud storage resources)
    (= (resource_total dsi-cloud1-53 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-53 storage) 49551) ; 49551 MB available
    (available_at dsi-cloud1-53 storage cloud1)
    
    ; dsi-cloud1-54 (cloud storage resources)
    (= (resource_total dsi-cloud1-54 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-54 storage) 52488) ; 52488 MB available
    (available_at dsi-cloud1-54 storage cloud1)
    
    ; dsi-cloud1-55 (cloud storage resources)
    (= (resource_total dsi-cloud1-55 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-55 storage) 54243) ; 54243 MB available
    (available_at dsi-cloud1-55 storage cloud1)
    
    ; dsi-cloud1-56 (cloud storage resources)
    (= (resource_total dsi-cloud1-56 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-56 storage) 67060) ; 67060 MB available
    (available_at dsi-cloud1-56 storage cloud1)
    
    ; dsi-cloud1-57 (cloud storage resources)
    (= (resource_total dsi-cloud1-57 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-57 storage) 81289) ; 81289 MB available
    (available_at dsi-cloud1-57 storage cloud1)
    
    ; dsi-cloud1-58 (cloud storage resources)
    (= (resource_total dsi-cloud1-58 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-58 storage) 72477) ; 72477 MB available
    (available_at dsi-cloud1-58 storage cloud1)
    
    ; dsi-cloud1-59 (cloud storage resources)
    (= (resource_total dsi-cloud1-59 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-59 storage) 79152) ; 79152 MB available
    (available_at dsi-cloud1-59 storage cloud1)
    
    ; dsi-cloud1-60 (cloud storage resources)
    (= (resource_total dsi-cloud1-60 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-60 storage) 49513) ; 49513 MB available
    (available_at dsi-cloud1-60 storage cloud1)
    
    ; dsi-cloud1-61 (cloud storage resources)
    (= (resource_total dsi-cloud1-61 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-61 storage) 65420) ; 65420 MB available
    (available_at dsi-cloud1-61 storage cloud1)
    
    ; dsi-cloud1-62 (cloud storage resources)
    (= (resource_total dsi-cloud1-62 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-62 storage) 73049) ; 73049 MB available
    (available_at dsi-cloud1-62 storage cloud1)
    
    ; dsi-cloud1-63 (cloud storage resources)
    (= (resource_total dsi-cloud1-63 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-63 storage) 75796) ; 75796 MB available
    (available_at dsi-cloud1-63 storage cloud1)
    
    ; dsi-cloud1-64 (cloud storage resources)
    (= (resource_total dsi-cloud1-64 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1-64 storage) 67327) ; 67327 MB available
    (available_at dsi-cloud1-64 storage cloud1)

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
      (has_data dc1 dsi-cloud1-64 dc0 dsi-cloud1-1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)