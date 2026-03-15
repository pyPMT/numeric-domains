; problem: wfc12-free-8s-7dl-14cl
; domain: worksworld-simplified
; 8 sites, star topology (1 cloud hub + 7 region peripherals), 7 direct links, 14 composite links, 12 workflow components, linear chain, free goal, multi-composite-link

(define (problem wfc12-free-8s-7dl-14cl)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site    ; Regions sites
    region1 region2 region3 region4 region5 region6 region7 - site
    ; workflow components
    dc0 dc1 dc2 dc3 dc4 dc5 dc6 - data_component
    dp0 dp1 dp2 dp3 dp4 dp5 - processing_component

    ; data component types:
    dt0 dt1 dt2 dt3 dt4 dt5 dt6 - data_component_type

    ; processing component types:
    pt0 pt1 pt2 pt3 pt4 pt5 - processing_component_type

    ; network links - direct links
    link-cloud1-cloud1 link-region1-region1 link-cloud1-region1 link-region2-region2 link-cloud1-region2 link-region3-region3 link-cloud1-region3 link-region4-region4 link-cloud1-region4 link-region5-region5 link-cloud1-region5 link-region6-region6 link-cloud1-region6 link-region7-region7 link-cloud1-region7 - direct_link

    ; composite links for multi-hop routes
    composite-region1-region2 composite-region1-region3 composite-region1-region4 composite-region1-region5 composite-region1-region6 composite-region1-region7 composite-region2-region3 composite-region2-region4 composite-region2-region5 composite-region2-region6 composite-region2-region7 composite-region3-region4 composite-region3-region5 composite-region3-region6 - composite_link

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
    ; dct dt2
    (= (msg_size dt2) 0.001435546875) ; 0.001435546875MB per message
    ; dct dt3
    (= (msg_size dt3) 0.00138671875) ; 0.00138671875MB per message
    ; dct dt4
    (= (msg_size dt4) 0.001220703125) ; 0.001220703125MB per message
    ; dct dt5
    (= (msg_size dt5) 0.00115234375) ; 0.00115234375MB per message
    ; dct dt6
    (= (msg_size dt6) 0.001123046875) ; 0.001123046875MB per message

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

    ; dc2 - data component
    (type_of dc2 dt2) ; data type of dt2
    (available_at dc2 config cloud1) ; config is at cloud1

    ; dc2 - msg metrics
    (= (msg_max_rate dc2) 131) ; max possible msg/s
    
    ; dc2 - work_amounts
    (= (work_amount dc2 config) 0.000595703125) ; config size in MB
    (= (work_amount dc2 storage) 677.00390625) ; storage requirements (MB): 0.001435546875 MB/msg * 131 msg/s * 3600s

    ; dc3 - data component
    (type_of dc3 dt3) ; data type of dt3
    (available_at dc3 config cloud1) ; config is at cloud1

    ; dc3 - msg metrics
    (= (msg_max_rate dc3) 134) ; max possible msg/s
    
    ; dc3 - work_amounts
    (= (work_amount dc3 config) 0.000615234375) ; config size in MB
    (= (work_amount dc3 storage) 668.953125) ; storage requirements (MB): 0.00138671875 MB/msg * 134 msg/s * 3600s

    ; dc4 - data component
    (type_of dc4 dt4) ; data type of dt4
    (available_at dc4 config cloud1) ; config is at cloud1

    ; dc4 - msg metrics
    (= (msg_max_rate dc4) 137) ; max possible msg/s
    
    ; dc4 - work_amounts
    (= (work_amount dc4 config) 0.000390625) ; config size in MB
    (= (work_amount dc4 storage) 602.05078125) ; storage requirements (MB): 0.001220703125 MB/msg * 137 msg/s * 3600s

    ; dc5 - data component
    (type_of dc5 dt5) ; data type of dt5
    (available_at dc5 config cloud1) ; config is at cloud1

    ; dc5 - msg metrics
    (= (msg_max_rate dc5) 147) ; max possible msg/s
    
    ; dc5 - work_amounts
    (= (work_amount dc5 config) 0.00056640625) ; config size in MB
    (= (work_amount dc5 storage) 609.8203124999999) ; storage requirements (MB): 0.00115234375 MB/msg * 147 msg/s * 3600s

    ; dc6 - data component
    (type_of dc6 dt6) ; data type of dt6
    (available_at dc6 config cloud1) ; config is at cloud1

    ; dc6 - msg metrics
    (= (msg_max_rate dc6) 153) ; max possible msg/s
    
    ; dc6 - work_amounts
    (= (work_amount dc6 config) 0.000546875) ; config size in MB
    (= (work_amount dc6 storage) 618.57421875) ; storage requirements (MB): 0.001123046875 MB/msg * 153 msg/s * 3600s


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

    ; dp1 - processing component
    (type_of dp1 pt1)
    (= (msg_max_rate dp1) 126) ; max possible msg/s
    (= (work_amount dp1 compute) 3381) ; compute requirements
    (= (work_amount dp1 config) 0.002216796875) ; config size
    (available_at dp1 config cloud1) ; available at cloud1

    (input_format dp1 dt1)
    (output_format dp1 dt2)

    ; dp2 - processing component
    (type_of dp2 pt2)
    (= (msg_max_rate dp2) 134) ; max possible msg/s
    (= (work_amount dp2 compute) 3920) ; compute requirements
    (= (work_amount dp2 config) 0.002109375) ; config size
    (available_at dp2 config cloud1) ; available at cloud1

    (input_format dp2 dt2)
    (output_format dp2 dt3)

    ; dp3 - processing component
    (type_of dp3 pt3)
    (= (msg_max_rate dp3) 135) ; max possible msg/s
    (= (work_amount dp3 compute) 6446) ; compute requirements
    (= (work_amount dp3 config) 0.0021484375) ; config size
    (available_at dp3 config cloud1) ; available at cloud1

    (input_format dp3 dt3)
    (output_format dp3 dt4)

    ; dp4 - processing component
    (type_of dp4 pt4)
    (= (msg_max_rate dp4) 141) ; max possible msg/s
    (= (work_amount dp4 compute) 3464) ; compute requirements
    (= (work_amount dp4 config) 0.0015234375) ; config size
    (available_at dp4 config cloud1) ; available at cloud1

    (input_format dp4 dt4)
    (output_format dp4 dt5)

    ; dp5 - processing component
    (type_of dp5 pt5)
    (= (msg_max_rate dp5) 151) ; max possible msg/s
    (= (work_amount dp5 compute) 4890) ; compute requirements
    (= (work_amount dp5 config) 0.001943359375) ; config size
    (available_at dp5 config cloud1) ; available at cloud1

    (input_format dp5 dt5)
    (output_format dp5 dt6)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 200000) ; 200 cores
    (= (resource_available dpi-cloud1 compute) 151920) ; 151 cores available
    (available_at dpi-cloud1 compute cloud1)
    ; dpi-region1 (region compute resources)
    (= (resource_total dpi-region1 compute) 100000) ; 100 cores
    (= (resource_available dpi-region1 compute) 65600) ; 65 cores available
    (available_at dpi-region1 compute region1)
    ; dpi-region2 (region compute resources)
    (= (resource_total dpi-region2 compute) 100000) ; 100 cores
    (= (resource_available dpi-region2 compute) 63000) ; 63 cores available
    (available_at dpi-region2 compute region2)
    ; dpi-region3 (region compute resources)
    (= (resource_total dpi-region3 compute) 100000) ; 100 cores
    (= (resource_available dpi-region3 compute) 64000) ; 64 cores available
    (available_at dpi-region3 compute region3)
    ; dpi-region4 (region compute resources)
    (= (resource_total dpi-region4 compute) 100000) ; 100 cores
    (= (resource_available dpi-region4 compute) 77720) ; 77 cores available
    (available_at dpi-region4 compute region4)
    ; dpi-region5 (region compute resources)
    (= (resource_total dpi-region5 compute) 100000) ; 100 cores
    (= (resource_available dpi-region5 compute) 54600) ; 54 cores available
    (available_at dpi-region5 compute region5)
    ; dpi-region6 (region compute resources)
    (= (resource_total dpi-region6 compute) 100000) ; 100 cores
    (= (resource_available dpi-region6 compute) 69160) ; 69 cores available
    (available_at dpi-region6 compute region6)
    ; dpi-region7 (region compute resources)
    (= (resource_total dpi-region7 compute) 100000) ; 100 cores
    (= (resource_available dpi-region7 compute) 87520) ; 87 cores available
    (available_at dpi-region7 compute region7)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 190730) ; 190730 MB
    (= (resource_available dsi-cloud1 storage) 120465) ; 120465 MB available
    (available_at dsi-cloud1 storage cloud1)
    
    ; dsi-region1 (region storage resources)
    (= (resource_total dsi-region1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region1 storage) 59122) ; 59122 MB available
    (available_at dsi-region1 storage region1)
    
    ; dsi-region2 (region storage resources)
    (= (resource_total dsi-region2 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region2 storage) 75605) ; 75605 MB available
    (available_at dsi-region2 storage region2)
    
    ; dsi-region3 (region storage resources)
    (= (resource_total dsi-region3 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region3 storage) 82242) ; 82242 MB available
    (available_at dsi-region3 storage region3)
    
    ; dsi-region4 (region storage resources)
    (= (resource_total dsi-region4 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region4 storage) 56913) ; 56913 MB available
    (available_at dsi-region4 storage region4)
    
    ; dsi-region5 (region storage resources)
    (= (resource_total dsi-region5 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region5 storage) 48216) ; 48216 MB available
    (available_at dsi-region5 storage region5)
    
    ; dsi-region6 (region storage resources)
    (= (resource_total dsi-region6 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region6 storage) 49780) ; 49780 MB available
    (available_at dsi-region6 storage region6)
    
    ; dsi-region7 (region storage resources)
    (= (resource_total dsi-region7 storage) 95365) ; 95365 MB
    (= (resource_available dsi-region7 storage) 74346) ; 74346 MB available
    (available_at dsi-region7 storage region7)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (intrasite)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000000000) ; 60000000000MB/s
    (= (resource_available link-cloud1-cloud1 network) 47376000000) ; 47376000000MB/s
    (= (network_latency link-cloud1-cloud1) 0.005) ; 5ms
    ; Direct link - region1 to region1 (intrasite)
    (linked link-region1-region1 region1 region1)
    (= (resource_total link-region1-region1 network) 20000) ; 20000MB/s
    (= (resource_available link-region1-region1 network) 16712) ; 16712MB/s
    (= (network_latency link-region1-region1) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region1 (inter-site)
    (linked link-cloud1-region1 cloud1 region1)
    (linked link-cloud1-region1 region1 cloud1)
    (= (resource_total link-cloud1-region1 network) 1500) ; 1500MB/s
    (= (resource_available link-cloud1-region1 network) 1027) ; 1027MB/s
    (= (network_latency link-cloud1-region1) 0.022) ; 22ms
    ; Direct link - region2 to region2 (intrasite)
    (linked link-region2-region2 region2 region2)
    (= (resource_total link-region2-region2 network) 10000) ; 10000MB/s
    (= (resource_available link-region2-region2 network) 6820) ; 6820MB/s
    (= (network_latency link-region2-region2) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region2 (inter-site)
    (linked link-cloud1-region2 cloud1 region2)
    (linked link-cloud1-region2 region2 cloud1)
    (= (resource_total link-cloud1-region2 network) 40000) ; 40000MB/s
    (= (resource_available link-cloud1-region2 network) 30512) ; 30512MB/s
    (= (network_latency link-cloud1-region2) 0.026) ; 25ms
    ; Direct link - region3 to region3 (intrasite)
    (linked link-region3-region3 region3 region3)
    (= (resource_total link-region3-region3 network) 50000) ; 50000MB/s
    (= (resource_available link-region3-region3 network) 25040) ; 25040MB/s
    (= (network_latency link-region3-region3) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region3 (inter-site)
    (linked link-cloud1-region3 cloud1 region3)
    (linked link-cloud1-region3 region3 cloud1)
    (= (resource_total link-cloud1-region3 network) 30000) ; 30000MB/s
    (= (resource_available link-cloud1-region3 network) 21972) ; 21972MB/s
    (= (network_latency link-cloud1-region3) 0.020) ; 20ms
    ; Direct link - region4 to region4 (intrasite)
    (linked link-region4-region4 region4 region4)
    (= (resource_total link-region4-region4 network) 20000) ; 20000MB/s
    (= (resource_available link-region4-region4 network) 10520) ; 10520MB/s
    (= (network_latency link-region4-region4) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region4 (inter-site)
    (linked link-cloud1-region4 cloud1 region4)
    (linked link-cloud1-region4 region4 cloud1)
    (= (resource_total link-cloud1-region4 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region4 network) 24444) ; 24444MB/s
    (= (network_latency link-cloud1-region4) 0.030) ; 29ms
    ; Direct link - region5 to region5 (intrasite)
    (linked link-region5-region5 region5 region5)
    (= (resource_total link-region5-region5 network) 40000) ; 40000MB/s
    (= (resource_available link-region5-region5 network) 28416) ; 28416MB/s
    (= (network_latency link-region5-region5) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region5 (inter-site)
    (linked link-cloud1-region5 cloud1 region5)
    (linked link-cloud1-region5 region5 cloud1)
    (= (resource_total link-cloud1-region5 network) 45000) ; 45000MB/s
    (= (resource_available link-cloud1-region5 network) 28926) ; 28926MB/s
    (= (network_latency link-cloud1-region5) 0.025) ; 25ms
    ; Direct link - region6 to region6 (intrasite)
    (linked link-region6-region6 region6 region6)
    (= (resource_total link-region6-region6 network) 45000) ; 45000MB/s
    (= (resource_available link-region6-region6 network) 26586) ; 26586MB/s
    (= (network_latency link-region6-region6) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region6 (inter-site)
    (linked link-cloud1-region6 cloud1 region6)
    (linked link-cloud1-region6 region6 cloud1)
    (= (resource_total link-cloud1-region6 network) 25000) ; 25000MB/s
    (= (resource_available link-cloud1-region6 network) 13030) ; 13030MB/s
    (= (network_latency link-cloud1-region6) 0.021) ; 21ms
    ; Direct link - region7 to region7 (intrasite)
    (linked link-region7-region7 region7 region7)
    (= (resource_total link-region7-region7 network) 45000) ; 45000MB/s
    (= (resource_available link-region7-region7 network) 24552) ; 24552MB/s
    (= (network_latency link-region7-region7) 0.005) ; 5ms
    ; Direct link (bidirectional) - cloud1 to region7 (inter-site)
    (linked link-cloud1-region7 cloud1 region7)
    (linked link-cloud1-region7 region7 cloud1)
    (= (resource_total link-cloud1-region7 network) 15000) ; 15000MB/s
    (= (resource_available link-cloud1-region7 network) 8214) ; 8214MB/s
    (= (network_latency link-cloud1-region7) 0.025) ; 24ms

    ; Composite link (bidirectional) - region1 to region2 via composite (through hub)
    (linked composite-region1-region2 region1 region2)
    (linked composite-region1-region2 region2 region1)
    (link_uses composite-region1-region2 link-cloud1-region1)
    (link_uses composite-region1-region2 link-cloud1-region2)
    (= (resource_total composite-region1-region2 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region2 network) 1335) ; 1335MB/s
    (= (network_latency composite-region1-region2) 0.048) ; 47ms (sum of sub-links)
    ; Composite link (bidirectional) - region1 to region3 via composite (through hub)
    (linked composite-region1-region3 region1 region3)
    (linked composite-region1-region3 region3 region1)
    (link_uses composite-region1-region3 link-cloud1-region1)
    (link_uses composite-region1-region3 link-cloud1-region3)
    (= (resource_total composite-region1-region3 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region3 network) 867) ; 867MB/s
    (= (network_latency composite-region1-region3) 0.042) ; 42ms (sum of sub-links)
    ; Composite link (bidirectional) - region1 to region4 via composite (through hub)
    (linked composite-region1-region4 region1 region4)
    (linked composite-region1-region4 region4 region1)
    (link_uses composite-region1-region4 link-cloud1-region1)
    (link_uses composite-region1-region4 link-cloud1-region4)
    (= (resource_total composite-region1-region4 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region4 network) 1024) ; 1024MB/s
    (= (network_latency composite-region1-region4) 0.052) ; 51ms (sum of sub-links)
    ; Composite link (bidirectional) - region1 to region5 via composite (through hub)
    (linked composite-region1-region5 region1 region5)
    (linked composite-region1-region5 region5 region1)
    (link_uses composite-region1-region5 link-cloud1-region1)
    (link_uses composite-region1-region5 link-cloud1-region5)
    (= (resource_total composite-region1-region5 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region5 network) 1272) ; 1272MB/s
    (= (network_latency composite-region1-region5) 0.048) ; 47ms (sum of sub-links)
    ; Composite link (bidirectional) - region1 to region6 via composite (through hub)
    (linked composite-region1-region6 region1 region6)
    (linked composite-region1-region6 region6 region1)
    (link_uses composite-region1-region6 link-cloud1-region1)
    (link_uses composite-region1-region6 link-cloud1-region6)
    (= (resource_total composite-region1-region6 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region6 network) 940) ; 940MB/s
    (= (network_latency composite-region1-region6) 0.043) ; 43ms (sum of sub-links)
    ; Composite link (bidirectional) - region1 to region7 via composite (through hub)
    (linked composite-region1-region7 region1 region7)
    (linked composite-region1-region7 region7 region1)
    (link_uses composite-region1-region7 link-cloud1-region1)
    (link_uses composite-region1-region7 link-cloud1-region7)
    (= (resource_total composite-region1-region7 network) 1500) ; 1500MB/s (limited by weakest link)
    (= (resource_available composite-region1-region7 network) 1266) ; 1266MB/s
    (= (network_latency composite-region1-region7) 0.047) ; 46ms (sum of sub-links)
    ; Composite link (bidirectional) - region2 to region3 via composite (through hub)
    (linked composite-region2-region3 region2 region3)
    (linked composite-region2-region3 region3 region2)
    (link_uses composite-region2-region3 link-cloud1-region2)
    (link_uses composite-region2-region3 link-cloud1-region3)
    (= (resource_total composite-region2-region3 network) 30000) ; 30000MB/s (limited by weakest link)
    (= (resource_available composite-region2-region3 network) 15480) ; 15480MB/s
    (= (network_latency composite-region2-region3) 0.046) ; 46ms (sum of sub-links)
    ; Composite link (bidirectional) - region2 to region4 via composite (through hub)
    (linked composite-region2-region4 region2 region4)
    (linked composite-region2-region4 region4 region2)
    (link_uses composite-region2-region4 link-cloud1-region2)
    (link_uses composite-region2-region4 link-cloud1-region4)
    (= (resource_total composite-region2-region4 network) 40000) ; 40000MB/s (limited by weakest link)
    (= (resource_available composite-region2-region4 network) 25120) ; 25120MB/s
    (= (network_latency composite-region2-region4) 0.055) ; 55ms (sum of sub-links)
    ; Composite link (bidirectional) - region2 to region5 via composite (through hub)
    (linked composite-region2-region5 region2 region5)
    (linked composite-region2-region5 region5 region2)
    (link_uses composite-region2-region5 link-cloud1-region2)
    (link_uses composite-region2-region5 link-cloud1-region5)
    (= (resource_total composite-region2-region5 network) 40000) ; 40000MB/s (limited by weakest link)
    (= (resource_available composite-region2-region5 network) 29695) ; 29695MB/s
    (= (network_latency composite-region2-region5) 0.051) ; 51ms (sum of sub-links)
    ; Composite link (bidirectional) - region2 to region6 via composite (through hub)
    (linked composite-region2-region6 region2 region6)
    (linked composite-region2-region6 region6 region2)
    (link_uses composite-region2-region6 link-cloud1-region2)
    (link_uses composite-region2-region6 link-cloud1-region6)
    (= (resource_total composite-region2-region6 network) 25000) ; 25000MB/s (limited by weakest link)
    (= (resource_available composite-region2-region6 network) 15150) ; 15150MB/s
    (= (network_latency composite-region2-region6) 0.047) ; 46ms (sum of sub-links)
    ; Composite link (bidirectional) - region2 to region7 via composite (through hub)
    (linked composite-region2-region7 region2 region7)
    (linked composite-region2-region7 region7 region2)
    (link_uses composite-region2-region7 link-cloud1-region2)
    (link_uses composite-region2-region7 link-cloud1-region7)
    (= (resource_total composite-region2-region7 network) 15000) ; 15000MB/s (limited by weakest link)
    (= (resource_available composite-region2-region7 network) 13182) ; 13182MB/s
    (= (network_latency composite-region2-region7) 0.050) ; 50ms (sum of sub-links)
    ; Composite link (bidirectional) - region3 to region4 via composite (through hub)
    (linked composite-region3-region4 region3 region4)
    (linked composite-region3-region4 region4 region3)
    (link_uses composite-region3-region4 link-cloud1-region3)
    (link_uses composite-region3-region4 link-cloud1-region4)
    (= (resource_total composite-region3-region4 network) 30000) ; 30000MB/s (limited by weakest link)
    (= (resource_available composite-region3-region4 network) 22956) ; 22956MB/s
    (= (network_latency composite-region3-region4) 0.050) ; 49ms (sum of sub-links)
    ; Composite link (bidirectional) - region3 to region5 via composite (through hub)
    (linked composite-region3-region5 region3 region5)
    (linked composite-region3-region5 region5 region3)
    (link_uses composite-region3-region5 link-cloud1-region3)
    (link_uses composite-region3-region5 link-cloud1-region5)
    (= (resource_total composite-region3-region5 network) 30000) ; 30000MB/s (limited by weakest link)
    (= (resource_available composite-region3-region5 network) 23760) ; 23760MB/s
    (= (network_latency composite-region3-region5) 0.046) ; 45ms (sum of sub-links)
    ; Composite link (bidirectional) - region3 to region6 via composite (through hub)
    (linked composite-region3-region6 region3 region6)
    (linked composite-region3-region6 region6 region3)
    (link_uses composite-region3-region6 link-cloud1-region3)
    (link_uses composite-region3-region6 link-cloud1-region6)
    (= (resource_total composite-region3-region6 network) 25000) ; 25000MB/s (limited by weakest link)
    (= (resource_available composite-region3-region6 network) 17870) ; 17870MB/s
    (= (network_latency composite-region3-region6) 0.042) ; 41ms (sum of sub-links)

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
          (has_data dc6 ?dsi dc0 dsi-region1)
        )
      )
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)