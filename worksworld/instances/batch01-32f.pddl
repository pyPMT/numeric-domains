; problem: site1-interface1-wfc32-free
; domain: worksworld-simplified
; 1 sites, 1 dpis and dsis, 32 workflow components, linear chain, free goal

(define (problem site1-interface1-wfc32-free)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site
    ; workflow components
    dc0 dc1 dc2 dc3 dc4 dc5 dc6 dc7 dc8 dc9 dc10 dc11 dc12 dc13 dc14 dc15 dc16 - data_component
    dp0 dp1 dp2 dp3 dp4 dp5 dp6 dp7 dp8 dp9 dp10 dp11 dp12 dp13 dp14 dp15 - processing_component

    ; data component types:
    dt0 dt1 dt2 dt3 dt4 dt5 dt6 dt7 dt8 dt9 dt10 dt11 dt12 dt13 dt14 dt15 dt16 - data_component_type

    ; processing component types:
    pt0 pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14 pt15 - processing_component_type

    ; network links - direct links
    link-cloud1-cloud1 - direct_link

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
    ; dct dt7
    (= (msg_size dt7) 0.00177734375) ; 0.00177734375MB per message
    ; dct dt8
    (= (msg_size dt8) 0.001015625) ; 0.001015625MB per message
    ; dct dt9
    (= (msg_size dt9) 0.001015625) ; 0.001015625MB per message
    ; dct dt10
    (= (msg_size dt10) 0.0011328125) ; 0.0011328125MB per message
    ; dct dt11
    (= (msg_size dt11) 0.001376953125) ; 0.001376953125MB per message
    ; dct dt12
    (= (msg_size dt12) 0.00140625) ; 0.00140625MB per message
    ; dct dt13
    (= (msg_size dt13) 0.001943359375) ; 0.001943359375MB per message
    ; dct dt14
    (= (msg_size dt14) 0.001005859375) ; 0.001005859375MB per message
    ; dct dt15
    (= (msg_size dt15) 0.001337890625) ; 0.001337890625MB per message
    ; dct dt16
    (= (msg_size dt16) 0.00177734375) ; 0.00177734375MB per message

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
    (= (msg_max_rate dc1) 129) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 693.87890625) ; storage requirements (MB): 0.001494140625 MB/msg * 129 msg/s * 3600s

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
    (= (msg_max_rate dc3) 135) ; max possible msg/s
    
    ; dc3 - work_amounts
    (= (work_amount dc3 config) 0.000615234375) ; config size in MB
    (= (work_amount dc3 storage) 673.9453125) ; storage requirements (MB): 0.00138671875 MB/msg * 135 msg/s * 3600s

    ; dc4 - data component
    (type_of dc4 dt4) ; data type of dt4
    (available_at dc4 config cloud1) ; config is at cloud1

    ; dc4 - msg metrics
    (= (msg_max_rate dc4) 143) ; max possible msg/s
    
    ; dc4 - work_amounts
    (= (work_amount dc4 config) 0.000390625) ; config size in MB
    (= (work_amount dc4 storage) 628.41796875) ; storage requirements (MB): 0.001220703125 MB/msg * 143 msg/s * 3600s

    ; dc5 - data component
    (type_of dc5 dt5) ; data type of dt5
    (available_at dc5 config cloud1) ; config is at cloud1

    ; dc5 - msg metrics
    (= (msg_max_rate dc5) 153) ; max possible msg/s
    
    ; dc5 - work_amounts
    (= (work_amount dc5 config) 0.00056640625) ; config size in MB
    (= (work_amount dc5 storage) 634.7109375) ; storage requirements (MB): 0.00115234375 MB/msg * 153 msg/s * 3600s

    ; dc6 - data component
    (type_of dc6 dt6) ; data type of dt6
    (available_at dc6 config cloud1) ; config is at cloud1

    ; dc6 - msg metrics
    (= (msg_max_rate dc6) 160) ; max possible msg/s
    
    ; dc6 - work_amounts
    (= (work_amount dc6 config) 0.000546875) ; config size in MB
    (= (work_amount dc6 storage) 646.875) ; storage requirements (MB): 0.001123046875 MB/msg * 160 msg/s * 3600s

    ; dc7 - data component
    (type_of dc7 dt7) ; data type of dt7
    (available_at dc7 config cloud1) ; config is at cloud1

    ; dc7 - msg metrics
    (= (msg_max_rate dc7) 167) ; max possible msg/s
    
    ; dc7 - work_amounts
    (= (work_amount dc7 config) 0.000703125) ; config size in MB
    (= (work_amount dc7 storage) 1068.5390625) ; storage requirements (MB): 0.00177734375 MB/msg * 167 msg/s * 3600s

    ; dc8 - data component
    (type_of dc8 dt8) ; data type of dt8
    (available_at dc8 config cloud1) ; config is at cloud1

    ; dc8 - msg metrics
    (= (msg_max_rate dc8) 170) ; max possible msg/s
    
    ; dc8 - work_amounts
    (= (work_amount dc8 config) 0.000712890625) ; config size in MB
    (= (work_amount dc8 storage) 621.5625) ; storage requirements (MB): 0.001015625 MB/msg * 170 msg/s * 3600s

    ; dc9 - data component
    (type_of dc9 dt9) ; data type of dt9
    (available_at dc9 config cloud1) ; config is at cloud1

    ; dc9 - msg metrics
    (= (msg_max_rate dc9) 176) ; max possible msg/s
    
    ; dc9 - work_amounts
    (= (work_amount dc9 config) 0.000771484375) ; config size in MB
    (= (work_amount dc9 storage) 643.5000000000001) ; storage requirements (MB): 0.001015625 MB/msg * 176 msg/s * 3600s

    ; dc10 - data component
    (type_of dc10 dt10) ; data type of dt10
    (available_at dc10 config cloud1) ; config is at cloud1

    ; dc10 - msg metrics
    (= (msg_max_rate dc10) 180) ; max possible msg/s
    
    ; dc10 - work_amounts
    (= (work_amount dc10 config) 0.000576171875) ; config size in MB
    (= (work_amount dc10 storage) 734.0624999999999) ; storage requirements (MB): 0.0011328125 MB/msg * 180 msg/s * 3600s

    ; dc11 - data component
    (type_of dc11 dt11) ; data type of dt11
    (available_at dc11 config cloud1) ; config is at cloud1

    ; dc11 - msg metrics
    (= (msg_max_rate dc11) 187) ; max possible msg/s
    
    ; dc11 - work_amounts
    (= (work_amount dc11 config) 0.000732421875) ; config size in MB
    (= (work_amount dc11 storage) 926.9648437499999) ; storage requirements (MB): 0.001376953125 MB/msg * 187 msg/s * 3600s

    ; dc12 - data component
    (type_of dc12 dt12) ; data type of dt12
    (available_at dc12 config cloud1) ; config is at cloud1

    ; dc12 - msg metrics
    (= (msg_max_rate dc12) 198) ; max possible msg/s
    
    ; dc12 - work_amounts
    (= (work_amount dc12 config) 0.000458984375) ; config size in MB
    (= (work_amount dc12 storage) 1002.375) ; storage requirements (MB): 0.00140625 MB/msg * 198 msg/s * 3600s

    ; dc13 - data component
    (type_of dc13 dt13) ; data type of dt13
    (available_at dc13 config cloud1) ; config is at cloud1

    ; dc13 - msg metrics
    (= (msg_max_rate dc13) 203) ; max possible msg/s
    
    ; dc13 - work_amounts
    (= (work_amount dc13 config) 0.000791015625) ; config size in MB
    (= (work_amount dc13 storage) 1420.20703125) ; storage requirements (MB): 0.001943359375 MB/msg * 203 msg/s * 3600s

    ; dc14 - data component
    (type_of dc14 dt14) ; data type of dt14
    (available_at dc14 config cloud1) ; config is at cloud1

    ; dc14 - msg metrics
    (= (msg_max_rate dc14) 211) ; max possible msg/s
    
    ; dc14 - work_amounts
    (= (work_amount dc14 config) 0.00060546875) ; config size in MB
    (= (work_amount dc14 storage) 764.05078125) ; storage requirements (MB): 0.001005859375 MB/msg * 211 msg/s * 3600s

    ; dc15 - data component
    (type_of dc15 dt15) ; data type of dt15
    (available_at dc15 config cloud1) ; config is at cloud1

    ; dc15 - msg metrics
    (= (msg_max_rate dc15) 221) ; max possible msg/s
    
    ; dc15 - work_amounts
    (= (work_amount dc15 config) 0.000439453125) ; config size in MB
    (= (work_amount dc15 storage) 1064.4257812500002) ; storage requirements (MB): 0.001337890625 MB/msg * 221 msg/s * 3600s

    ; dc16 - data component
    (type_of dc16 dt16) ; data type of dt16
    (available_at dc16 config cloud1) ; config is at cloud1

    ; dc16 - msg metrics
    (= (msg_max_rate dc16) 236) ; max possible msg/s
    
    ; dc16 - work_amounts
    (= (work_amount dc16 config) 0.00068359375) ; config size in MB
    (= (work_amount dc16 storage) 1510.0312500000002) ; storage requirements (MB): 0.00177734375 MB/msg * 236 msg/s * 3600s


    ;;;;;;;;;;;;;;;;;;;;;;
    ;processing_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dp0 - processing component
    (type_of dp0 pt0)
    (= (msg_max_rate dp0) 125) ; max possible msg/s
    (= (work_amount dp0 compute) 4671) ; compute requirements
    (= (work_amount dp0 config) 0.0019921875) ; config size
    (available_at dp0 config cloud1) ; available at cloud1

    (input_format dp0 dt0)
    (output_format dp0 dt1)

    ; dp1 - processing component
    (type_of dp1 pt1)
    (= (msg_max_rate dp1) 130) ; max possible msg/s
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
    (= (msg_max_rate dp3) 140) ; max possible msg/s
    (= (work_amount dp3 compute) 6446) ; compute requirements
    (= (work_amount dp3 config) 0.0021484375) ; config size
    (available_at dp3 config cloud1) ; available at cloud1

    (input_format dp3 dt3)
    (output_format dp3 dt4)

    ; dp4 - processing component
    (type_of dp4 pt4)
    (= (msg_max_rate dp4) 146) ; max possible msg/s
    (= (work_amount dp4 compute) 3464) ; compute requirements
    (= (work_amount dp4 config) 0.0015234375) ; config size
    (available_at dp4 config cloud1) ; available at cloud1

    (input_format dp4 dt4)
    (output_format dp4 dt5)

    ; dp5 - processing component
    (type_of dp5 pt5)
    (= (msg_max_rate dp5) 156) ; max possible msg/s
    (= (work_amount dp5 compute) 4890) ; compute requirements
    (= (work_amount dp5 config) 0.001943359375) ; config size
    (available_at dp5 config cloud1) ; available at cloud1

    (input_format dp5 dt5)
    (output_format dp5 dt6)

    ; dp6 - processing component
    (type_of dp6 pt6)
    (= (msg_max_rate dp6) 167) ; max possible msg/s
    (= (work_amount dp6 compute) 3481) ; compute requirements
    (= (work_amount dp6 config) 0.00216796875) ; config size
    (available_at dp6 config cloud1) ; available at cloud1

    (input_format dp6 dt6)
    (output_format dp6 dt7)

    ; dp7 - processing component
    (type_of dp7 pt7)
    (= (msg_max_rate dp7) 170) ; max possible msg/s
    (= (work_amount dp7 compute) 5653) ; compute requirements
    (= (work_amount dp7 config) 0.001943359375) ; config size
    (available_at dp7 config cloud1) ; available at cloud1

    (input_format dp7 dt7)
    (output_format dp7 dt8)

    ; dp8 - processing component
    (type_of dp8 pt8)
    (= (msg_max_rate dp8) 175) ; max possible msg/s
    (= (work_amount dp8 compute) 6408) ; compute requirements
    (= (work_amount dp8 config) 0.00263671875) ; config size
    (available_at dp8 config cloud1) ; available at cloud1

    (input_format dp8 dt8)
    (output_format dp8 dt9)

    ; dp9 - processing component
    (type_of dp9 pt9)
    (= (msg_max_rate dp9) 176) ; max possible msg/s
    (= (work_amount dp9 compute) 3630) ; compute requirements
    (= (work_amount dp9 config) 0.0018359375) ; config size
    (available_at dp9 config cloud1) ; available at cloud1

    (input_format dp9 dt9)
    (output_format dp9 dt10)

    ; dp10 - processing component
    (type_of dp10 pt10)
    (= (msg_max_rate dp10) 187) ; max possible msg/s
    (= (work_amount dp10 compute) 5041) ; compute requirements
    (= (work_amount dp10 config) 0.0020703125) ; config size
    (available_at dp10 config cloud1) ; available at cloud1

    (input_format dp10 dt10)
    (output_format dp10 dt11)

    ; dp11 - processing component
    (type_of dp11 pt11)
    (= (msg_max_rate dp11) 192) ; max possible msg/s
    (= (work_amount dp11 compute) 5935) ; compute requirements
    (= (work_amount dp11 config) 0.001630859375) ; config size
    (available_at dp11 config cloud1) ; available at cloud1

    (input_format dp11 dt11)
    (output_format dp11 dt12)

    ; dp12 - processing component
    (type_of dp12 pt12)
    (= (msg_max_rate dp12) 201) ; max possible msg/s
    (= (work_amount dp12 compute) 4195) ; compute requirements
    (= (work_amount dp12 config) 0.002265625) ; config size
    (available_at dp12 config cloud1) ; available at cloud1

    (input_format dp12 dt12)
    (output_format dp12 dt13)

    ; dp13 - processing component
    (type_of dp13 pt13)
    (= (msg_max_rate dp13) 208) ; max possible msg/s
    (= (work_amount dp13 compute) 5084) ; compute requirements
    (= (work_amount dp13 config) 0.00146484375) ; config size
    (available_at dp13 config cloud1) ; available at cloud1

    (input_format dp13 dt13)
    (output_format dp13 dt14)

    ; dp14 - processing component
    (type_of dp14 pt14)
    (= (msg_max_rate dp14) 214) ; max possible msg/s
    (= (work_amount dp14 compute) 5889) ; compute requirements
    (= (work_amount dp14 config) 0.001513671875) ; config size
    (available_at dp14 config cloud1) ; available at cloud1

    (input_format dp14 dt14)
    (output_format dp14 dt15)

    ; dp15 - processing component
    (type_of dp15 pt15)
    (= (msg_max_rate dp15) 228) ; max possible msg/s
    (= (work_amount dp15 compute) 4119) ; compute requirements
    (= (work_amount dp15 config) 0.00150390625) ; config size
    (available_at dp15 config cloud1) ; available at cloud1

    (input_format dp15 dt15)
    (output_format dp15 dt16)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1 compute) 76816) ; 76 cores available
    (available_at dpi-cloud1 compute cloud1)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1 storage) 75670) ; 75670 MB available
    (available_at dsi-cloud1 storage cloud1)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (cloud-to-cloud)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1 network) 50083) ; 50083MB/s
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
      (has_data dc16 dsi-cloud1 dc0 dsi-cloud1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)