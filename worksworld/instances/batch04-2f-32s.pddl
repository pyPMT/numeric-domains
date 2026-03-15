; problem: site32-wfc2-free-32s
; domain: worksworld-simplified
; 32 sites, star topology (1 cloud hub + 31 region peripherals), 2 workflow components, linear chain, free goal, multi-site

(define (problem site32-wfc2-free-32s)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site    ; Regions sites
    region1 region2 region3 region4 region5 region6 region7 region8 region9 region10 region11 region12 region13 region14 region15 region16 region17 region18 region19 region20 region21 region22 region23 region24 region25 region26 region27 region28 region29 region30 region31 - site
    ; workflow components
    dc0 dc1 - data_component
    dp0 - processing_component

    ; data component types:
    dt0 dt1 - data_component_type

    ; processing component types:
    pt0 - processing_component_type

    ; network links - direct links
    link-cloud1-cloud1 link-region1-region1 link-cloud1-region1 link-region2-region2 link-cloud1-region2 link-region3-region3 link-cloud1-region3 link-region4-region4 link-cloud1-region4 link-region5-region5 link-cloud1-region5 link-region6-region6 link-cloud1-region6 link-region7-region7 link-cloud1-region7 link-region8-region8 link-cloud1-region8 link-region9-region9 link-cloud1-region9 link-region10-region10 link-cloud1-region10 link-region11-region11 link-cloud1-region11 link-region12-region12 link-cloud1-region12 link-region13-region13 link-cloud1-region13 link-region14-region14 link-cloud1-region14 link-region15-region15 link-cloud1-region15 link-region16-region16 link-cloud1-region16 link-region17-region17 link-cloud1-region17 link-region18-region18 link-cloud1-region18 link-region19-region19 link-cloud1-region19 link-region20-region20 link-cloud1-region20 link-region21-region21 link-cloud1-region21 link-region22-region22 link-cloud1-region22 link-region23-region23 link-cloud1-region23 link-region24-region24 link-cloud1-region24 link-region25-region25 link-cloud1-region25 link-region26-region26 link-cloud1-region26 link-region27-region27 link-cloud1-region27 link-region28-region28 link-cloud1-region28 link-region29-region29 link-cloud1-region29 link-region30-region30 link-cloud1-region30 link-region31-region31 link-cloud1-region31 - direct_link

    ; available interfaces
    ; Single interface per site
    ; Clouds interfaces
    dpi-cloud1 - dpi
    dsi-cloud1 - dsi    ; Regions interfaces
    dpi-region1 dpi-region2 dpi-region3 dpi-region4 dpi-region5 dpi-region6 dpi-region7 dpi-region8 dpi-region9 dpi-region10 dpi-region11 dpi-region12 dpi-region13 dpi-region14 dpi-region15 dpi-region16 dpi-region17 dpi-region18 dpi-region19 dpi-region20 dpi-region21 dpi-region22 dpi-region23 dpi-region24 dpi-region25 dpi-region26 dpi-region27 dpi-region28 dpi-region29 dpi-region30 dpi-region31 - dpi
    dsi-region1 dsi-region2 dsi-region3 dsi-region4 dsi-region5 dsi-region6 dsi-region7 dsi-region8 dsi-region9 dsi-region10 dsi-region11 dsi-region12 dsi-region13 dsi-region14 dsi-region15 dsi-region16 dsi-region17 dsi-region18 dsi-region19 dsi-region20 dsi-region21 dsi-region22 dsi-region23 dsi-region24 dsi-region25 dsi-region26 dsi-region27 dsi-region28 dsi-region29 dsi-region30 dsi-region31 - dsi    
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
    (= (msg_max_rate dc1) 121) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 650.84765625) ; storage requirements (MB): 0.001494140625 MB/msg * 121 msg/s * 3600s


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
    ; dpi-region8 (region compute resources)
    (= (resource_total dpi-region8 compute) 100000) ; 100 cores
    (= (resource_available dpi-region8 compute) 74160) ; 74 cores available
    (available_at dpi-region8 compute region8)
    ; dpi-region9 (region compute resources)
    (= (resource_total dpi-region9 compute) 100000) ; 100 cores
    (= (resource_available dpi-region9 compute) 83440) ; 83 cores available
    (available_at dpi-region9 compute region9)
    ; dpi-region10 (region compute resources)
    (= (resource_total dpi-region10 compute) 100000) ; 100 cores
    (= (resource_available dpi-region10 compute) 63720) ; 63 cores available
    (available_at dpi-region10 compute region10)
    ; dpi-region11 (region compute resources)
    (= (resource_total dpi-region11 compute) 100000) ; 100 cores
    (= (resource_available dpi-region11 compute) 89280) ; 89 cores available
    (available_at dpi-region11 compute region11)
    ; dpi-region12 (region compute resources)
    (= (resource_total dpi-region12 compute) 100000) ; 100 cores
    (= (resource_available dpi-region12 compute) 60800) ; 60 cores available
    (available_at dpi-region12 compute region12)
    ; dpi-region13 (region compute resources)
    (= (resource_total dpi-region13 compute) 100000) ; 100 cores
    (= (resource_available dpi-region13 compute) 55879) ; 55 cores available
    (available_at dpi-region13 compute region13)
    ; dpi-region14 (region compute resources)
    (= (resource_total dpi-region14 compute) 100000) ; 100 cores
    (= (resource_available dpi-region14 compute) 72720) ; 72 cores available
    (available_at dpi-region14 compute region14)
    ; dpi-region15 (region compute resources)
    (= (resource_total dpi-region15 compute) 100000) ; 100 cores
    (= (resource_available dpi-region15 compute) 69240) ; 69 cores available
    (available_at dpi-region15 compute region15)
    ; dpi-region16 (region compute resources)
    (= (resource_total dpi-region16 compute) 100000) ; 100 cores
    (= (resource_available dpi-region16 compute) 81200) ; 81 cores available
    (available_at dpi-region16 compute region16)
    ; dpi-region17 (region compute resources)
    (= (resource_total dpi-region17 compute) 100000) ; 100 cores
    (= (resource_available dpi-region17 compute) 77760) ; 77 cores available
    (available_at dpi-region17 compute region17)
    ; dpi-region18 (region compute resources)
    (= (resource_total dpi-region18 compute) 100000) ; 100 cores
    (= (resource_available dpi-region18 compute) 65320) ; 65 cores available
    (available_at dpi-region18 compute region18)
    ; dpi-region19 (region compute resources)
    (= (resource_total dpi-region19 compute) 100000) ; 100 cores
    (= (resource_available dpi-region19 compute) 69960) ; 69 cores available
    (available_at dpi-region19 compute region19)
    ; dpi-region20 (region compute resources)
    (= (resource_total dpi-region20 compute) 100000) ; 100 cores
    (= (resource_available dpi-region20 compute) 67480) ; 67 cores available
    (available_at dpi-region20 compute region20)
    ; dpi-region21 (region compute resources)
    (= (resource_total dpi-region21 compute) 100000) ; 100 cores
    (= (resource_available dpi-region21 compute) 56720) ; 56 cores available
    (available_at dpi-region21 compute region21)
    ; dpi-region22 (region compute resources)
    (= (resource_total dpi-region22 compute) 100000) ; 100 cores
    (= (resource_available dpi-region22 compute) 72640) ; 72 cores available
    (available_at dpi-region22 compute region22)
    ; dpi-region23 (region compute resources)
    (= (resource_total dpi-region23 compute) 100000) ; 100 cores
    (= (resource_available dpi-region23 compute) 79560) ; 79 cores available
    (available_at dpi-region23 compute region23)
    ; dpi-region24 (region compute resources)
    (= (resource_total dpi-region24 compute) 100000) ; 100 cores
    (= (resource_available dpi-region24 compute) 89240) ; 89 cores available
    (available_at dpi-region24 compute region24)
    ; dpi-region25 (region compute resources)
    (= (resource_total dpi-region25 compute) 100000) ; 100 cores
    (= (resource_available dpi-region25 compute) 73120) ; 73 cores available
    (available_at dpi-region25 compute region25)
    ; dpi-region26 (region compute resources)
    (= (resource_total dpi-region26 compute) 100000) ; 100 cores
    (= (resource_available dpi-region26 compute) 74280) ; 74 cores available
    (available_at dpi-region26 compute region26)
    ; dpi-region27 (region compute resources)
    (= (resource_total dpi-region27 compute) 100000) ; 100 cores
    (= (resource_available dpi-region27 compute) 62160) ; 62 cores available
    (available_at dpi-region27 compute region27)
    ; dpi-region28 (region compute resources)
    (= (resource_total dpi-region28 compute) 100000) ; 100 cores
    (= (resource_available dpi-region28 compute) 52640) ; 52 cores available
    (available_at dpi-region28 compute region28)
    ; dpi-region29 (region compute resources)
    (= (resource_total dpi-region29 compute) 100000) ; 100 cores
    (= (resource_available dpi-region29 compute) 73160) ; 73 cores available
    (available_at dpi-region29 compute region29)
    ; dpi-region30 (region compute resources)
    (= (resource_total dpi-region30 compute) 100000) ; 100 cores
    (= (resource_available dpi-region30 compute) 70120) ; 70 cores available
    (available_at dpi-region30 compute region30)
    ; dpi-region31 (region compute resources)
    (= (resource_total dpi-region31 compute) 100000) ; 100 cores
    (= (resource_available dpi-region31 compute) 64200) ; 64 cores available
    (available_at dpi-region31 compute region31)

    
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
    
    ; dsi-region8 (region storage resources)
    (= (resource_total dsi-region8 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region8 storage) 63093) ; 63093 MB available
    (available_at dsi-region8 storage region8)
    
    ; dsi-region9 (region storage resources)
    (= (resource_total dsi-region9 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region9 storage) 53595) ; 53595 MB available
    (available_at dsi-region9 storage region9)
    
    ; dsi-region10 (region storage resources)
    (= (resource_total dsi-region10 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region10 storage) 59050) ; 59050 MB available
    (available_at dsi-region10 storage region10)
    
    ; dsi-region11 (region storage resources)
    (= (resource_total dsi-region11 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region11 storage) 67785) ; 67785 MB available
    (available_at dsi-region11 storage region11)
    
    ; dsi-region12 (region storage resources)
    (= (resource_total dsi-region12 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region12 storage) 66679) ; 66679 MB available
    (available_at dsi-region12 storage region12)
    
    ; dsi-region13 (region storage resources)
    (= (resource_total dsi-region13 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region13 storage) 51878) ; 51878 MB available
    (available_at dsi-region13 storage region13)
    
    ; dsi-region14 (region storage resources)
    (= (resource_total dsi-region14 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region14 storage) 84111) ; 84111 MB available
    (available_at dsi-region14 storage region14)
    
    ; dsi-region15 (region storage resources)
    (= (resource_total dsi-region15 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region15 storage) 71371) ; 71371 MB available
    (available_at dsi-region15 storage region15)
    
    ; dsi-region16 (region storage resources)
    (= (resource_total dsi-region16 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region16 storage) 85256) ; 85256 MB available
    (available_at dsi-region16 storage region16)
    
    ; dsi-region17 (region storage resources)
    (= (resource_total dsi-region17 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region17 storage) 50161) ; 50161 MB available
    (available_at dsi-region17 storage region17)
    
    ; dsi-region18 (region storage resources)
    (= (resource_total dsi-region18 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region18 storage) 59240) ; 59240 MB available
    (available_at dsi-region18 storage region18)
    
    ; dsi-region19 (region storage resources)
    (= (resource_total dsi-region19 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region19 storage) 54129) ; 54129 MB available
    (available_at dsi-region19 storage region19)
    
    ; dsi-region20 (region storage resources)
    (= (resource_total dsi-region20 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region20 storage) 60385) ; 60385 MB available
    (available_at dsi-region20 storage region20)
    
    ; dsi-region21 (region storage resources)
    (= (resource_total dsi-region21 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region21 storage) 58058) ; 58058 MB available
    (available_at dsi-region21 storage region21)
    
    ; dsi-region22 (region storage resources)
    (= (resource_total dsi-region22 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region22 storage) 65992) ; 65992 MB available
    (available_at dsi-region22 storage region22)
    
    ; dsi-region23 (region storage resources)
    (= (resource_total dsi-region23 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region23 storage) 52450) ; 52450 MB available
    (available_at dsi-region23 storage region23)
    
    ; dsi-region24 (region storage resources)
    (= (resource_total dsi-region24 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region24 storage) 82776) ; 82776 MB available
    (available_at dsi-region24 storage region24)
    
    ; dsi-region25 (region storage resources)
    (= (resource_total dsi-region25 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region25 storage) 50619) ; 50619 MB available
    (available_at dsi-region25 storage region25)
    
    ; dsi-region26 (region storage resources)
    (= (resource_total dsi-region26 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region26 storage) 57905) ; 57905 MB available
    (available_at dsi-region26 storage region26)
    
    ; dsi-region27 (region storage resources)
    (= (resource_total dsi-region27 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region27 storage) 75109) ; 75109 MB available
    (available_at dsi-region27 storage region27)
    
    ; dsi-region28 (region storage resources)
    (= (resource_total dsi-region28 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region28 storage) 62864) ; 62864 MB available
    (available_at dsi-region28 storage region28)
    
    ; dsi-region29 (region storage resources)
    (= (resource_total dsi-region29 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region29 storage) 65344) ; 65344 MB available
    (available_at dsi-region29 storage region29)
    
    ; dsi-region30 (region storage resources)
    (= (resource_total dsi-region30 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region30 storage) 82319) ; 82319 MB available
    (available_at dsi-region30 storage region30)
    
    ; dsi-region31 (region storage resources)
    (= (resource_total dsi-region31 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region31 storage) 77169) ; 77169 MB available
    (available_at dsi-region31 storage region31)

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
    (= (network_latency link-cloud1-region1) 0.024) ; 24ms
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
    (= (network_latency link-cloud1-region2) 0.031) ; 31ms
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
    (= (network_latency link-cloud1-region3) 0.035) ; 34ms
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
    (= (network_latency link-cloud1-region4) 0.027) ; 26ms
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
    (= (network_latency link-cloud1-region5) 0.033) ; 33ms
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
    (= (network_latency link-cloud1-region6) 0.025) ; 25ms
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
    (= (network_latency link-cloud1-region7) 0.026) ; 25ms
    ; Direct link - region8 to region8 (intrasite)
    (linked link-region8-region8 region8 region8)
    (= (resource_total link-region8-region8 network) 25000) ; 25000MB/s
    (= (resource_available link-region8-region8 network) 13180) ; 13180MB/s
    (= (network_latency link-region8-region8) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region8 (inter-site)
    (linked link-cloud1-region8 cloud1 region8)
    (linked link-cloud1-region8 region8 cloud1)
    (= (resource_total link-cloud1-region8 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region8 network) 25092) ; 25092MB/s
    (= (network_latency link-cloud1-region8) 0.025) ; 25ms
    ; Direct link - region9 to region9 (intrasite)
    (linked link-region9-region9 region9 region9)
    (= (resource_total link-region9-region9 network) 30000) ; 30000MB/s
    (= (resource_available link-region9-region9 network) 24144) ; 24144MB/s
    (= (network_latency link-region9-region9) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region9 (inter-site)
    (linked link-cloud1-region9 cloud1 region9)
    (linked link-cloud1-region9 region9 cloud1)
    (= (resource_total link-cloud1-region9 network) 15000) ; 15000MB/s
    (= (resource_available link-cloud1-region9 network) 12300) ; 12300MB/s
    (= (network_latency link-cloud1-region9) 0.023) ; 22ms
    ; Direct link - region10 to region10 (intrasite)
    (linked link-region10-region10 region10 region10)
    (= (resource_total link-region10-region10 network) 35000) ; 35000MB/s
    (= (resource_available link-region10-region10 network) 23030) ; 23030MB/s
    (= (network_latency link-region10-region10) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region10 (inter-site)
    (linked link-cloud1-region10 cloud1 region10)
    (linked link-cloud1-region10 region10 cloud1)
    (= (resource_total link-cloud1-region10 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region10 network) 15850) ; 15850MB/s
    (= (network_latency link-cloud1-region10) 0.032) ; 31ms
    ; Direct link - region11 to region11 (intrasite)
    (linked link-region11-region11 region11 region11)
    (= (resource_total link-region11-region11 network) 30000) ; 30000MB/s
    (= (resource_available link-region11-region11 network) 16716) ; 16716MB/s
    (= (network_latency link-region11-region11) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region11 (inter-site)
    (linked link-cloud1-region11 cloud1 region11)
    (linked link-cloud1-region11 region11 cloud1)
    (= (resource_total link-cloud1-region11 network) 10000) ; 10000MB/s
    (= (resource_available link-cloud1-region11 network) 7952) ; 7952MB/s
    (= (network_latency link-cloud1-region11) 0.023) ; 22ms
    ; Direct link - region12 to region12 (intrasite)
    (linked link-region12-region12 region12 region12)
    (= (resource_total link-region12-region12 network) 10000) ; 10000MB/s
    (= (resource_available link-region12-region12 network) 5060) ; 5060MB/s
    (= (network_latency link-region12-region12) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region12 (inter-site)
    (linked link-cloud1-region12 cloud1 region12)
    (linked link-cloud1-region12 region12 cloud1)
    (= (resource_total link-cloud1-region12 network) 5000) ; 5000MB/s
    (= (resource_available link-cloud1-region12 network) 4362) ; 4362MB/s
    (= (network_latency link-cloud1-region12) 0.033) ; 33ms
    ; Direct link - region13 to region13 (intrasite)
    (linked link-region13-region13 region13 region13)
    (= (resource_total link-region13-region13 network) 15000) ; 15000MB/s
    (= (resource_available link-region13-region13 network) 12870) ; 12870MB/s
    (= (network_latency link-region13-region13) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region13 (inter-site)
    (linked link-cloud1-region13 cloud1 region13)
    (linked link-cloud1-region13 region13 cloud1)
    (= (resource_total link-cloud1-region13 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region13 network) 17904) ; 17904MB/s
    (= (network_latency link-cloud1-region13) 0.026) ; 25ms
    ; Direct link - region14 to region14 (intrasite)
    (linked link-region14-region14 region14 region14)
    (= (resource_total link-region14-region14 network) 25000) ; 25000MB/s
    (= (resource_available link-region14-region14 network) 12590) ; 12590MB/s
    (= (network_latency link-region14-region14) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region14 (inter-site)
    (linked link-cloud1-region14 cloud1 region14)
    (linked link-cloud1-region14 region14 cloud1)
    (= (resource_total link-cloud1-region14 network) 35000) ; 35000MB/s
    (= (resource_available link-cloud1-region14 network) 22372) ; 22372MB/s
    (= (network_latency link-cloud1-region14) 0.033) ; 32ms
    ; Direct link - region15 to region15 (intrasite)
    (linked link-region15-region15 region15 region15)
    (= (resource_total link-region15-region15 network) 50000) ; 50000MB/s
    (= (resource_available link-region15-region15 network) 34520) ; 34520MB/s
    (= (network_latency link-region15-region15) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region15 (inter-site)
    (linked link-cloud1-region15 cloud1 region15)
    (linked link-cloud1-region15 region15 cloud1)
    (= (resource_total link-cloud1-region15 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region15 network) 14960) ; 14960MB/s
    (= (network_latency link-cloud1-region15) 0.023) ; 23ms
    ; Direct link - region16 to region16 (intrasite)
    (linked link-region16-region16 region16 region16)
    (= (resource_total link-region16-region16 network) 10000) ; 10000MB/s
    (= (resource_available link-region16-region16 network) 7136) ; 7136MB/s
    (= (network_latency link-region16-region16) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region16 (inter-site)
    (linked link-cloud1-region16 cloud1 region16)
    (linked link-cloud1-region16 region16 cloud1)
    (= (resource_total link-cloud1-region16 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region16 network) 39420) ; 39420MB/s
    (= (network_latency link-cloud1-region16) 0.032) ; 32ms
    ; Direct link - region17 to region17 (intrasite)
    (linked link-region17-region17 region17 region17)
    (= (resource_total link-region17-region17 network) 20000) ; 20000MB/s
    (= (resource_available link-region17-region17 network) 15832) ; 15832MB/s
    (= (network_latency link-region17-region17) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region17 (inter-site)
    (linked link-cloud1-region17 cloud1 region17)
    (linked link-cloud1-region17 region17 cloud1)
    (= (resource_total link-cloud1-region17 network) 10000) ; 10000MB/s
    (= (resource_available link-cloud1-region17 network) 8268) ; 8268MB/s
    (= (network_latency link-cloud1-region17) 0.030) ; 30ms
    ; Direct link - region18 to region18 (intrasite)
    (linked link-region18-region18 region18 region18)
    (= (resource_total link-region18-region18 network) 40000) ; 40000MB/s
    (= (resource_available link-region18-region18 network) 23024) ; 23024MB/s
    (= (network_latency link-region18-region18) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region18 (inter-site)
    (linked link-cloud1-region18 cloud1 region18)
    (linked link-cloud1-region18 region18 cloud1)
    (= (resource_total link-cloud1-region18 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region18 network) 15090) ; 15090MB/s
    (= (network_latency link-cloud1-region18) 0.024) ; 23ms
    ; Direct link - region19 to region19 (intrasite)
    (linked link-region19-region19 region19 region19)
    (= (resource_total link-region19-region19 network) 20000) ; 20000MB/s
    (= (resource_available link-region19-region19 network) 14384) ; 14384MB/s
    (= (network_latency link-region19-region19) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region19 (inter-site)
    (linked link-cloud1-region19 cloud1 region19)
    (linked link-cloud1-region19 region19 cloud1)
    (= (resource_total link-cloud1-region19 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-region19 network) 32340) ; 32340MB/s
    (= (network_latency link-cloud1-region19) 0.033) ; 32ms
    ; Direct link - region20 to region20 (intrasite)
    (linked link-region20-region20 region20 region20)
    (= (resource_total link-region20-region20 network) 10000) ; 10000MB/s
    (= (resource_available link-region20-region20 network) 5636) ; 5636MB/s
    (= (network_latency link-region20-region20) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region20 (inter-site)
    (linked link-cloud1-region20 cloud1 region20)
    (linked link-cloud1-region20 region20 cloud1)
    (= (resource_total link-cloud1-region20 network) 10000) ; 10000MB/s
    (= (resource_available link-cloud1-region20 network) 7420) ; 7420MB/s
    (= (network_latency link-cloud1-region20) 0.031) ; 31ms
    ; Direct link - region21 to region21 (intrasite)
    (linked link-region21-region21 region21 region21)
    (= (resource_total link-region21-region21 network) 40000) ; 40000MB/s
    (= (resource_available link-region21-region21 network) 34368) ; 34368MB/s
    (= (network_latency link-region21-region21) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region21 (inter-site)
    (linked link-cloud1-region21 cloud1 region21)
    (linked link-cloud1-region21 region21 cloud1)
    (= (resource_total link-cloud1-region21 network) 40000) ; 40000MB/s
    (= (resource_available link-cloud1-region21 network) 21024) ; 21024MB/s
    (= (network_latency link-cloud1-region21) 0.033) ; 32ms
    ; Direct link - region22 to region22 (intrasite)
    (linked link-region22-region22 region22 region22)
    (= (resource_total link-region22-region22 network) 45000) ; 45000MB/s
    (= (resource_available link-region22-region22 network) 35136) ; 35136MB/s
    (= (network_latency link-region22-region22) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region22 (inter-site)
    (linked link-cloud1-region22 cloud1 region22)
    (linked link-cloud1-region22 region22 cloud1)
    (= (resource_total link-cloud1-region22 network) 40000) ; 40000MB/s
    (= (resource_available link-cloud1-region22 network) 28976) ; 28976MB/s
    (= (network_latency link-cloud1-region22) 0.027) ; 26ms
    ; Direct link - region23 to region23 (intrasite)
    (linked link-region23-region23 region23 region23)
    (= (resource_total link-region23-region23 network) 20000) ; 20000MB/s
    (= (resource_available link-region23-region23 network) 14976) ; 14976MB/s
    (= (network_latency link-region23-region23) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region23 (inter-site)
    (linked link-cloud1-region23 cloud1 region23)
    (linked link-cloud1-region23 region23 cloud1)
    (= (resource_total link-cloud1-region23 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region23 network) 40464) ; 40464MB/s
    (= (network_latency link-cloud1-region23) 0.026) ; 26ms
    ; Direct link - region24 to region24 (intrasite)
    (linked link-region24-region24 region24 region24)
    (= (resource_total link-region24-region24 network) 30000) ; 30000MB/s
    (= (resource_available link-region24-region24 network) 17148) ; 17148MB/s
    (= (network_latency link-region24-region24) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region24 (inter-site)
    (linked link-cloud1-region24 cloud1 region24)
    (linked link-cloud1-region24 region24 cloud1)
    (= (resource_total link-cloud1-region24 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region24 network) 21060) ; 21060MB/s
    (= (network_latency link-cloud1-region24) 0.024) ; 24ms
    ; Direct link - region25 to region25 (intrasite)
    (linked link-region25-region25 region25 region25)
    (= (resource_total link-region25-region25 network) 10000) ; 10000MB/s
    (= (resource_available link-region25-region25 network) 7916) ; 7916MB/s
    (= (network_latency link-region25-region25) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region25 (inter-site)
    (linked link-cloud1-region25 cloud1 region25)
    (linked link-cloud1-region25 region25 cloud1)
    (= (resource_total link-cloud1-region25 network) 5000) ; 5000MB/s
    (= (resource_available link-cloud1-region25 network) 3758) ; 3758MB/s
    (= (network_latency link-cloud1-region25) 0.026) ; 25ms
    ; Direct link - region26 to region26 (intrasite)
    (linked link-region26-region26 region26 region26)
    (= (resource_total link-region26-region26 network) 10000) ; 10000MB/s
    (= (resource_available link-region26-region26 network) 8584) ; 8584MB/s
    (= (network_latency link-region26-region26) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region26 (inter-site)
    (linked link-cloud1-region26 cloud1 region26)
    (linked link-cloud1-region26 region26 cloud1)
    (= (resource_total link-cloud1-region26 network) 40000) ; 40000MB/s
    (= (resource_available link-cloud1-region26 network) 25296) ; 25296MB/s
    (= (network_latency link-cloud1-region26) 0.023) ; 23ms
    ; Direct link - region27 to region27 (intrasite)
    (linked link-region27-region27 region27 region27)
    (= (resource_total link-region27-region27 network) 30000) ; 30000MB/s
    (= (resource_available link-region27-region27 network) 26460) ; 26460MB/s
    (= (network_latency link-region27-region27) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region27 (inter-site)
    (linked link-cloud1-region27 cloud1 region27)
    (linked link-cloud1-region27 region27 cloud1)
    (= (resource_total link-cloud1-region27 network) 50000) ; 50000MB/s
    (= (resource_available link-cloud1-region27 network) 26060) ; 26060MB/s
    (= (network_latency link-cloud1-region27) 0.032) ; 31ms
    ; Direct link - region28 to region28 (intrasite)
    (linked link-region28-region28 region28 region28)
    (= (resource_total link-region28-region28 network) 15000) ; 15000MB/s
    (= (resource_available link-region28-region28 network) 12210) ; 12210MB/s
    (= (network_latency link-region28-region28) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region28 (inter-site)
    (linked link-cloud1-region28 cloud1 region28)
    (linked link-cloud1-region28 region28 cloud1)
    (= (resource_total link-cloud1-region28 network) 15000) ; 15000MB/s
    (= (resource_available link-cloud1-region28 network) 11556) ; 11556MB/s
    (= (network_latency link-cloud1-region28) 0.022) ; 21ms
    ; Direct link - region29 to region29 (intrasite)
    (linked link-region29-region29 region29 region29)
    (= (resource_total link-region29-region29 network) 35000) ; 35000MB/s
    (= (resource_available link-region29-region29 network) 18116) ; 18116MB/s
    (= (network_latency link-region29-region29) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region29 (inter-site)
    (linked link-cloud1-region29 cloud1 region29)
    (linked link-cloud1-region29 region29 cloud1)
    (= (resource_total link-cloud1-region29 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region29 network) 22524) ; 22524MB/s
    (= (network_latency link-cloud1-region29) 0.025) ; 24ms
    ; Direct link - region30 to region30 (intrasite)
    (linked link-region30-region30 region30 region30)
    (= (resource_total link-region30-region30 network) 30000) ; 30000MB/s
    (= (resource_available link-region30-region30 network) 17292) ; 17292MB/s
    (= (network_latency link-region30-region30) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region30 (inter-site)
    (linked link-cloud1-region30 cloud1 region30)
    (linked link-cloud1-region30 region30 cloud1)
    (= (resource_total link-cloud1-region30 network) 15000) ; 15000MB/s
    (= (resource_available link-cloud1-region30 network) 9144) ; 9144MB/s
    (= (network_latency link-cloud1-region30) 0.031) ; 30ms
    ; Direct link - region31 to region31 (intrasite)
    (linked link-region31-region31 region31 region31)
    (= (resource_total link-region31-region31 network) 45000) ; 45000MB/s
    (= (resource_available link-region31-region31 network) 34794) ; 34794MB/s
    (= (network_latency link-region31-region31) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region31 (inter-site)
    (linked link-cloud1-region31 cloud1 region31)
    (linked link-cloud1-region31 region31 cloud1)
    (= (resource_total link-cloud1-region31 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region31 network) 19370) ; 19370MB/s
    (= (network_latency link-cloud1-region31) 0.030) ; 29ms


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