; problem: site1-interface1-wfc128-free
; domain: worksworld-simplified
; 1 sites, 1 dpis and dsis, 128 workflow components, linear chain, free goal

(define (problem site1-interface1-wfc128-free)(:domain worksworld-simplified)

  (:objects
    ; sites: tractability-test hierarchical structure
    ; Clouds sites
    cloud1 - site
    ; workflow components
    dc0 dc1 dc2 dc3 dc4 dc5 dc6 dc7 dc8 dc9 dc10 dc11 dc12 dc13 dc14 dc15 dc16 dc17 dc18 dc19 dc20 dc21 dc22 dc23 dc24 dc25 dc26 dc27 dc28 dc29 dc30 dc31 dc32 dc33 dc34 dc35 dc36 dc37 dc38 dc39 dc40 dc41 dc42 dc43 dc44 dc45 dc46 dc47 dc48 dc49 dc50 dc51 dc52 dc53 dc54 dc55 dc56 dc57 dc58 dc59 dc60 dc61 dc62 dc63 dc64 - data_component
    dp0 dp1 dp2 dp3 dp4 dp5 dp6 dp7 dp8 dp9 dp10 dp11 dp12 dp13 dp14 dp15 dp16 dp17 dp18 dp19 dp20 dp21 dp22 dp23 dp24 dp25 dp26 dp27 dp28 dp29 dp30 dp31 dp32 dp33 dp34 dp35 dp36 dp37 dp38 dp39 dp40 dp41 dp42 dp43 dp44 dp45 dp46 dp47 dp48 dp49 dp50 dp51 dp52 dp53 dp54 dp55 dp56 dp57 dp58 dp59 dp60 dp61 dp62 dp63 - processing_component

    ; data component types:
    dt0 dt1 dt2 dt3 dt4 dt5 dt6 dt7 dt8 dt9 dt10 dt11 dt12 dt13 dt14 dt15 dt16 dt17 dt18 dt19 dt20 dt21 dt22 dt23 dt24 dt25 dt26 dt27 dt28 dt29 dt30 dt31 dt32 dt33 dt34 dt35 dt36 dt37 dt38 dt39 dt40 dt41 dt42 dt43 dt44 dt45 dt46 dt47 dt48 dt49 dt50 dt51 dt52 dt53 dt54 dt55 dt56 dt57 dt58 dt59 dt60 dt61 dt62 dt63 dt64 - data_component_type

    ; processing component types:
    pt0 pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14 pt15 pt16 pt17 pt18 pt19 pt20 pt21 pt22 pt23 pt24 pt25 pt26 pt27 pt28 pt29 pt30 pt31 pt32 pt33 pt34 pt35 pt36 pt37 pt38 pt39 pt40 pt41 pt42 pt43 pt44 pt45 pt46 pt47 pt48 pt49 pt50 pt51 pt52 pt53 pt54 pt55 pt56 pt57 pt58 pt59 pt60 pt61 pt62 pt63 - processing_component_type

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
    ; dct dt33
    (= (msg_size dt33) 0.00162109375) ; 0.00162109375MB per message
    ; dct dt34
    (= (msg_size dt34) 0.00146484375) ; 0.00146484375MB per message
    ; dct dt35
    (= (msg_size dt35) 0.00103515625) ; 0.00103515625MB per message
    ; dct dt36
    (= (msg_size dt36) 0.001845703125) ; 0.001845703125MB per message
    ; dct dt37
    (= (msg_size dt37) 0.002001953125) ; 0.002001953125MB per message
    ; dct dt38
    (= (msg_size dt38) 0.001201171875) ; 0.001201171875MB per message
    ; dct dt39
    (= (msg_size dt39) 0.001689453125) ; 0.001689453125MB per message
    ; dct dt40
    (= (msg_size dt40) 0.001103515625) ; 0.001103515625MB per message
    ; dct dt41
    (= (msg_size dt41) 0.0015234375) ; 0.0015234375MB per message
    ; dct dt42
    (= (msg_size dt42) 0.00166015625) ; 0.00166015625MB per message
    ; dct dt43
    (= (msg_size dt43) 0.001328125) ; 0.001328125MB per message
    ; dct dt44
    (= (msg_size dt44) 0.00109375) ; 0.00109375MB per message
    ; dct dt45
    (= (msg_size dt45) 0.001044921875) ; 0.001044921875MB per message
    ; dct dt46
    (= (msg_size dt46) 0.001396484375) ; 0.001396484375MB per message
    ; dct dt47
    (= (msg_size dt47) 0.001513671875) ; 0.001513671875MB per message
    ; dct dt48
    (= (msg_size dt48) 0.00111328125) ; 0.00111328125MB per message
    ; dct dt49
    (= (msg_size dt49) 0.00140625) ; 0.00140625MB per message
    ; dct dt50
    (= (msg_size dt50) 0.00115234375) ; 0.00115234375MB per message
    ; dct dt51
    (= (msg_size dt51) 0.00169921875) ; 0.00169921875MB per message
    ; dct dt52
    (= (msg_size dt52) 0.001494140625) ; 0.001494140625MB per message
    ; dct dt53
    (= (msg_size dt53) 0.0018359375) ; 0.0018359375MB per message
    ; dct dt54
    (= (msg_size dt54) 0.001669921875) ; 0.001669921875MB per message
    ; dct dt55
    (= (msg_size dt55) 0.00126953125) ; 0.00126953125MB per message
    ; dct dt56
    (= (msg_size dt56) 0.0016796875) ; 0.0016796875MB per message
    ; dct dt57
    (= (msg_size dt57) 0.001650390625) ; 0.001650390625MB per message
    ; dct dt58
    (= (msg_size dt58) 0.0013671875) ; 0.0013671875MB per message
    ; dct dt59
    (= (msg_size dt59) 0.001474609375) ; 0.001474609375MB per message
    ; dct dt60
    (= (msg_size dt60) 0.00109375) ; 0.00109375MB per message
    ; dct dt61
    (= (msg_size dt61) 0.0012890625) ; 0.0012890625MB per message
    ; dct dt62
    (= (msg_size dt62) 0.0019921875) ; 0.0019921875MB per message
    ; dct dt63
    (= (msg_size dt63) 0.001435546875) ; 0.001435546875MB per message
    ; dct dt64
    (= (msg_size dt64) 0.00126953125) ; 0.00126953125MB per message

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
    (= (msg_max_rate dc1) 122) ; max possible msg/s
    
    ; dc1 - work_amounts
    (= (work_amount dc1 config) 0.000517578125) ; config size in MB
    (= (work_amount dc1 storage) 656.2265625) ; storage requirements (MB): 0.001494140625 MB/msg * 122 msg/s * 3600s

    ; dc2 - data component
    (type_of dc2 dt2) ; data type of dt2
    (available_at dc2 config cloud1) ; config is at cloud1

    ; dc2 - msg metrics
    (= (msg_max_rate dc2) 128) ; max possible msg/s
    
    ; dc2 - work_amounts
    (= (work_amount dc2 config) 0.000595703125) ; config size in MB
    (= (work_amount dc2 storage) 661.5) ; storage requirements (MB): 0.001435546875 MB/msg * 128 msg/s * 3600s

    ; dc3 - data component
    (type_of dc3 dt3) ; data type of dt3
    (available_at dc3 config cloud1) ; config is at cloud1

    ; dc3 - msg metrics
    (= (msg_max_rate dc3) 132) ; max possible msg/s
    
    ; dc3 - work_amounts
    (= (work_amount dc3 config) 0.000615234375) ; config size in MB
    (= (work_amount dc3 storage) 658.96875) ; storage requirements (MB): 0.00138671875 MB/msg * 132 msg/s * 3600s

    ; dc4 - data component
    (type_of dc4 dt4) ; data type of dt4
    (available_at dc4 config cloud1) ; config is at cloud1

    ; dc4 - msg metrics
    (= (msg_max_rate dc4) 136) ; max possible msg/s
    
    ; dc4 - work_amounts
    (= (work_amount dc4 config) 0.000390625) ; config size in MB
    (= (work_amount dc4 storage) 597.65625) ; storage requirements (MB): 0.001220703125 MB/msg * 136 msg/s * 3600s

    ; dc5 - data component
    (type_of dc5 dt5) ; data type of dt5
    (available_at dc5 config cloud1) ; config is at cloud1

    ; dc5 - msg metrics
    (= (msg_max_rate dc5) 145) ; max possible msg/s
    
    ; dc5 - work_amounts
    (= (work_amount dc5 config) 0.00056640625) ; config size in MB
    (= (work_amount dc5 storage) 601.5234375) ; storage requirements (MB): 0.00115234375 MB/msg * 145 msg/s * 3600s

    ; dc6 - data component
    (type_of dc6 dt6) ; data type of dt6
    (available_at dc6 config cloud1) ; config is at cloud1

    ; dc6 - msg metrics
    (= (msg_max_rate dc6) 149) ; max possible msg/s
    
    ; dc6 - work_amounts
    (= (work_amount dc6 config) 0.000546875) ; config size in MB
    (= (work_amount dc6 storage) 602.40234375) ; storage requirements (MB): 0.001123046875 MB/msg * 149 msg/s * 3600s

    ; dc7 - data component
    (type_of dc7 dt7) ; data type of dt7
    (available_at dc7 config cloud1) ; config is at cloud1

    ; dc7 - msg metrics
    (= (msg_max_rate dc7) 153) ; max possible msg/s
    
    ; dc7 - work_amounts
    (= (work_amount dc7 config) 0.000703125) ; config size in MB
    (= (work_amount dc7 storage) 978.9609375000001) ; storage requirements (MB): 0.00177734375 MB/msg * 153 msg/s * 3600s

    ; dc8 - data component
    (type_of dc8 dt8) ; data type of dt8
    (available_at dc8 config cloud1) ; config is at cloud1

    ; dc8 - msg metrics
    (= (msg_max_rate dc8) 162) ; max possible msg/s
    
    ; dc8 - work_amounts
    (= (work_amount dc8 config) 0.000712890625) ; config size in MB
    (= (work_amount dc8 storage) 592.3125000000001) ; storage requirements (MB): 0.001015625 MB/msg * 162 msg/s * 3600s

    ; dc9 - data component
    (type_of dc9 dt9) ; data type of dt9
    (available_at dc9 config cloud1) ; config is at cloud1

    ; dc9 - msg metrics
    (= (msg_max_rate dc9) 174) ; max possible msg/s
    
    ; dc9 - work_amounts
    (= (work_amount dc9 config) 0.000771484375) ; config size in MB
    (= (work_amount dc9 storage) 636.1875) ; storage requirements (MB): 0.001015625 MB/msg * 174 msg/s * 3600s

    ; dc10 - data component
    (type_of dc10 dt10) ; data type of dt10
    (available_at dc10 config cloud1) ; config is at cloud1

    ; dc10 - msg metrics
    (= (msg_max_rate dc10) 178) ; max possible msg/s
    
    ; dc10 - work_amounts
    (= (work_amount dc10 config) 0.000576171875) ; config size in MB
    (= (work_amount dc10 storage) 725.90625) ; storage requirements (MB): 0.0011328125 MB/msg * 178 msg/s * 3600s

    ; dc11 - data component
    (type_of dc11 dt11) ; data type of dt11
    (available_at dc11 config cloud1) ; config is at cloud1

    ; dc11 - msg metrics
    (= (msg_max_rate dc11) 184) ; max possible msg/s
    
    ; dc11 - work_amounts
    (= (work_amount dc11 config) 0.000732421875) ; config size in MB
    (= (work_amount dc11 storage) 912.09375) ; storage requirements (MB): 0.001376953125 MB/msg * 184 msg/s * 3600s

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
    (= (msg_max_rate dc13) 204) ; max possible msg/s
    
    ; dc13 - work_amounts
    (= (work_amount dc13 config) 0.000791015625) ; config size in MB
    (= (work_amount dc13 storage) 1427.203125) ; storage requirements (MB): 0.001943359375 MB/msg * 204 msg/s * 3600s

    ; dc14 - data component
    (type_of dc14 dt14) ; data type of dt14
    (available_at dc14 config cloud1) ; config is at cloud1

    ; dc14 - msg metrics
    (= (msg_max_rate dc14) 205) ; max possible msg/s
    
    ; dc14 - work_amounts
    (= (work_amount dc14 config) 0.00060546875) ; config size in MB
    (= (work_amount dc14 storage) 742.32421875) ; storage requirements (MB): 0.001005859375 MB/msg * 205 msg/s * 3600s

    ; dc15 - data component
    (type_of dc15 dt15) ; data type of dt15
    (available_at dc15 config cloud1) ; config is at cloud1

    ; dc15 - msg metrics
    (= (msg_max_rate dc15) 222) ; max possible msg/s
    
    ; dc15 - work_amounts
    (= (work_amount dc15 config) 0.000439453125) ; config size in MB
    (= (work_amount dc15 storage) 1069.2421875000002) ; storage requirements (MB): 0.001337890625 MB/msg * 222 msg/s * 3600s

    ; dc16 - data component
    (type_of dc16 dt16) ; data type of dt16
    (available_at dc16 config cloud1) ; config is at cloud1

    ; dc16 - msg metrics
    (= (msg_max_rate dc16) 238) ; max possible msg/s
    
    ; dc16 - work_amounts
    (= (work_amount dc16 config) 0.00068359375) ; config size in MB
    (= (work_amount dc16 storage) 1522.828125) ; storage requirements (MB): 0.00177734375 MB/msg * 238 msg/s * 3600s

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

    ; dc33 - data component
    (type_of dc33 dt33) ; data type of dt33
    (available_at dc33 config cloud1) ; config is at cloud1

    ; dc33 - msg metrics
    (= (msg_max_rate dc33) 240) ; max possible msg/s
    
    ; dc33 - work_amounts
    (= (work_amount dc33 config) 0.00056640625) ; config size in MB
    (= (work_amount dc33 storage) 1400.625) ; storage requirements (MB): 0.00162109375 MB/msg * 240 msg/s * 3600s

    ; dc34 - data component
    (type_of dc34 dt34) ; data type of dt34
    (available_at dc34 config cloud1) ; config is at cloud1

    ; dc34 - msg metrics
    (= (msg_max_rate dc34) 240) ; max possible msg/s
    
    ; dc34 - work_amounts
    (= (work_amount dc34 config) 0.000537109375) ; config size in MB
    (= (work_amount dc34 storage) 1265.625) ; storage requirements (MB): 0.00146484375 MB/msg * 240 msg/s * 3600s

    ; dc35 - data component
    (type_of dc35 dt35) ; data type of dt35
    (available_at dc35 config cloud1) ; config is at cloud1

    ; dc35 - msg metrics
    (= (msg_max_rate dc35) 240) ; max possible msg/s
    
    ; dc35 - work_amounts
    (= (work_amount dc35 config) 0.00048828125) ; config size in MB
    (= (work_amount dc35 storage) 894.375) ; storage requirements (MB): 0.00103515625 MB/msg * 240 msg/s * 3600s

    ; dc36 - data component
    (type_of dc36 dt36) ; data type of dt36
    (available_at dc36 config cloud1) ; config is at cloud1

    ; dc36 - msg metrics
    (= (msg_max_rate dc36) 240) ; max possible msg/s
    
    ; dc36 - work_amounts
    (= (work_amount dc36 config) 0.00060546875) ; config size in MB
    (= (work_amount dc36 storage) 1594.6874999999998) ; storage requirements (MB): 0.001845703125 MB/msg * 240 msg/s * 3600s

    ; dc37 - data component
    (type_of dc37 dt37) ; data type of dt37
    (available_at dc37 config cloud1) ; config is at cloud1

    ; dc37 - msg metrics
    (= (msg_max_rate dc37) 240) ; max possible msg/s
    
    ; dc37 - work_amounts
    (= (work_amount dc37 config) 0.000537109375) ; config size in MB
    (= (work_amount dc37 storage) 1729.6874999999998) ; storage requirements (MB): 0.002001953125 MB/msg * 240 msg/s * 3600s

    ; dc38 - data component
    (type_of dc38 dt38) ; data type of dt38
    (available_at dc38 config cloud1) ; config is at cloud1

    ; dc38 - msg metrics
    (= (msg_max_rate dc38) 240) ; max possible msg/s
    
    ; dc38 - work_amounts
    (= (work_amount dc38 config) 0.000546875) ; config size in MB
    (= (work_amount dc38 storage) 1037.8125) ; storage requirements (MB): 0.001201171875 MB/msg * 240 msg/s * 3600s

    ; dc39 - data component
    (type_of dc39 dt39) ; data type of dt39
    (available_at dc39 config cloud1) ; config is at cloud1

    ; dc39 - msg metrics
    (= (msg_max_rate dc39) 240) ; max possible msg/s
    
    ; dc39 - work_amounts
    (= (work_amount dc39 config) 0.000751953125) ; config size in MB
    (= (work_amount dc39 storage) 1459.6875) ; storage requirements (MB): 0.001689453125 MB/msg * 240 msg/s * 3600s

    ; dc40 - data component
    (type_of dc40 dt40) ; data type of dt40
    (available_at dc40 config cloud1) ; config is at cloud1

    ; dc40 - msg metrics
    (= (msg_max_rate dc40) 240) ; max possible msg/s
    
    ; dc40 - work_amounts
    (= (work_amount dc40 config) 0.000810546875) ; config size in MB
    (= (work_amount dc40 storage) 953.4375) ; storage requirements (MB): 0.001103515625 MB/msg * 240 msg/s * 3600s

    ; dc41 - data component
    (type_of dc41 dt41) ; data type of dt41
    (available_at dc41 config cloud1) ; config is at cloud1

    ; dc41 - msg metrics
    (= (msg_max_rate dc41) 240) ; max possible msg/s
    
    ; dc41 - work_amounts
    (= (work_amount dc41 config) 0.00056640625) ; config size in MB
    (= (work_amount dc41 storage) 1316.2500000000002) ; storage requirements (MB): 0.0015234375 MB/msg * 240 msg/s * 3600s

    ; dc42 - data component
    (type_of dc42 dt42) ; data type of dt42
    (available_at dc42 config cloud1) ; config is at cloud1

    ; dc42 - msg metrics
    (= (msg_max_rate dc42) 240) ; max possible msg/s
    
    ; dc42 - work_amounts
    (= (work_amount dc42 config) 0.000517578125) ; config size in MB
    (= (work_amount dc42 storage) 1434.375) ; storage requirements (MB): 0.00166015625 MB/msg * 240 msg/s * 3600s

    ; dc43 - data component
    (type_of dc43 dt43) ; data type of dt43
    (available_at dc43 config cloud1) ; config is at cloud1

    ; dc43 - msg metrics
    (= (msg_max_rate dc43) 240) ; max possible msg/s
    
    ; dc43 - work_amounts
    (= (work_amount dc43 config) 0.000751953125) ; config size in MB
    (= (work_amount dc43 storage) 1147.5000000000002) ; storage requirements (MB): 0.001328125 MB/msg * 240 msg/s * 3600s

    ; dc44 - data component
    (type_of dc44 dt44) ; data type of dt44
    (available_at dc44 config cloud1) ; config is at cloud1

    ; dc44 - msg metrics
    (= (msg_max_rate dc44) 240) ; max possible msg/s
    
    ; dc44 - work_amounts
    (= (work_amount dc44 config) 0.000791015625) ; config size in MB
    (= (work_amount dc44 storage) 945.0) ; storage requirements (MB): 0.00109375 MB/msg * 240 msg/s * 3600s

    ; dc45 - data component
    (type_of dc45 dt45) ; data type of dt45
    (available_at dc45 config cloud1) ; config is at cloud1

    ; dc45 - msg metrics
    (= (msg_max_rate dc45) 240) ; max possible msg/s
    
    ; dc45 - work_amounts
    (= (work_amount dc45 config) 0.0005859375) ; config size in MB
    (= (work_amount dc45 storage) 902.8125) ; storage requirements (MB): 0.001044921875 MB/msg * 240 msg/s * 3600s

    ; dc46 - data component
    (type_of dc46 dt46) ; data type of dt46
    (available_at dc46 config cloud1) ; config is at cloud1

    ; dc46 - msg metrics
    (= (msg_max_rate dc46) 240) ; max possible msg/s
    
    ; dc46 - work_amounts
    (= (work_amount dc46 config) 0.0005078125) ; config size in MB
    (= (work_amount dc46 storage) 1206.5625) ; storage requirements (MB): 0.001396484375 MB/msg * 240 msg/s * 3600s

    ; dc47 - data component
    (type_of dc47 dt47) ; data type of dt47
    (available_at dc47 config cloud1) ; config is at cloud1

    ; dc47 - msg metrics
    (= (msg_max_rate dc47) 240) ; max possible msg/s
    
    ; dc47 - work_amounts
    (= (work_amount dc47 config) 0.000791015625) ; config size in MB
    (= (work_amount dc47 storage) 1307.8125) ; storage requirements (MB): 0.001513671875 MB/msg * 240 msg/s * 3600s

    ; dc48 - data component
    (type_of dc48 dt48) ; data type of dt48
    (available_at dc48 config cloud1) ; config is at cloud1

    ; dc48 - msg metrics
    (= (msg_max_rate dc48) 240) ; max possible msg/s
    
    ; dc48 - work_amounts
    (= (work_amount dc48 config) 0.000419921875) ; config size in MB
    (= (work_amount dc48 storage) 961.8749999999999) ; storage requirements (MB): 0.00111328125 MB/msg * 240 msg/s * 3600s

    ; dc49 - data component
    (type_of dc49 dt49) ; data type of dt49
    (available_at dc49 config cloud1) ; config is at cloud1

    ; dc49 - msg metrics
    (= (msg_max_rate dc49) 240) ; max possible msg/s
    
    ; dc49 - work_amounts
    (= (work_amount dc49 config) 0.00060546875) ; config size in MB
    (= (work_amount dc49 storage) 1214.9999999999998) ; storage requirements (MB): 0.00140625 MB/msg * 240 msg/s * 3600s

    ; dc50 - data component
    (type_of dc50 dt50) ; data type of dt50
    (available_at dc50 config cloud1) ; config is at cloud1

    ; dc50 - msg metrics
    (= (msg_max_rate dc50) 240) ; max possible msg/s
    
    ; dc50 - work_amounts
    (= (work_amount dc50 config) 0.000390625) ; config size in MB
    (= (work_amount dc50 storage) 995.625) ; storage requirements (MB): 0.00115234375 MB/msg * 240 msg/s * 3600s

    ; dc51 - data component
    (type_of dc51 dt51) ; data type of dt51
    (available_at dc51 config cloud1) ; config is at cloud1

    ; dc51 - msg metrics
    (= (msg_max_rate dc51) 240) ; max possible msg/s
    
    ; dc51 - work_amounts
    (= (work_amount dc51 config) 0.0007421875) ; config size in MB
    (= (work_amount dc51 storage) 1468.125) ; storage requirements (MB): 0.00169921875 MB/msg * 240 msg/s * 3600s

    ; dc52 - data component
    (type_of dc52 dt52) ; data type of dt52
    (available_at dc52 config cloud1) ; config is at cloud1

    ; dc52 - msg metrics
    (= (msg_max_rate dc52) 240) ; max possible msg/s
    
    ; dc52 - work_amounts
    (= (work_amount dc52 config) 0.00064453125) ; config size in MB
    (= (work_amount dc52 storage) 1290.9375) ; storage requirements (MB): 0.001494140625 MB/msg * 240 msg/s * 3600s

    ; dc53 - data component
    (type_of dc53 dt53) ; data type of dt53
    (available_at dc53 config cloud1) ; config is at cloud1

    ; dc53 - msg metrics
    (= (msg_max_rate dc53) 240) ; max possible msg/s
    
    ; dc53 - work_amounts
    (= (work_amount dc53 config) 0.00041015625) ; config size in MB
    (= (work_amount dc53 storage) 1586.25) ; storage requirements (MB): 0.0018359375 MB/msg * 240 msg/s * 3600s

    ; dc54 - data component
    (type_of dc54 dt54) ; data type of dt54
    (available_at dc54 config cloud1) ; config is at cloud1

    ; dc54 - msg metrics
    (= (msg_max_rate dc54) 240) ; max possible msg/s
    
    ; dc54 - work_amounts
    (= (work_amount dc54 config) 0.000556640625) ; config size in MB
    (= (work_amount dc54 storage) 1442.8125) ; storage requirements (MB): 0.001669921875 MB/msg * 240 msg/s * 3600s

    ; dc55 - data component
    (type_of dc55 dt55) ; data type of dt55
    (available_at dc55 config cloud1) ; config is at cloud1

    ; dc55 - msg metrics
    (= (msg_max_rate dc55) 240) ; max possible msg/s
    
    ; dc55 - work_amounts
    (= (work_amount dc55 config) 0.00048828125) ; config size in MB
    (= (work_amount dc55 storage) 1096.875) ; storage requirements (MB): 0.00126953125 MB/msg * 240 msg/s * 3600s

    ; dc56 - data component
    (type_of dc56 dt56) ; data type of dt56
    (available_at dc56 config cloud1) ; config is at cloud1

    ; dc56 - msg metrics
    (= (msg_max_rate dc56) 240) ; max possible msg/s
    
    ; dc56 - work_amounts
    (= (work_amount dc56 config) 0.000693359375) ; config size in MB
    (= (work_amount dc56 storage) 1451.25) ; storage requirements (MB): 0.0016796875 MB/msg * 240 msg/s * 3600s

    ; dc57 - data component
    (type_of dc57 dt57) ; data type of dt57
    (available_at dc57 config cloud1) ; config is at cloud1

    ; dc57 - msg metrics
    (= (msg_max_rate dc57) 240) ; max possible msg/s
    
    ; dc57 - work_amounts
    (= (work_amount dc57 config) 0.00041015625) ; config size in MB
    (= (work_amount dc57 storage) 1425.9374999999998) ; storage requirements (MB): 0.001650390625 MB/msg * 240 msg/s * 3600s

    ; dc58 - data component
    (type_of dc58 dt58) ; data type of dt58
    (available_at dc58 config cloud1) ; config is at cloud1

    ; dc58 - msg metrics
    (= (msg_max_rate dc58) 240) ; max possible msg/s
    
    ; dc58 - work_amounts
    (= (work_amount dc58 config) 0.00076171875) ; config size in MB
    (= (work_amount dc58 storage) 1181.25) ; storage requirements (MB): 0.0013671875 MB/msg * 240 msg/s * 3600s

    ; dc59 - data component
    (type_of dc59 dt59) ; data type of dt59
    (available_at dc59 config cloud1) ; config is at cloud1

    ; dc59 - msg metrics
    (= (msg_max_rate dc59) 240) ; max possible msg/s
    
    ; dc59 - work_amounts
    (= (work_amount dc59 config) 0.000703125) ; config size in MB
    (= (work_amount dc59 storage) 1274.0625) ; storage requirements (MB): 0.001474609375 MB/msg * 240 msg/s * 3600s

    ; dc60 - data component
    (type_of dc60 dt60) ; data type of dt60
    (available_at dc60 config cloud1) ; config is at cloud1

    ; dc60 - msg metrics
    (= (msg_max_rate dc60) 240) ; max possible msg/s
    
    ; dc60 - work_amounts
    (= (work_amount dc60 config) 0.000400390625) ; config size in MB
    (= (work_amount dc60 storage) 945.0) ; storage requirements (MB): 0.00109375 MB/msg * 240 msg/s * 3600s

    ; dc61 - data component
    (type_of dc61 dt61) ; data type of dt61
    (available_at dc61 config cloud1) ; config is at cloud1

    ; dc61 - msg metrics
    (= (msg_max_rate dc61) 240) ; max possible msg/s
    
    ; dc61 - work_amounts
    (= (work_amount dc61 config) 0.000751953125) ; config size in MB
    (= (work_amount dc61 storage) 1113.75) ; storage requirements (MB): 0.0012890625 MB/msg * 240 msg/s * 3600s

    ; dc62 - data component
    (type_of dc62 dt62) ; data type of dt62
    (available_at dc62 config cloud1) ; config is at cloud1

    ; dc62 - msg metrics
    (= (msg_max_rate dc62) 240) ; max possible msg/s
    
    ; dc62 - work_amounts
    (= (work_amount dc62 config) 0.000400390625) ; config size in MB
    (= (work_amount dc62 storage) 1721.25) ; storage requirements (MB): 0.0019921875 MB/msg * 240 msg/s * 3600s

    ; dc63 - data component
    (type_of dc63 dt63) ; data type of dt63
    (available_at dc63 config cloud1) ; config is at cloud1

    ; dc63 - msg metrics
    (= (msg_max_rate dc63) 240) ; max possible msg/s
    
    ; dc63 - work_amounts
    (= (work_amount dc63 config) 0.000498046875) ; config size in MB
    (= (work_amount dc63 storage) 1240.3125) ; storage requirements (MB): 0.001435546875 MB/msg * 240 msg/s * 3600s

    ; dc64 - data component
    (type_of dc64 dt64) ; data type of dt64
    (available_at dc64 config cloud1) ; config is at cloud1

    ; dc64 - msg metrics
    (= (msg_max_rate dc64) 240) ; max possible msg/s
    
    ; dc64 - work_amounts
    (= (work_amount dc64 config) 0.000478515625) ; config size in MB
    (= (work_amount dc64 storage) 1096.875) ; storage requirements (MB): 0.00126953125 MB/msg * 240 msg/s * 3600s


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

    ; dp1 - processing component
    (type_of dp1 pt1)
    (= (msg_max_rate dp1) 123) ; max possible msg/s
    (= (work_amount dp1 compute) 3381) ; compute requirements
    (= (work_amount dp1 config) 0.002216796875) ; config size
    (available_at dp1 config cloud1) ; available at cloud1

    (input_format dp1 dt1)
    (output_format dp1 dt2)

    ; dp2 - processing component
    (type_of dp2 pt2)
    (= (msg_max_rate dp2) 131) ; max possible msg/s
    (= (work_amount dp2 compute) 3920) ; compute requirements
    (= (work_amount dp2 config) 0.002109375) ; config size
    (available_at dp2 config cloud1) ; available at cloud1

    (input_format dp2 dt2)
    (output_format dp2 dt3)

    ; dp3 - processing component
    (type_of dp3 pt3)
    (= (msg_max_rate dp3) 133) ; max possible msg/s
    (= (work_amount dp3 compute) 6446) ; compute requirements
    (= (work_amount dp3 config) 0.0021484375) ; config size
    (available_at dp3 config cloud1) ; available at cloud1

    (input_format dp3 dt3)
    (output_format dp3 dt4)

    ; dp4 - processing component
    (type_of dp4 pt4)
    (= (msg_max_rate dp4) 142) ; max possible msg/s
    (= (work_amount dp4 compute) 3464) ; compute requirements
    (= (work_amount dp4 config) 0.0015234375) ; config size
    (available_at dp4 config cloud1) ; available at cloud1

    (input_format dp4 dt4)
    (output_format dp4 dt5)

    ; dp5 - processing component
    (type_of dp5 pt5)
    (= (msg_max_rate dp5) 148) ; max possible msg/s
    (= (work_amount dp5 compute) 4890) ; compute requirements
    (= (work_amount dp5 config) 0.001943359375) ; config size
    (available_at dp5 config cloud1) ; available at cloud1

    (input_format dp5 dt5)
    (output_format dp5 dt6)

    ; dp6 - processing component
    (type_of dp6 pt6)
    (= (msg_max_rate dp6) 149) ; max possible msg/s
    (= (work_amount dp6 compute) 3481) ; compute requirements
    (= (work_amount dp6 config) 0.00216796875) ; config size
    (available_at dp6 config cloud1) ; available at cloud1

    (input_format dp6 dt6)
    (output_format dp6 dt7)

    ; dp7 - processing component
    (type_of dp7 pt7)
    (= (msg_max_rate dp7) 157) ; max possible msg/s
    (= (work_amount dp7 compute) 5653) ; compute requirements
    (= (work_amount dp7 config) 0.001943359375) ; config size
    (available_at dp7 config cloud1) ; available at cloud1

    (input_format dp7 dt7)
    (output_format dp7 dt8)

    ; dp8 - processing component
    (type_of dp8 pt8)
    (= (msg_max_rate dp8) 167) ; max possible msg/s
    (= (work_amount dp8 compute) 6408) ; compute requirements
    (= (work_amount dp8 config) 0.00263671875) ; config size
    (available_at dp8 config cloud1) ; available at cloud1

    (input_format dp8 dt8)
    (output_format dp8 dt9)

    ; dp9 - processing component
    (type_of dp9 pt9)
    (= (msg_max_rate dp9) 178) ; max possible msg/s
    (= (work_amount dp9 compute) 3630) ; compute requirements
    (= (work_amount dp9 config) 0.0018359375) ; config size
    (available_at dp9 config cloud1) ; available at cloud1

    (input_format dp9 dt9)
    (output_format dp9 dt10)

    ; dp10 - processing component
    (type_of dp10 pt10)
    (= (msg_max_rate dp10) 178) ; max possible msg/s
    (= (work_amount dp10 compute) 5041) ; compute requirements
    (= (work_amount dp10 config) 0.0020703125) ; config size
    (available_at dp10 config cloud1) ; available at cloud1

    (input_format dp10 dt10)
    (output_format dp10 dt11)

    ; dp11 - processing component
    (type_of dp11 pt11)
    (= (msg_max_rate dp11) 191) ; max possible msg/s
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
    (= (msg_max_rate dp13) 204) ; max possible msg/s
    (= (work_amount dp13 compute) 5084) ; compute requirements
    (= (work_amount dp13 config) 0.00146484375) ; config size
    (available_at dp13 config cloud1) ; available at cloud1

    (input_format dp13 dt13)
    (output_format dp13 dt14)

    ; dp14 - processing component
    (type_of dp14 pt14)
    (= (msg_max_rate dp14) 213) ; max possible msg/s
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

    ; dp16 - processing component
    (type_of dp16 pt16)
    (= (msg_max_rate dp16) 239) ; max possible msg/s
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

    ; dp32 - processing component
    (type_of dp32 pt32)
    (= (msg_max_rate dp32) 240) ; max possible msg/s
    (= (work_amount dp32 compute) 6164) ; compute requirements
    (= (work_amount dp32 config) 0.002158203125) ; config size
    (available_at dp32 config cloud1) ; available at cloud1

    (input_format dp32 dt32)
    (output_format dp32 dt33)

    ; dp33 - processing component
    (type_of dp33 pt33)
    (= (msg_max_rate dp33) 240) ; max possible msg/s
    (= (work_amount dp33 compute) 6235) ; compute requirements
    (= (work_amount dp33 config) 0.001435546875) ; config size
    (available_at dp33 config cloud1) ; available at cloud1

    (input_format dp33 dt33)
    (output_format dp33 dt34)

    ; dp34 - processing component
    (type_of dp34 pt34)
    (= (msg_max_rate dp34) 240) ; max possible msg/s
    (= (work_amount dp34 compute) 6499) ; compute requirements
    (= (work_amount dp34 config) 0.00189453125) ; config size
    (available_at dp34 config cloud1) ; available at cloud1

    (input_format dp34 dt34)
    (output_format dp34 dt35)

    ; dp35 - processing component
    (type_of dp35 pt35)
    (= (msg_max_rate dp35) 240) ; max possible msg/s
    (= (work_amount dp35 compute) 4699) ; compute requirements
    (= (work_amount dp35 config) 0.002509765625) ; config size
    (available_at dp35 config cloud1) ; available at cloud1

    (input_format dp35 dt35)
    (output_format dp35 dt36)

    ; dp36 - processing component
    (type_of dp36 pt36)
    (= (msg_max_rate dp36) 240) ; max possible msg/s
    (= (work_amount dp36 compute) 4392) ; compute requirements
    (= (work_amount dp36 config) 0.001943359375) ; config size
    (available_at dp36 config cloud1) ; available at cloud1

    (input_format dp36 dt36)
    (output_format dp36 dt37)

    ; dp37 - processing component
    (type_of dp37 pt37)
    (= (msg_max_rate dp37) 240) ; max possible msg/s
    (= (work_amount dp37 compute) 6226) ; compute requirements
    (= (work_amount dp37 config) 0.002021484375) ; config size
    (available_at dp37 config cloud1) ; available at cloud1

    (input_format dp37 dt37)
    (output_format dp37 dt38)

    ; dp38 - processing component
    (type_of dp38 pt38)
    (= (msg_max_rate dp38) 240) ; max possible msg/s
    (= (work_amount dp38 compute) 5079) ; compute requirements
    (= (work_amount dp38 config) 0.001533203125) ; config size
    (available_at dp38 config cloud1) ; available at cloud1

    (input_format dp38 dt38)
    (output_format dp38 dt39)

    ; dp39 - processing component
    (type_of dp39 pt39)
    (= (msg_max_rate dp39) 240) ; max possible msg/s
    (= (work_amount dp39 compute) 4094) ; compute requirements
    (= (work_amount dp39 config) 0.0024609375) ; config size
    (available_at dp39 config cloud1) ; available at cloud1

    (input_format dp39 dt39)
    (output_format dp39 dt40)

    ; dp40 - processing component
    (type_of dp40 pt40)
    (= (msg_max_rate dp40) 240) ; max possible msg/s
    (= (work_amount dp40 compute) 6360) ; compute requirements
    (= (work_amount dp40 config) 0.00232421875) ; config size
    (available_at dp40 config cloud1) ; available at cloud1

    (input_format dp40 dt40)
    (output_format dp40 dt41)

    ; dp41 - processing component
    (type_of dp41 pt41)
    (= (msg_max_rate dp41) 240) ; max possible msg/s
    (= (work_amount dp41 compute) 3010) ; compute requirements
    (= (work_amount dp41 config) 0.001748046875) ; config size
    (available_at dp41 config cloud1) ; available at cloud1

    (input_format dp41 dt41)
    (output_format dp41 dt42)

    ; dp42 - processing component
    (type_of dp42 pt42)
    (= (msg_max_rate dp42) 240) ; max possible msg/s
    (= (work_amount dp42 compute) 4158) ; compute requirements
    (= (work_amount dp42 config) 0.001640625) ; config size
    (available_at dp42 config cloud1) ; available at cloud1

    (input_format dp42 dt42)
    (output_format dp42 dt43)

    ; dp43 - processing component
    (type_of dp43 pt43)
    (= (msg_max_rate dp43) 240) ; max possible msg/s
    (= (work_amount dp43 compute) 5973) ; compute requirements
    (= (work_amount dp43 config) 0.0026171875) ; config size
    (available_at dp43 config cloud1) ; available at cloud1

    (input_format dp43 dt43)
    (output_format dp43 dt44)

    ; dp44 - processing component
    (type_of dp44 pt44)
    (= (msg_max_rate dp44) 240) ; max possible msg/s
    (= (work_amount dp44 compute) 4222) ; compute requirements
    (= (work_amount dp44 config) 0.002275390625) ; config size
    (available_at dp44 config cloud1) ; available at cloud1

    (input_format dp44 dt44)
    (output_format dp44 dt45)

    ; dp45 - processing component
    (type_of dp45 pt45)
    (= (msg_max_rate dp45) 240) ; max possible msg/s
    (= (work_amount dp45 compute) 6430) ; compute requirements
    (= (work_amount dp45 config) 0.00177734375) ; config size
    (available_at dp45 config cloud1) ; available at cloud1

    (input_format dp45 dt45)
    (output_format dp45 dt46)

    ; dp46 - processing component
    (type_of dp46 pt46)
    (= (msg_max_rate dp46) 240) ; max possible msg/s
    (= (work_amount dp46 compute) 5404) ; compute requirements
    (= (work_amount dp46 config) 0.00154296875) ; config size
    (available_at dp46 config cloud1) ; available at cloud1

    (input_format dp46 dt46)
    (output_format dp46 dt47)

    ; dp47 - processing component
    (type_of dp47 pt47)
    (= (msg_max_rate dp47) 240) ; max possible msg/s
    (= (work_amount dp47 compute) 5375) ; compute requirements
    (= (work_amount dp47 config) 0.002021484375) ; config size
    (available_at dp47 config cloud1) ; available at cloud1

    (input_format dp47 dt47)
    (output_format dp47 dt48)

    ; dp48 - processing component
    (type_of dp48 pt48)
    (= (msg_max_rate dp48) 240) ; max possible msg/s
    (= (work_amount dp48 compute) 5703) ; compute requirements
    (= (work_amount dp48 config) 0.002421875) ; config size
    (available_at dp48 config cloud1) ; available at cloud1

    (input_format dp48 dt48)
    (output_format dp48 dt49)

    ; dp49 - processing component
    (type_of dp49 pt49)
    (= (msg_max_rate dp49) 240) ; max possible msg/s
    (= (work_amount dp49 compute) 5005) ; compute requirements
    (= (work_amount dp49 config) 0.00205078125) ; config size
    (available_at dp49 config cloud1) ; available at cloud1

    (input_format dp49 dt49)
    (output_format dp49 dt50)

    ; dp50 - processing component
    (type_of dp50 pt50)
    (= (msg_max_rate dp50) 240) ; max possible msg/s
    (= (work_amount dp50 compute) 3608) ; compute requirements
    (= (work_amount dp50 config) 0.0015625) ; config size
    (available_at dp50 config cloud1) ; available at cloud1

    (input_format dp50 dt50)
    (output_format dp50 dt51)

    ; dp51 - processing component
    (type_of dp51 pt51)
    (= (msg_max_rate dp51) 240) ; max possible msg/s
    (= (work_amount dp51 compute) 4829) ; compute requirements
    (= (work_amount dp51 config) 0.001875) ; config size
    (available_at dp51 config cloud1) ; available at cloud1

    (input_format dp51 dt51)
    (output_format dp51 dt52)

    ; dp52 - processing component
    (type_of dp52 pt52)
    (= (msg_max_rate dp52) 240) ; max possible msg/s
    (= (work_amount dp52 compute) 5206) ; compute requirements
    (= (work_amount dp52 config) 0.002451171875) ; config size
    (available_at dp52 config cloud1) ; available at cloud1

    (input_format dp52 dt52)
    (output_format dp52 dt53)

    ; dp53 - processing component
    (type_of dp53 pt53)
    (= (msg_max_rate dp53) 240) ; max possible msg/s
    (= (work_amount dp53 compute) 4983) ; compute requirements
    (= (work_amount dp53 config) 0.00177734375) ; config size
    (available_at dp53 config cloud1) ; available at cloud1

    (input_format dp53 dt53)
    (output_format dp53 dt54)

    ; dp54 - processing component
    (type_of dp54 pt54)
    (= (msg_max_rate dp54) 240) ; max possible msg/s
    (= (work_amount dp54 compute) 4413) ; compute requirements
    (= (work_amount dp54 config) 0.00216796875) ; config size
    (available_at dp54 config cloud1) ; available at cloud1

    (input_format dp54 dt54)
    (output_format dp54 dt55)

    ; dp55 - processing component
    (type_of dp55 pt55)
    (= (msg_max_rate dp55) 240) ; max possible msg/s
    (= (work_amount dp55 compute) 4361) ; compute requirements
    (= (work_amount dp55 config) 0.002431640625) ; config size
    (available_at dp55 config cloud1) ; available at cloud1

    (input_format dp55 dt55)
    (output_format dp55 dt56)

    ; dp56 - processing component
    (type_of dp56 pt56)
    (= (msg_max_rate dp56) 240) ; max possible msg/s
    (= (work_amount dp56 compute) 5260) ; compute requirements
    (= (work_amount dp56 config) 0.002548828125) ; config size
    (available_at dp56 config cloud1) ; available at cloud1

    (input_format dp56 dt56)
    (output_format dp56 dt57)

    ; dp57 - processing component
    (type_of dp57 pt57)
    (= (msg_max_rate dp57) 240) ; max possible msg/s
    (= (work_amount dp57 compute) 6124) ; compute requirements
    (= (work_amount dp57 config) 0.002529296875) ; config size
    (available_at dp57 config cloud1) ; available at cloud1

    (input_format dp57 dt57)
    (output_format dp57 dt58)

    ; dp58 - processing component
    (type_of dp58 pt58)
    (= (msg_max_rate dp58) 240) ; max possible msg/s
    (= (work_amount dp58 compute) 5225) ; compute requirements
    (= (work_amount dp58 config) 0.00265625) ; config size
    (available_at dp58 config cloud1) ; available at cloud1

    (input_format dp58 dt58)
    (output_format dp58 dt59)

    ; dp59 - processing component
    (type_of dp59 pt59)
    (= (msg_max_rate dp59) 240) ; max possible msg/s
    (= (work_amount dp59 compute) 4545) ; compute requirements
    (= (work_amount dp59 config) 0.002587890625) ; config size
    (available_at dp59 config cloud1) ; available at cloud1

    (input_format dp59 dt59)
    (output_format dp59 dt60)

    ; dp60 - processing component
    (type_of dp60 pt60)
    (= (msg_max_rate dp60) 240) ; max possible msg/s
    (= (work_amount dp60 compute) 4865) ; compute requirements
    (= (work_amount dp60 config) 0.002421875) ; config size
    (available_at dp60 config cloud1) ; available at cloud1

    (input_format dp60 dt60)
    (output_format dp60 dt61)

    ; dp61 - processing component
    (type_of dp61 pt61)
    (= (msg_max_rate dp61) 240) ; max possible msg/s
    (= (work_amount dp61 compute) 4318) ; compute requirements
    (= (work_amount dp61 config) 0.00138671875) ; config size
    (available_at dp61 config cloud1) ; available at cloud1

    (input_format dp61 dt61)
    (output_format dp61 dt62)

    ; dp62 - processing component
    (type_of dp62 pt62)
    (= (msg_max_rate dp62) 240) ; max possible msg/s
    (= (work_amount dp62 compute) 3772) ; compute requirements
    (= (work_amount dp62 config) 0.00251953125) ; config size
    (available_at dp62 config cloud1) ; available at cloud1

    (input_format dp62 dt62)
    (output_format dp62 dt63)

    ; dp63 - processing component
    (type_of dp63 pt63)
    (= (msg_max_rate dp63) 240) ; max possible msg/s
    (= (work_amount dp63 compute) 5856) ; compute requirements
    (= (work_amount dp63 config) 0.0026171875) ; config size
    (available_at dp63 config cloud1) ; available at cloud1

    (input_format dp63 dt63)
    (output_format dp63 dt64)


    ;;;;;;;;;;;;;;;;;;;;;;
    ; interface resources
    ;;;;;;;;;;;;;;;;;;;;;;

    ; dpi-cloud1 (cloud compute resources)
    (= (resource_total dpi-cloud1 compute) 391581) ; 391 cores
    (= (resource_available dpi-cloud1 compute) 326609) ; 326 cores available
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
      (has_data dc64 dsi-cloud1 dc0 dsi-cloud1)
      ; Bound search space with makespan constraint
      (>= (workflow-makespan-max) (workflow-makespan))
    )
  )  
  (:metric minimize (total-cost))
)