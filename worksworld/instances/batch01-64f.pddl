; problem: site1-interface1-wfc64-free
; domain: worksworld-simplified
; 1 sites, 1 dpis and dsis, 64 workflow components, linear chain, free goal

(define (problem site1-interface1-wfc64-free)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site
    ; workflow components
    dc0 dc1 dc2 dc3 dc4 dc5 dc6 dc7 dc8 dc9 dc10 dc11 dc12 dc13 dc14 dc15 dc16 dc17 dc18 dc19 dc20 dc21 dc22 dc23 dc24 dc25 dc26 dc27 dc28 dc29 dc30 dc31 dc32 - data_component
    dp0 dp1 dp2 dp3 dp4 dp5 dp6 dp7 dp8 dp9 dp10 dp11 dp12 dp13 dp14 dp15 dp16 dp17 dp18 dp19 dp20 dp21 dp22 dp23 dp24 dp25 dp26 dp27 dp28 dp29 dp30 dp31 - processing_component

    ; data component types:
    dt0 dt1 dt2 dt3 dt4 dt5 dt6 dt7 dt8 dt9 dt10 dt11 dt12 dt13 dt14 dt15 dt16 dt17 dt18 dt19 dt20 dt21 dt22 dt23 dt24 dt25 dt26 dt27 dt28 dt29 dt30 dt31 dt32 - data_component_type

    ; processing component types:
    pt0 pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14 pt15 pt16 pt17 pt18 pt19 pt20 pt21 pt22 pt23 pt24 pt25 pt26 pt27 pt28 pt29 pt30 pt31 - processing_component_type

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
    ; dct dt17
    (= (msg_size dt17) 0.00138671875) ; 0.00138671875MB per message
    ; dct dt18
    (= (msg_size dt18) 0.001826171875) ; 0.001826171875MB per message
    ; dct dt19
    (= (msg_size dt19) 0.001494140625) ; 0.001494140625MB per message
    ; dct dt20
    (= (msg_size dt20) 0.000966796875) ; 0.000966796875MB per message
    ; dct dt21
    (= (msg_size dt21) 0.001259765625) ; 0.001259765625MB per message
    ; dct dt22
    (= (msg_size dt22) 0.00177734375) ; 0.00177734375MB per message
    ; dct dt23
    (= (msg_size dt23) 0.00162109375) ; 0.00162109375MB per message
    ; dct dt24
    (= (msg_size dt24) 0.001494140625) ; 0.001494140625MB per message
    ; dct dt25
    (= (msg_size dt25) 0.001259765625) ; 0.001259765625MB per message
    ; dct dt26
    (= (msg_size dt26) 0.001376953125) ; 0.001376953125MB per message
    ; dct dt27
    (= (msg_size dt27) 0.001611328125) ; 0.001611328125MB per message
    ; dct dt28
    (= (msg_size dt28) 0.00115234375) ; 0.00115234375MB per message
    ; dct dt29
    (= (msg_size dt29) 0.0011328125) ; 0.0011328125MB per message
    ; dct dt30
    (= (msg_size dt30) 0.00169921875) ; 0.00169921875MB per message
    ; dct dt31
    (= (msg_size dt31) 0.001142578125) ; 0.001142578125MB per message
    ; dct dt32
    (= (msg_size dt32) 0.001650390625) ; 0.001650390625MB per message

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
    (= (msg_max_rate dc3) 140) ; max possible msg/s
    
    ; dc3 - work_amounts
    (= (work_amount dc3 config) 0.000615234375) ; config size in MB
    (= (work_amount dc3 storage) 698.9062499999999) ; storage requirements (MB): 0.00138671875 MB/msg * 140 msg/s * 3600s

    ; dc4 - data component
    (type_of dc4 dt4) ; data type of dt4
    (available_at dc4 config cloud1) ; config is at cloud1

    ; dc4 - msg metrics
    (= (msg_max_rate dc4) 146) ; max possible msg/s
    
    ; dc4 - work_amounts
    (= (work_amount dc4 config) 0.000390625) ; config size in MB
    (= (work_amount dc4 storage) 641.6015625) ; storage requirements (MB): 0.001220703125 MB/msg * 146 msg/s * 3600s

    ; dc5 - data component
    (type_of dc5 dt5) ; data type of dt5
    (available_at dc5 config cloud1) ; config is at cloud1

    ; dc5 - msg metrics
    (= (msg_max_rate dc5) 151) ; max possible msg/s
    
    ; dc5 - work_amounts
    (= (work_amount dc5 config) 0.00056640625) ; config size in MB
    (= (work_amount dc5 storage) 626.4140624999999) ; storage requirements (MB): 0.00115234375 MB/msg * 151 msg/s * 3600s

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
    (= (msg_max_rate dc8) 174) ; max possible msg/s
    
    ; dc8 - work_amounts
    (= (work_amount dc8 config) 0.000712890625) ; config size in MB
    (= (work_amount dc8 storage) 636.1875) ; storage requirements (MB): 0.001015625 MB/msg * 174 msg/s * 3600s

    ; dc9 - data component
    (type_of dc9 dt9) ; data type of dt9
    (available_at dc9 config cloud1) ; config is at cloud1

    ; dc9 - msg metrics
    (= (msg_max_rate dc9) 179) ; max possible msg/s
    
    ; dc9 - work_amounts
    (= (work_amount dc9 config) 0.000771484375) ; config size in MB
    (= (work_amount dc9 storage) 654.46875) ; storage requirements (MB): 0.001015625 MB/msg * 179 msg/s * 3600s

    ; dc10 - data component
    (type_of dc10 dt10) ; data type of dt10
    (available_at dc10 config cloud1) ; config is at cloud1

    ; dc10 - msg metrics
    (= (msg_max_rate dc10) 187) ; max possible msg/s
    
    ; dc10 - work_amounts
    (= (work_amount dc10 config) 0.000576171875) ; config size in MB
    (= (work_amount dc10 storage) 762.609375) ; storage requirements (MB): 0.0011328125 MB/msg * 187 msg/s * 3600s

    ; dc11 - data component
    (type_of dc11 dt11) ; data type of dt11
    (available_at dc11 config cloud1) ; config is at cloud1

    ; dc11 - msg metrics
    (= (msg_max_rate dc11) 193) ; max possible msg/s
    
    ; dc11 - work_amounts
    (= (work_amount dc11 config) 0.000732421875) ; config size in MB
    (= (work_amount dc11 storage) 956.70703125) ; storage requirements (MB): 0.001376953125 MB/msg * 193 msg/s * 3600s

    ; dc12 - data component
    (type_of dc12 dt12) ; data type of dt12
    (available_at dc12 config cloud1) ; config is at cloud1

    ; dc12 - msg metrics
    (= (msg_max_rate dc12) 199) ; max possible msg/s
    
    ; dc12 - work_amounts
    (= (work_amount dc12 config) 0.000458984375) ; config size in MB
    (= (work_amount dc12 storage) 1007.4375) ; storage requirements (MB): 0.00140625 MB/msg * 199 msg/s * 3600s

    ; dc13 - data component
    (type_of dc13 dt13) ; data type of dt13
    (available_at dc13 config cloud1) ; config is at cloud1

    ; dc13 - msg metrics
    (= (msg_max_rate dc13) 207) ; max possible msg/s
    
    ; dc13 - work_amounts
    (= (work_amount dc13 config) 0.000791015625) ; config size in MB
    (= (work_amount dc13 storage) 1448.19140625) ; storage requirements (MB): 0.001943359375 MB/msg * 207 msg/s * 3600s

    ; dc14 - data component
    (type_of dc14 dt14) ; data type of dt14
    (available_at dc14 config cloud1) ; config is at cloud1

    ; dc14 - msg metrics
    (= (msg_max_rate dc14) 224) ; max possible msg/s
    
    ; dc14 - work_amounts
    (= (work_amount dc14 config) 0.00060546875) ; config size in MB
    (= (work_amount dc14 storage) 811.125) ; storage requirements (MB): 0.001005859375 MB/msg * 224 msg/s * 3600s

    ; dc15 - data component
    (type_of dc15 dt15) ; data type of dt15
    (available_at dc15 config cloud1) ; config is at cloud1

    ; dc15 - msg metrics
    (= (msg_max_rate dc15) 240) ; max possible msg/s
    
    ; dc15 - work_amounts
    (= (work_amount dc15 config) 0.000439453125) ; config size in MB
    (= (work_amount dc15 storage) 1155.9375) ; storage requirements (MB): 0.001337890625 MB/msg * 240 msg/s * 3600s

    ; dc16 - data component
    (type_of dc16 dt16) ; data type of dt16
    (available_at dc16 config cloud1) ; config is at cloud1

    ; dc16 - msg metrics
    (= (msg_max_rate dc16) 240) ; max possible msg/s
    
    ; dc16 - work_amounts
    (= (work_amount dc16 config) 0.00068359375) ; config size in MB
    (= (work_amount dc16 storage) 1535.625) ; storage requirements (MB): 0.00177734375 MB/msg * 240 msg/s * 3600s

    ; dc17 - data component
    (type_of dc17 dt17) ; data type of dt17
    (available_at dc17 config cloud1) ; config is at cloud1

    ; dc17 - msg metrics
    (= (msg_max_rate dc17) 240) ; max possible msg/s
    
    ; dc17 - work_amounts
    (= (work_amount dc17 config) 0.00064453125) ; config size in MB
    (= (work_amount dc17 storage) 1198.1249999999998) ; storage requirements (MB): 0.00138671875 MB/msg * 240 msg/s * 3600s

    ; dc18 - data component
    (type_of dc18 dt18) ; data type of dt18
    (available_at dc18 config cloud1) ; config is at cloud1

    ; dc18 - msg metrics
    (= (msg_max_rate dc18) 240) ; max possible msg/s
    
    ; dc18 - work_amounts
    (= (work_amount dc18 config) 0.000390625) ; config size in MB
    (= (work_amount dc18 storage) 1577.8125) ; storage requirements (MB): 0.001826171875 MB/msg * 240 msg/s * 3600s

    ; dc19 - data component
    (type_of dc19 dt19) ; data type of dt19
    (available_at dc19 config cloud1) ; config is at cloud1

    ; dc19 - msg metrics
    (= (msg_max_rate dc19) 240) ; max possible msg/s
    
    ; dc19 - work_amounts
    (= (work_amount dc19 config) 0.000576171875) ; config size in MB
    (= (work_amount dc19 storage) 1290.9375) ; storage requirements (MB): 0.001494140625 MB/msg * 240 msg/s * 3600s

    ; dc20 - data component
    (type_of dc20 dt20) ; data type of dt20
    (available_at dc20 config cloud1) ; config is at cloud1

    ; dc20 - msg metrics
    (= (msg_max_rate dc20) 240) ; max possible msg/s
    
    ; dc20 - work_amounts
    (= (work_amount dc20 config) 0.000673828125) ; config size in MB
    (= (work_amount dc20 storage) 835.3125) ; storage requirements (MB): 0.000966796875 MB/msg * 240 msg/s * 3600s

    ; dc21 - data component
    (type_of dc21 dt21) ; data type of dt21
    (available_at dc21 config cloud1) ; config is at cloud1

    ; dc21 - msg metrics
    (= (msg_max_rate dc21) 240) ; max possible msg/s
    
    ; dc21 - work_amounts
    (= (work_amount dc21 config) 0.000654296875) ; config size in MB
    (= (work_amount dc21 storage) 1088.4375) ; storage requirements (MB): 0.001259765625 MB/msg * 240 msg/s * 3600s

    ; dc22 - data component
    (type_of dc22 dt22) ; data type of dt22
    (available_at dc22 config cloud1) ; config is at cloud1

    ; dc22 - msg metrics
    (= (msg_max_rate dc22) 240) ; max possible msg/s
    
    ; dc22 - work_amounts
    (= (work_amount dc22 config) 0.000703125) ; config size in MB
    (= (work_amount dc22 storage) 1535.625) ; storage requirements (MB): 0.00177734375 MB/msg * 240 msg/s * 3600s

    ; dc23 - data component
    (type_of dc23 dt23) ; data type of dt23
    (available_at dc23 config cloud1) ; config is at cloud1

    ; dc23 - msg metrics
    (= (msg_max_rate dc23) 240) ; max possible msg/s
    
    ; dc23 - work_amounts
    (= (work_amount dc23 config) 0.000390625) ; config size in MB
    (= (work_amount dc23 storage) 1400.625) ; storage requirements (MB): 0.00162109375 MB/msg * 240 msg/s * 3600s

    ; dc24 - data component
    (type_of dc24 dt24) ; data type of dt24
    (available_at dc24 config cloud1) ; config is at cloud1

    ; dc24 - msg metrics
    (= (msg_max_rate dc24) 240) ; max possible msg/s
    
    ; dc24 - work_amounts
    (= (work_amount dc24 config) 0.000419921875) ; config size in MB
    (= (work_amount dc24 storage) 1290.9375) ; storage requirements (MB): 0.001494140625 MB/msg * 240 msg/s * 3600s

    ; dc25 - data component
    (type_of dc25 dt25) ; data type of dt25
    (available_at dc25 config cloud1) ; config is at cloud1

    ; dc25 - msg metrics
    (= (msg_max_rate dc25) 240) ; max possible msg/s
    
    ; dc25 - work_amounts
    (= (work_amount dc25 config) 0.000693359375) ; config size in MB
    (= (work_amount dc25 storage) 1088.4375) ; storage requirements (MB): 0.001259765625 MB/msg * 240 msg/s * 3600s

    ; dc26 - data component
    (type_of dc26 dt26) ; data type of dt26
    (available_at dc26 config cloud1) ; config is at cloud1

    ; dc26 - msg metrics
    (= (msg_max_rate dc26) 240) ; max possible msg/s
    
    ; dc26 - work_amounts
    (= (work_amount dc26 config) 0.0005859375) ; config size in MB
    (= (work_amount dc26 storage) 1189.6875) ; storage requirements (MB): 0.001376953125 MB/msg * 240 msg/s * 3600s

    ; dc27 - data component
    (type_of dc27 dt27) ; data type of dt27
    (available_at dc27 config cloud1) ; config is at cloud1

    ; dc27 - msg metrics
    (= (msg_max_rate dc27) 240) ; max possible msg/s
    
    ; dc27 - work_amounts
    (= (work_amount dc27 config) 0.00044921875) ; config size in MB
    (= (work_amount dc27 storage) 1392.1875) ; storage requirements (MB): 0.001611328125 MB/msg * 240 msg/s * 3600s

    ; dc28 - data component
    (type_of dc28 dt28) ; data type of dt28
    (available_at dc28 config cloud1) ; config is at cloud1

    ; dc28 - msg metrics
    (= (msg_max_rate dc28) 240) ; max possible msg/s
    
    ; dc28 - work_amounts
    (= (work_amount dc28 config) 0.00080078125) ; config size in MB
    (= (work_amount dc28 storage) 995.625) ; storage requirements (MB): 0.00115234375 MB/msg * 240 msg/s * 3600s

    ; dc29 - data component
    (type_of dc29 dt29) ; data type of dt29
    (available_at dc29 config cloud1) ; config is at cloud1

    ; dc29 - msg metrics
    (= (msg_max_rate dc29) 240) ; max possible msg/s
    
    ; dc29 - work_amounts
    (= (work_amount dc29 config) 0.00060546875) ; config size in MB
    (= (work_amount dc29 storage) 978.7499999999999) ; storage requirements (MB): 0.0011328125 MB/msg * 240 msg/s * 3600s

    ; dc30 - data component
    (type_of dc30 dt30) ; data type of dt30
    (available_at dc30 config cloud1) ; config is at cloud1

    ; dc30 - msg metrics
    (= (msg_max_rate dc30) 240) ; max possible msg/s
    
    ; dc30 - work_amounts
    (= (work_amount dc30 config) 0.00046875) ; config size in MB
    (= (work_amount dc30 storage) 1468.125) ; storage requirements (MB): 0.00169921875 MB/msg * 240 msg/s * 3600s

    ; dc31 - data component
    (type_of dc31 dt31) ; data type of dt31
    (available_at dc31 config cloud1) ; config is at cloud1

    ; dc31 - msg metrics
    (= (msg_max_rate dc31) 240) ; max possible msg/s
    
    ; dc31 - work_amounts
    (= (work_amount dc31 config) 0.00041015625) ; config size in MB
    (= (work_amount dc31 storage) 987.1874999999999) ; storage requirements (MB): 0.001142578125 MB/msg * 240 msg/s * 3600s

    ; dc32 - data component
    (type_of dc32 dt32) ; data type of dt32
    (available_at dc32 config cloud1) ; config is at cloud1

    ; dc32 - msg metrics
    (= (msg_max_rate dc32) 240) ; max possible msg/s
    
    ; dc32 - work_amounts
    (= (work_amount dc32 config) 0.0005078125) ; config size in MB
    (= (work_amount dc32 storage) 1425.9374999999998) ; storage requirements (MB): 0.001650390625 MB/msg * 240 msg/s * 3600s


    ;;;;;;;;;;;;;;;;;;;;;;
    ;processing_components
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dp0 - processing component
    (type_of dp0 pt0)
    (= (msg_max_rate dp0) 123) ; max possible msg/s
    (= (work_amount dp0 compute) 4671) ; compute requirements
    (= (work_amount dp0 config) 0.0019921875) ; config size
    (available_at dp0 config cloud1) ; available at cloud1

    (input_format dp0 dt0)
    (output_format dp0 dt1)

    ; dp1 - processing component
    (type_of dp1 pt1)
    (= (msg_max_rate dp1) 132) ; max possible msg/s
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
    (= (msg_max_rate dp3) 143) ; max possible msg/s
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
    (= (msg_max_rate dp5) 157) ; max possible msg/s
    (= (work_amount dp5 compute) 4890) ; compute requirements
    (= (work_amount dp5 config) 0.001943359375) ; config size
    (available_at dp5 config cloud1) ; available at cloud1

    (input_format dp5 dt5)
    (output_format dp5 dt6)

    ; dp6 - processing component
    (type_of dp6 pt6)
    (= (msg_max_rate dp6) 160) ; max possible msg/s
    (= (work_amount dp6 compute) 3481) ; compute requirements
    (= (work_amount dp6 config) 0.00216796875) ; config size
    (available_at dp6 config cloud1) ; available at cloud1

    (input_format dp6 dt6)
    (output_format dp6 dt7)

    ; dp7 - processing component
    (type_of dp7 pt7)
    (= (msg_max_rate dp7) 169) ; max possible msg/s
    (= (work_amount dp7 compute) 5653) ; compute requirements
    (= (work_amount dp7 config) 0.001943359375) ; config size
    (available_at dp7 config cloud1) ; available at cloud1

    (input_format dp7 dt7)
    (output_format dp7 dt8)

    ; dp8 - processing component
    (type_of dp8 pt8)
    (= (msg_max_rate dp8) 176) ; max possible msg/s
    (= (work_amount dp8 compute) 6408) ; compute requirements
    (= (work_amount dp8 config) 0.00263671875) ; config size
    (available_at dp8 config cloud1) ; available at cloud1

    (input_format dp8 dt8)
    (output_format dp8 dt9)

    ; dp9 - processing component
    (type_of dp9 pt9)
    (= (msg_max_rate dp9) 186) ; max possible msg/s
    (= (work_amount dp9 compute) 3630) ; compute requirements
    (= (work_amount dp9 config) 0.0018359375) ; config size
    (available_at dp9 config cloud1) ; available at cloud1

    (input_format dp9 dt9)
    (output_format dp9 dt10)

    ; dp10 - processing component
    (type_of dp10 pt10)
    (= (msg_max_rate dp10) 188) ; max possible msg/s
    (= (work_amount dp10 compute) 5041) ; compute requirements
    (= (work_amount dp10 config) 0.0020703125) ; config size
    (available_at dp10 config cloud1) ; available at cloud1

    (input_format dp10 dt10)
    (output_format dp10 dt11)

    ; dp11 - processing component
    (type_of dp11 pt11)
    (= (msg_max_rate dp11) 198) ; max possible msg/s
    (= (work_amount dp11 compute) 5935) ; compute requirements
    (= (work_amount dp11 config) 0.001630859375) ; config size
    (available_at dp11 config cloud1) ; available at cloud1

    (input_format dp11 dt11)
    (output_format dp11 dt12)

    ; dp12 - processing component
    (type_of dp12 pt12)
    (= (msg_max_rate dp12) 200) ; max possible msg/s
    (= (work_amount dp12 compute) 4195) ; compute requirements
    (= (work_amount dp12 config) 0.002265625) ; config size
    (available_at dp12 config cloud1) ; available at cloud1

    (input_format dp12 dt12)
    (output_format dp12 dt13)

    ; dp13 - processing component
    (type_of dp13 pt13)
    (= (msg_max_rate dp13) 215) ; max possible msg/s
    (= (work_amount dp13 compute) 5084) ; compute requirements
    (= (work_amount dp13 config) 0.00146484375) ; config size
    (available_at dp13 config cloud1) ; available at cloud1

    (input_format dp13 dt13)
    (output_format dp13 dt14)

    ; dp14 - processing component
    (type_of dp14 pt14)
    (= (msg_max_rate dp14) 232) ; max possible msg/s
    (= (work_amount dp14 compute) 5889) ; compute requirements
    (= (work_amount dp14 config) 0.001513671875) ; config size
    (available_at dp14 config cloud1) ; available at cloud1

    (input_format dp14 dt14)
    (output_format dp14 dt15)

    ; dp15 - processing component
    (type_of dp15 pt15)
    (= (msg_max_rate dp15) 240) ; max possible msg/s
    (= (work_amount dp15 compute) 4119) ; compute requirements
    (= (work_amount dp15 config) 0.00150390625) ; config size
    (available_at dp15 config cloud1) ; available at cloud1

    (input_format dp15 dt15)
    (output_format dp15 dt16)

    ; dp16 - processing component
    (type_of dp16 pt16)
    (= (msg_max_rate dp16) 240) ; max possible msg/s
    (= (work_amount dp16 compute) 4701) ; compute requirements
    (= (work_amount dp16 config) 0.001513671875) ; config size
    (available_at dp16 config cloud1) ; available at cloud1

    (input_format dp16 dt16)
    (output_format dp16 dt17)

    ; dp17 - processing component
    (type_of dp17 pt17)
    (= (msg_max_rate dp17) 240) ; max possible msg/s
    (= (work_amount dp17 compute) 6419) ; compute requirements
    (= (work_amount dp17 config) 0.002177734375) ; config size
    (available_at dp17 config cloud1) ; available at cloud1

    (input_format dp17 dt17)
    (output_format dp17 dt18)

    ; dp18 - processing component
    (type_of dp18 pt18)
    (= (msg_max_rate dp18) 240) ; max possible msg/s
    (= (work_amount dp18 compute) 4976) ; compute requirements
    (= (work_amount dp18 config) 0.0015234375) ; config size
    (available_at dp18 config cloud1) ; available at cloud1

    (input_format dp18 dt18)
    (output_format dp18 dt19)

    ; dp19 - processing component
    (type_of dp19 pt19)
    (= (msg_max_rate dp19) 240) ; max possible msg/s
    (= (work_amount dp19 compute) 4934) ; compute requirements
    (= (work_amount dp19 config) 0.002060546875) ; config size
    (available_at dp19 config cloud1) ; available at cloud1

    (input_format dp19 dt19)
    (output_format dp19 dt20)

    ; dp20 - processing component
    (type_of dp20 pt20)
    (= (msg_max_rate dp20) 240) ; max possible msg/s
    (= (work_amount dp20 compute) 3998) ; compute requirements
    (= (work_amount dp20 config) 0.001591796875) ; config size
    (available_at dp20 config cloud1) ; available at cloud1

    (input_format dp20 dt20)
    (output_format dp20 dt21)

    ; dp21 - processing component
    (type_of dp21 pt21)
    (= (msg_max_rate dp21) 240) ; max possible msg/s
    (= (work_amount dp21 compute) 4870) ; compute requirements
    (= (work_amount dp21 config) 0.002421875) ; config size
    (available_at dp21 config cloud1) ; available at cloud1

    (input_format dp21 dt21)
    (output_format dp21 dt22)

    ; dp22 - processing component
    (type_of dp22 pt22)
    (= (msg_max_rate dp22) 240) ; max possible msg/s
    (= (work_amount dp22 compute) 5257) ; compute requirements
    (= (work_amount dp22 config) 0.001455078125) ; config size
    (available_at dp22 config cloud1) ; available at cloud1

    (input_format dp22 dt22)
    (output_format dp22 dt23)

    ; dp23 - processing component
    (type_of dp23 pt23)
    (= (msg_max_rate dp23) 240) ; max possible msg/s
    (= (work_amount dp23 compute) 3592) ; compute requirements
    (= (work_amount dp23 config) 0.00248046875) ; config size
    (available_at dp23 config cloud1) ; available at cloud1

    (input_format dp23 dt23)
    (output_format dp23 dt24)

    ; dp24 - processing component
    (type_of dp24 pt24)
    (= (msg_max_rate dp24) 240) ; max possible msg/s
    (= (work_amount dp24 compute) 4571) ; compute requirements
    (= (work_amount dp24 config) 0.002431640625) ; config size
    (available_at dp24 config cloud1) ; available at cloud1

    (input_format dp24 dt24)
    (output_format dp24 dt25)

    ; dp25 - processing component
    (type_of dp25 pt25)
    (= (msg_max_rate dp25) 240) ; max possible msg/s
    (= (work_amount dp25 compute) 3780) ; compute requirements
    (= (work_amount dp25 config) 0.002431640625) ; config size
    (available_at dp25 config cloud1) ; available at cloud1

    (input_format dp25 dt25)
    (output_format dp25 dt26)

    ; dp26 - processing component
    (type_of dp26 pt26)
    (= (msg_max_rate dp26) 240) ; max possible msg/s
    (= (work_amount dp26 compute) 5455) ; compute requirements
    (= (work_amount dp26 config) 0.001982421875) ; config size
    (available_at dp26 config cloud1) ; available at cloud1

    (input_format dp26 dt26)
    (output_format dp26 dt27)

    ; dp27 - processing component
    (type_of dp27 pt27)
    (= (msg_max_rate dp27) 240) ; max possible msg/s
    (= (work_amount dp27 compute) 5081) ; compute requirements
    (= (work_amount dp27 config) 0.002646484375) ; config size
    (available_at dp27 config cloud1) ; available at cloud1

    (input_format dp27 dt27)
    (output_format dp27 dt28)

    ; dp28 - processing component
    (type_of dp28 pt28)
    (= (msg_max_rate dp28) 240) ; max possible msg/s
    (= (work_amount dp28 compute) 6056) ; compute requirements
    (= (work_amount dp28 config) 0.001572265625) ; config size
    (available_at dp28 config cloud1) ; available at cloud1

    (input_format dp28 dt28)
    (output_format dp28 dt29)

    ; dp29 - processing component
    (type_of dp29 pt29)
    (= (msg_max_rate dp29) 240) ; max possible msg/s
    (= (work_amount dp29 compute) 3559) ; compute requirements
    (= (work_amount dp29 config) 0.002138671875) ; config size
    (available_at dp29 config cloud1) ; available at cloud1

    (input_format dp29 dt29)
    (output_format dp29 dt30)

    ; dp30 - processing component
    (type_of dp30 pt30)
    (= (msg_max_rate dp30) 240) ; max possible msg/s
    (= (work_amount dp30 compute) 3285) ; compute requirements
    (= (work_amount dp30 config) 0.002021484375) ; config size
    (available_at dp30 config cloud1) ; available at cloud1

    (input_format dp30 dt30)
    (output_format dp30 dt31)

    ; dp31 - processing component
    (type_of dp31 pt31)
    (= (msg_max_rate dp31) 240) ; max possible msg/s
    (= (work_amount dp31 compute) 4131) ; compute requirements
    (= (work_amount dp31 config) 0.00263671875) ; config size
    (available_at dp31 config cloud1) ; available at cloud1

    (input_format dp31 dt31)
    (output_format dp31 dt32)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 188590) ; 188 cores
    (= (resource_available dpi-cloud1 compute) 157299) ; 157 cores available
    (available_at dpi-cloud1 compute cloud1)

    
    ; dsi-cloud1 (cloud storage resources)
    (= (resource_total dsi-cloud1 storage) 95365) ; 95365 MB
    (= (resource_available dsi-cloud1 storage) 80554) ; 80554 MB available
    (available_at dsi-cloud1 storage cloud1)

    ;;;;;;;;;;;;;;;;;;;;;;
    ; network resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; Direct link - cloud1 to cloud1 (cloud-to-cloud)
    (linked link-cloud1-cloud1 cloud1 cloud1)
    (= (resource_total link-cloud1-cloud1 network) 60000) ; 60000MB/s
    (= (resource_available link-cloud1-cloud1 network) 52041) ; 52041MB/s
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
      (has_data dc32 dsi-cloud1 dc0 dsi-cloud1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)