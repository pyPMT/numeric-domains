; problem: site1-interface1-wfc16-explicit
; domain: worksworld-simplified
; 1 sites, 1 dpis and dsis, 16 workflow components, linear chain, explicit goal

(define (problem site1-interface1-wfc16-explicit)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site
    ; workflow components
    dc0 dc1 dc2 dc3 dc4 dc5 dc6 dc7 dc8 - data_component
    dp0 dp1 dp2 dp3 dp4 dp5 dp6 dp7 - processing_component

    ; data component types:
    dt0 dt1 dt2 dt3 dt4 dt5 dt6 dt7 dt8 - data_component_type

    ; processing component types:
    pt0 pt1 pt2 pt3 pt4 pt5 pt6 pt7 - processing_component_type

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

    ; dc2 - data component
    (type_of dc2 dt2) ; data type of dt2
    (available_at dc2 config cloud1) ; config is at cloud1

    ; dc2 - msg metrics
    (= (msg_max_rate dc2) 134) ; max possible msg/s
    
    ; dc2 - work_amounts
    (= (work_amount dc2 config) 0.000595703125) ; config size in MB
    (= (work_amount dc2 storage) 692.5078125) ; storage requirements (MB): 0.001435546875 MB/msg * 134 msg/s * 3600s

    ; dc3 - data component
    (type_of dc3 dt3) ; data type of dt3
    (available_at dc3 config cloud1) ; config is at cloud1

    ; dc3 - msg metrics
    (= (msg_max_rate dc3) 141) ; max possible msg/s
    
    ; dc3 - work_amounts
    (= (work_amount dc3 config) 0.000615234375) ; config size in MB
    (= (work_amount dc3 storage) 703.8984375) ; storage requirements (MB): 0.00138671875 MB/msg * 141 msg/s * 3600s

    ; dc4 - data component
    (type_of dc4 dt4) ; data type of dt4
    (available_at dc4 config cloud1) ; config is at cloud1

    ; dc4 - msg metrics
    (= (msg_max_rate dc4) 150) ; max possible msg/s
    
    ; dc4 - work_amounts
    (= (work_amount dc4 config) 0.000390625) ; config size in MB
    (= (work_amount dc4 storage) 659.1796875) ; storage requirements (MB): 0.001220703125 MB/msg * 150 msg/s * 3600s

    ; dc5 - data component
    (type_of dc5 dt5) ; data type of dt5
    (available_at dc5 config cloud1) ; config is at cloud1

    ; dc5 - msg metrics
    (= (msg_max_rate dc5) 150) ; max possible msg/s
    
    ; dc5 - work_amounts
    (= (work_amount dc5 config) 0.00056640625) ; config size in MB
    (= (work_amount dc5 storage) 622.265625) ; storage requirements (MB): 0.00115234375 MB/msg * 150 msg/s * 3600s

    ; dc6 - data component
    (type_of dc6 dt6) ; data type of dt6
    (available_at dc6 config cloud1) ; config is at cloud1

    ; dc6 - msg metrics
    (= (msg_max_rate dc6) 156) ; max possible msg/s
    
    ; dc6 - work_amounts
    (= (work_amount dc6 config) 0.000546875) ; config size in MB
    (= (work_amount dc6 storage) 630.7031249999999) ; storage requirements (MB): 0.001123046875 MB/msg * 156 msg/s * 3600s

    ; dc7 - data component
    (type_of dc7 dt7) ; data type of dt7
    (available_at dc7 config cloud1) ; config is at cloud1

    ; dc7 - msg metrics
    (= (msg_max_rate dc7) 164) ; max possible msg/s
    
    ; dc7 - work_amounts
    (= (work_amount dc7 config) 0.000703125) ; config size in MB
    (= (work_amount dc7 storage) 1049.34375) ; storage requirements (MB): 0.00177734375 MB/msg * 164 msg/s * 3600s

    ; dc8 - data component
    (type_of dc8 dt8) ; data type of dt8
    (available_at dc8 config cloud1) ; config is at cloud1

    ; dc8 - msg metrics
    (= (msg_max_rate dc8) 167) ; max possible msg/s
    
    ; dc8 - work_amounts
    (= (work_amount dc8 config) 0.000712890625) ; config size in MB
    (= (work_amount dc8 storage) 610.59375) ; storage requirements (MB): 0.001015625 MB/msg * 167 msg/s * 3600s


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

    ; dp1 - processing component
    (type_of dp1 pt1)
    (= (msg_max_rate dp1) 129) ; max possible msg/s
    (= (work_amount dp1 compute) 3381) ; compute requirements
    (= (work_amount dp1 config) 0.002216796875) ; config size
    (available_at dp1 config cloud1) ; available at cloud1

    (input_format dp1 dt1)
    (output_format dp1 dt2)

    ; dp2 - processing component
    (type_of dp2 pt2)
    (= (msg_max_rate dp2) 137) ; max possible msg/s
    (= (work_amount dp2 compute) 3920) ; compute requirements
    (= (work_amount dp2 config) 0.002109375) ; config size
    (available_at dp2 config cloud1) ; available at cloud1

    (input_format dp2 dt2)
    (output_format dp2 dt3)

    ; dp3 - processing component
    (type_of dp3 pt3)
    (= (msg_max_rate dp3) 147) ; max possible msg/s
    (= (work_amount dp3 compute) 6446) ; compute requirements
    (= (work_amount dp3 config) 0.0021484375) ; config size
    (available_at dp3 config cloud1) ; available at cloud1

    (input_format dp3 dt3)
    (output_format dp3 dt4)

    ; dp4 - processing component
    (type_of dp4 pt4)
    (= (msg_max_rate dp4) 150) ; max possible msg/s
    (= (work_amount dp4 compute) 3464) ; compute requirements
    (= (work_amount dp4 config) 0.0015234375) ; config size
    (available_at dp4 config cloud1) ; available at cloud1

    (input_format dp4 dt4)
    (output_format dp4 dt5)

    ; dp5 - processing component
    (type_of dp5 pt5)
    (= (msg_max_rate dp5) 154) ; max possible msg/s
    (= (work_amount dp5 compute) 4890) ; compute requirements
    (= (work_amount dp5 config) 0.001943359375) ; config size
    (available_at dp5 config cloud1) ; available at cloud1

    (input_format dp5 dt5)
    (output_format dp5 dt6)

    ; dp6 - processing component
    (type_of dp6 pt6)
    (= (msg_max_rate dp6) 157) ; max possible msg/s
    (= (work_amount dp6 compute) 3481) ; compute requirements
    (= (work_amount dp6 config) 0.00216796875) ; config size
    (available_at dp6 config cloud1) ; available at cloud1

    (input_format dp6 dt6)
    (output_format dp6 dt7)

    ; dp7 - processing component
    (type_of dp7 pt7)
    (= (msg_max_rate dp7) 164) ; max possible msg/s
    (= (work_amount dp7 compute) 5653) ; compute requirements
    (= (work_amount dp7 config) 0.001943359375) ; config size
    (available_at dp7 config cloud1) ; available at cloud1

    (input_format dp7 dt7)
    (output_format dp7 dt8)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 100000) ; 100 cores
    (= (resource_available dpi-cloud1 compute) 57040) ; 57 cores available
    (available_at dpi-cloud1 compute cloud1)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1 storage) 61021) ; 61021 MB available
    (available_at dsi-cloud1 storage cloud1)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (cloud-to-cloud)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1 network) 44208) ; 44208MB/s
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
      (connected link-cloud1-cloud1 dp0 dpi-cloud1 dc0 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp0 dpi-cloud1 dc1 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp1 dpi-cloud1 dc1 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp1 dpi-cloud1 dc2 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp2 dpi-cloud1 dc2 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp2 dpi-cloud1 dc3 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp3 dpi-cloud1 dc3 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp3 dpi-cloud1 dc4 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp4 dpi-cloud1 dc4 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp4 dpi-cloud1 dc5 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp5 dpi-cloud1 dc5 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp5 dpi-cloud1 dc6 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp6 dpi-cloud1 dc6 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp6 dpi-cloud1 dc7 dsi-cloud1 output)
      (connected link-cloud1-cloud1 dp7 dpi-cloud1 dc7 dsi-cloud1 input)
      (connected link-cloud1-cloud1 dp7 dpi-cloud1 dc8 dsi-cloud1 output)
      (has_data dc8 dsi-cloud1 dc0 dsi-cloud1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)