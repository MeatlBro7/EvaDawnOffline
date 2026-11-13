
===== LoginMediator$$.ctor @ 0xd0255c (160 bytes)
  d0255c: stp    x20, x19, [sp, #-0x20]!                  
  d02560: stp    x29, x30, [sp, #0x10]                    
  d02564: add    x29, sp, #0x10                           
  d02568: adrp   x20, #0x31cc000                          
  d0256c: ldrb   w8, [x20, #0x814]                        
  d02570: mov    x19, x0                                  
  d02574: tbnz   w8, #0, #0xd02590                        
  d02578: adrp   x8, #0x3072000                           
  d0257c: ldr    x8, [x8, #0xe70]                         
  d02580: ldr    w0, [x8]                                 
  d02584: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02588: mov    w8, #1                                   
  d0258c: strb   w8, [x20, #0x814]                        
  d02590: adrp   x8, #0x3009000                           
  d02594: ldr    x8, [x8, #0xe30]                         ; META LoginInfo_TypeInfo
  d02598: ldr    x0, [x8]                                 
  d0259c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d025a0: mov    x1, xzr                                  
  d025a4: mov    x20, x0                                  
  d025a8: bl     #0x1ca54c0                               ; System.Object$$.ctor
  d025ac: mov    w8, #0x41f00000                          
  d025b0: mov    x0, x19                                  
  d025b4: mov    x1, xzr                                  
  d025b8: str    x20, [x19, #0x120]                       
  d025bc: str    w8, [x19, #0x140]                        
  d025c0: bl     #0x17da330                               ; strange.extensions.mediation.impl.EventMediator$$.ctor
  d025c4: adrp   x8, #0x3063000                           
  d025c8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d025cc: ldr    x8, [x8]                                 
  d025d0: ldr    x8, [x8, #0xb8]                          
  d025d4: ldr    x0, [x8, #0x298]                         
  d025d8: cbz    x0, #0xd025f0                            
  d025dc: ldp    x29, x30, [sp, #0x10]                    
  d025e0: mov    x1, x19                                  
  d025e4: mov    x2, xzr                                  
  d025e8: ldp    x20, x19, [sp], #0x20                    
  d025ec: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d025f0: ldp    x29, x30, [sp, #0x10]                    
  d025f4: ldp    x20, x19, [sp], #0x20                    
  d025f8: ret                                             

===== LoginMediator$$<>xLuaBaseProxy_OnRegister @ 0xd025fc (8 bytes)
  d025fc: mov    x1, xzr                                  
  d02600: b      #0x17dbb2c                               ; strange.extensions.mediation.impl.Mediator$$OnRegister

===== LoginMediator$$<>xLuaBaseProxy_OnRemove @ 0xd02604 (8 bytes)
  d02604: mov    x1, xzr                                  
  d02608: b      #0x17dbb98                               ; strange.extensions.mediation.impl.Mediator$$OnRemove

===== LoginMediator$$BeginLogin @ 0xd01504 (400 bytes)
  d01504: str    x21, [sp, #-0x30]!                       
  d01508: stp    x20, x19, [sp, #0x10]                    
  d0150c: stp    x29, x30, [sp, #0x20]                    
  d01510: add    x29, sp, #0x20                           
  d01514: adrp   x20, #0x31cc000                          
  d01518: ldrb   w8, [x20, #0x80d]                        
  d0151c: mov    x19, x0                                  
  d01520: tbnz   w8, #0, #0xd0153c                        
  d01524: adrp   x8, #0x3046000                           
  d01528: ldr    x8, [x8, #0x3e8]                         
  d0152c: ldr    w0, [x8]                                 
  d01530: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01534: mov    w8, #1                                   
  d01538: strb   w8, [x20, #0x80d]                        
  d0153c: adrp   x8, #0x3063000                           
  d01540: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01544: ldr    x8, [x8]                                 
  d01548: ldr    x8, [x8, #0xb8]                          
  d0154c: ldr    x0, [x8, #0x260]                         
  d01550: cbz    x0, #0xd0156c                            
  d01554: mov    x1, x19                                  
  d01558: ldp    x29, x30, [sp, #0x20]                    
  d0155c: ldp    x20, x19, [sp, #0x10]                    
  d01560: mov    x2, xzr                                  
  d01564: ldr    x21, [sp], #0x30                         
  d01568: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d0156c: ldrb   w8, [x19, #0x144]                        
  d01570: add    w8, w8, #3                               
  d01574: mvn    w8, w8                                   
  d01578: and    w8, w8, #3                               
  d0157c: cbnz   w8, #0xd0167c                            
  d01580: mov    x0, x19                                  
  d01584: bl     #0xd004fc                                ; LoginMediator$$ResetLogin
  d01588: ldr    x20, [x19, #0x120]                       
  d0158c: mov    w8, #1                                   
  d01590: strh   w8, [x19, #0x144]                        
  d01594: cbnz   x20, #0xd015a0                           
  d01598: mov    x0, xzr                                  
  d0159c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d015a0: adrp   x8, #0x303c000                           
  d015a4: ldr    x1, [x20, #0x10]                         
  d015a8: ldr    x8, [x8, #0x778]                         ; STR "Account"
  d015ac: mov    x2, xzr                                  
  d015b0: ldr    x0, [x8]                                 
  d015b4: bl     #0x1be7028                               ; UnityEngine.PlayerPrefs$$SetString
  d015b8: ldr    x20, [x19, #0x120]                       
  d015bc: cbnz   x20, #0xd015c8                           
  d015c0: mov    x0, xzr                                  
  d015c4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d015c8: adrp   x8, #0x2ffb000                           
  d015cc: ldr    x1, [x20, #0x28]                         
  d015d0: ldr    x8, [x8, #0xd70]                         ; STR "userIp"
  d015d4: mov    x2, xzr                                  
  d015d8: ldr    x0, [x8]                                 
  d015dc: bl     #0x1be7028                               ; UnityEngine.PlayerPrefs$$SetString
  d015e0: ldr    x20, [x19, #0x120]                       
  d015e4: cbnz   x20, #0xd015f0                           
  d015e8: mov    x0, xzr                                  
  d015ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d015f0: adrp   x8, #0x3001000                           
  d015f4: ldr    w1, [x20, #0x30]                         
  d015f8: ldr    x8, [x8, #0x20]                          ; STR "userPort"
  d015fc: mov    x2, xzr                                  
  d01600: ldr    x0, [x8]                                 
  d01604: bl     #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt
  d01608: ldr    x20, [x19, #0x120]                       
  d0160c: mov    x8, x20                                  
  d01610: cbnz   x20, #0xd01624                           
  d01614: mov    x0, xzr                                  
  d01618: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0161c: ldr    x8, [x19, #0x120]                        
  d01620: cbz    x8, #0xd0168c                            
  d01624: adrp   x9, #0x3077000                           
  d01628: ldr    x9, [x9, #0xb80]                         ; META ConnectAPI_TypeInfo
  d0162c: ldr    x20, [x20, #0x28]                        
  d01630: ldr    w21, [x8, #0x30]                         
  d01634: ldr    x0, [x9]                                 
  d01638: ldrb   w9, [x0, #0x127]                         
  d0163c: tbz    w9, #1, #0xd0164c                        
  d01640: ldr    w8, [x0, #0xd8]                          
  d01644: cbnz   w8, #0xd0164c                            
  d01648: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d0164c: mov    x0, x20                                  
  d01650: mov    w1, w21                                  
  d01654: mov    x2, xzr                                  
  d01658: bl     #0x1124b60                               ; ConnectAPI$$Connect
  d0165c: ldr    s0, [x19, #0x140]                        
  d01660: mov    x0, x19                                  
  d01664: bl     #0xd01820                                ; LoginMediator$$WaitLoginResult
  d01668: mov    x1, x0                                   
  d0166c: mov    x0, x19                                  
  d01670: mov    x2, xzr                                  
  d01674: bl     #0x1be12e8                               ; UnityEngine.MonoBehaviour$$StartCoroutine
  d01678: str    x0, [x19, #0x130]                        
  d0167c: ldp    x29, x30, [sp, #0x20]                    
  d01680: ldp    x20, x19, [sp, #0x10]                    
  d01684: ldr    x21, [sp], #0x30                         
  d01688: ret                                             
  d0168c: mov    x0, xzr                                  
  d01690: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c

===== LoginMediator$$ConnectAPI_onConnect @ 0xd01aac (260 bytes)
  d01aac: str    x21, [sp, #-0x30]!                       
  d01ab0: stp    x20, x19, [sp, #0x10]                    
  d01ab4: stp    x29, x30, [sp, #0x20]                    
  d01ab8: add    x29, sp, #0x20                           
  d01abc: adrp   x21, #0x31cc000                          
  d01ac0: ldrb   w8, [x21, #0x80f]                        
  d01ac4: mov    w20, w1                                  
  d01ac8: mov    x19, x0                                  
  d01acc: tbnz   w8, #0, #0xd01ae8                        
  d01ad0: adrp   x8, #0x2fef000                           
  d01ad4: ldr    x8, [x8, #0x340]                         
  d01ad8: ldr    w0, [x8]                                 
  d01adc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01ae0: mov    w8, #1                                   
  d01ae4: strb   w8, [x21, #0x80f]                        
  d01ae8: adrp   x8, #0x3063000                           
  d01aec: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01af0: ldr    x8, [x8]                                 
  d01af4: ldr    x8, [x8, #0xb8]                          
  d01af8: ldr    x0, [x8, #0x270]                         
  d01afc: cbz    x0, #0xd01b1c                            
  d01b00: mov    x1, x19                                  
  d01b04: mov    w2, w20                                  
  d01b08: ldp    x29, x30, [sp, #0x20]                    
  d01b0c: ldp    x20, x19, [sp, #0x10]                    
  d01b10: mov    x3, xzr                                  
  d01b14: ldr    x21, [sp], #0x30                         
  d01b18: b      #0xca44c4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp87
  d01b1c: cbz    w20, #0xd01b9c                           
  d01b20: mov    x0, x19                                  
  d01b24: strh   wzr, [x19, #0x144]                       
  d01b28: bl     #0xd004fc                                ; LoginMediator$$ResetLogin
  d01b2c: mov    x0, xzr                                  
  d01b30: bl     #0x1269298                               ; CommonTipView$$Get
  d01b34: adrp   x8, #0x303e000                           
  d01b38: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  d01b3c: mov    x19, x0                                  
  d01b40: ldr    x8, [x8]                                 
  d01b44: ldrb   w9, [x8, #0x127]                         
  d01b48: tbz    w9, #1, #0xd01b5c                        
  d01b4c: ldr    w9, [x8, #0xd8]                          
  d01b50: cbnz   w9, #0xd01b5c                            
  d01b54: mov    x0, x8                                   
  d01b58: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d01b5c: adrp   x8, #0x2ffb000                           
  d01b60: ldr    x8, [x8, #0x400]                         ; STR "GLOBAL_NOSERVERS"
  d01b64: mov    x1, xzr                                  
  d01b68: ldr    x0, [x8]                                 
  d01b6c: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  d01b70: mov    x20, x0                                  
  d01b74: cbnz   x19, #0xd01b80                           
  d01b78: mov    x0, xzr                                  
  d01b7c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01b80: mov    x0, x19                                  
  d01b84: mov    x1, x20                                  
  d01b88: ldp    x29, x30, [sp, #0x20]                    
  d01b8c: ldp    x20, x19, [sp, #0x10]                    
  d01b90: mov    x2, xzr                                  
  d01b94: ldr    x21, [sp], #0x30                         
  d01b98: b      #0x126a774                               ; CommonTipView$$PopCenterTipWnd
  d01b9c: mov    x0, x19                                  
  d01ba0: ldp    x29, x30, [sp, #0x20]                    
  d01ba4: ldp    x20, x19, [sp, #0x10]                    
  d01ba8: ldr    x21, [sp], #0x30                         
  d01bac: b      #0xd01bb0                                ; LoginMediator$$Login

===== LoginMediator$$EnterGame @ 0xd00ca4 (2144 bytes)
  d00ca4: str    x23, [sp, #-0x40]!                       
  d00ca8: stp    x22, x21, [sp, #0x10]                    
  d00cac: stp    x20, x19, [sp, #0x20]                    
  d00cb0: stp    x29, x30, [sp, #0x30]                    
  d00cb4: add    x29, sp, #0x30                           
  d00cb8: adrp   x21, #0x31cc000                          
  d00cbc: ldrb   w8, [x21, #0x807]                        
  d00cc0: mov    x20, x1                                  
  d00cc4: mov    x19, x0                                  
  d00cc8: tbnz   w8, #0, #0xd00ce4                        
  d00ccc: adrp   x8, #0x3057000                           
  d00cd0: ldr    x8, [x8, #0x178]                         
  d00cd4: ldr    w0, [x8]                                 
  d00cd8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d00cdc: mov    w8, #1                                   
  d00ce0: strb   w8, [x21, #0x807]                        
  d00ce4: adrp   x8, #0x3063000                           
  d00ce8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d00cec: ldr    x8, [x8]                                 
  d00cf0: ldr    x8, [x8, #0xb8]                          
  d00cf4: ldr    x0, [x8, #0x230]                         
  d00cf8: cbz    x0, #0xd00d1c                            
  d00cfc: mov    x1, x19                                  
  d00d00: mov    x2, x20                                  
  d00d04: ldp    x29, x30, [sp, #0x30]                    
  d00d08: ldp    x20, x19, [sp, #0x20]                    
  d00d0c: ldp    x22, x21, [sp, #0x10]                    
  d00d10: mov    x3, xzr                                  
  d00d14: ldr    x23, [sp], #0x40                         
  d00d18: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d00d1c: ldr    x21, [x19, #0x128]                       
  d00d20: cbnz   x21, #0xd00d2c                           
  d00d24: mov    x0, xzr                                  
  d00d28: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00d2c: ldr    w8, [x21, #0x34]                         
  d00d30: cmp    w8, #3                                   
  d00d34: b.eq   #0xd00d54                                
  d00d38: ldr    x21, [x19, #0x128]                       
  d00d3c: cbnz   x21, #0xd00d48                           
  d00d40: mov    x0, xzr                                  
  d00d44: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00d48: ldr    w8, [x21, #0x34]                         
  d00d4c: cmp    w8, #7                                   
  d00d50: b.ne   #0xd00dc8                                
  d00d54: mov    x0, xzr                                  
  d00d58: bl     #0x1269298                               ; CommonTipView$$Get
  d00d5c: adrp   x8, #0x303e000                           
  d00d60: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  d00d64: mov    x19, x0                                  
  d00d68: ldr    x8, [x8]                                 
  d00d6c: ldrb   w9, [x8, #0x127]                         
  d00d70: tbz    w9, #1, #0xd00d84                        
  d00d74: ldr    w9, [x8, #0xd8]                          
  d00d78: cbnz   w9, #0xd00d84                            
  d00d7c: mov    x0, x8                                   
  d00d80: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d00d84: adrp   x8, #0x3041000                           
  d00d88: ldr    x8, [x8, #0x3c0]                         ; STR "GLOBAL_SERVERCLOSE"
  d00d8c: mov    x1, xzr                                  
  d00d90: ldr    x0, [x8]                                 
  d00d94: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  d00d98: mov    x20, x0                                  
  d00d9c: cbnz   x19, #0xd00da8                           
  d00da0: mov    x0, xzr                                  
  d00da4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00da8: mov    x0, x19                                  
  d00dac: mov    x1, x20                                  
  d00db0: ldp    x29, x30, [sp, #0x30]                    
  d00db4: ldp    x20, x19, [sp, #0x20]                    
  d00db8: ldp    x22, x21, [sp, #0x10]                    
  d00dbc: mov    x2, xzr                                  
  d00dc0: ldr    x23, [sp], #0x40                         
  d00dc4: b      #0x126a774                               ; CommonTipView$$PopCenterTipWnd
  d00dc8: mov    x0, x19                                  
  d00dcc: bl     #0xd009b0                                ; LoginMediator$$SaveLoginServer
  d00dd0: cbnz   x20, #0xd00ddc                           
  d00dd4: mov    x0, xzr                                  
  d00dd8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00ddc: adrp   x21, #0x2ff0000                          
  d00de0: ldr    x8, [x20]                                
  d00de4: ldr    x21, [x21, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d00de8: ldrh   w9, [x8, #0x11e]                         
  d00dec: ldr    x1, [x21]                                
  d00df0: cbz    x9, #0xd00e1c                            
  d00df4: ldr    x11, [x8, #0xb0]                         
  d00df8: mov    x10, xzr                                 
  d00dfc: add    x11, x11, #8                             
  d00e00: ldur   x12, [x11, #-8]                          
  d00e04: cmp    x12, x1                                  
  d00e08: b.eq   #0xd00e2c                                
  d00e0c: add    x10, x10, #1                             
  d00e10: cmp    x10, x9                                  
  d00e14: add    x11, x11, #0x10                          
  d00e18: b.lo   #0xd00e00                                
  d00e1c: mov    w2, #4                                   
  d00e20: mov    x0, x20                                  
  d00e24: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d00e28: b      #0xd00e3c                                
  d00e2c: ldr    w9, [x11]                                
  d00e30: add    w9, w9, #4                               
  d00e34: add    x8, x8, w9, uxtw #4                      
  d00e38: add    x0, x8, #0x128                           
  d00e3c: ldp    x8, x1, [x0]                             
  d00e40: mov    x0, x20                                  
  d00e44: blr    x8                                       
  d00e48: cbz    x0, #0xd00e64                            
  d00e4c: adrp   x8, #0x2fdb000                           
  d00e50: ldr    x8, [x8, #0x2c0]                         ; META string_TypeInfo
  d00e54: ldr    x9, [x0]                                 
  d00e58: ldr    x8, [x8]                                 
  d00e5c: cmp    x9, x8                                   
  d00e60: csel   x0, x0, xzr, eq                          
  d00e64: mov    x1, xzr                                  
  d00e68: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  d00e6c: tbz    w0, #0, #0xd00f10                        
  d00e70: adrp   x20, #0x2ff5000                          
  d00e74: ldr    x20, [x20, #0x500]                       ; META UniCore.Log_TypeInfo
  d00e78: ldr    x0, [x20]                                
  d00e7c: ldrb   w8, [x0, #0x127]                         
  d00e80: tbz    w8, #1, #0xd00e94                        
  d00e84: ldr    w8, [x0, #0xd8]                          
  d00e88: cbnz   w8, #0xd00e94                            
  d00e8c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d00e90: ldr    x0, [x20]                                
  d00e94: adrp   x9, #0x2fc7000                           
  d00e98: ldr    x8, [x0, #0xb8]                          
  d00e9c: ldr    x9, [x9, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  d00ea0: ldr    x20, [x8, #8]                            
  d00ea4: ldr    x0, [x9]                                 
  d00ea8: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  d00eac: mov    x21, x0                                  
  d00eb0: cbnz   x20, #0xd00ebc                           
  d00eb4: mov    x0, xzr                                  
  d00eb8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00ebc: adrp   x8, #0x2ff7000                           
  d00ec0: ldr    x8, [x8, #0x918]                         ; STR "LoginMediator, account is null or empty."
  d00ec4: mov    x0, x20                                  
  d00ec8: mov    x2, x21                                  
  d00ecc: mov    x3, xzr                                  
  d00ed0: ldr    x1, [x8]                                 
  d00ed4: bl     #0x142d91c                               ; UniCore.Logger$$Warning
  d00ed8: mov    x0, x19                                  
  d00edc: bl     #0xd004fc                                ; LoginMediator$$ResetLogin
  d00ee0: mov    x0, xzr                                  
  d00ee4: bl     #0xeb3768                                ; SinaSDK$$Get
  d00ee8: mov    x19, x0                                  
  d00eec: cbnz   x19, #0xd00ef4                           
  d00ef0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00ef4: mov    x0, x19                                  
  d00ef8: ldp    x29, x30, [sp, #0x30]                    
  d00efc: ldp    x20, x19, [sp, #0x20]                    
  d00f00: ldp    x22, x21, [sp, #0x10]                    
  d00f04: mov    x1, xzr                                  
  d00f08: ldr    x23, [sp], #0x40                         
  d00f0c: b      #0xebb518                                ; SinaSDK$$SinaLogin
  d00f10: cbnz   x20, #0xd00f1c                           
  d00f14: mov    x0, xzr                                  
  d00f18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00f1c: ldr    x8, [x20]                                
  d00f20: ldr    x1, [x21]                                
  d00f24: ldrh   w9, [x8, #0x11e]                         
  d00f28: cbz    x9, #0xd00f54                            
  d00f2c: ldr    x11, [x8, #0xb0]                         
  d00f30: mov    x10, xzr                                 
  d00f34: add    x11, x11, #8                             
  d00f38: ldur   x12, [x11, #-8]                          
  d00f3c: cmp    x12, x1                                  
  d00f40: b.eq   #0xd00f64                                
  d00f44: add    x10, x10, #1                             
  d00f48: cmp    x10, x9                                  
  d00f4c: add    x11, x11, #0x10                          
  d00f50: b.lo   #0xd00f38                                
  d00f54: mov    w2, #4                                   
  d00f58: mov    x0, x20                                  
  d00f5c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d00f60: b      #0xd00f74                                
  d00f64: ldr    w9, [x11]                                
  d00f68: add    w9, w9, #4                               
  d00f6c: add    x8, x8, w9, uxtw #4                      
  d00f70: add    x0, x8, #0x128                           
  d00f74: ldp    x8, x1, [x0]                             
  d00f78: mov    x0, x20                                  
  d00f7c: blr    x8                                       
  d00f80: mov    x20, x0                                  
  d00f84: cbnz   x20, #0xd00f8c                           
  d00f88: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00f8c: ldr    x8, [x20]                                
  d00f90: mov    x0, x20                                  
  d00f94: ldp    x9, x1, [x8, #0x158]                     
  d00f98: blr    x9                                       
  d00f9c: adrp   x8, #0x3075000                           
  d00fa0: ldr    x8, [x8, #0x7e0]                         ; META fastJSON.JSON_TypeInfo
  d00fa4: mov    x20, x0                                  
  d00fa8: ldr    x8, [x8]                                 
  d00fac: ldrb   w9, [x8, #0x127]                         
  d00fb0: tbz    w9, #1, #0xd00fc4                        
  d00fb4: ldr    w9, [x8, #0xd8]                          
  d00fb8: cbnz   w9, #0xd00fc4                            
  d00fbc: mov    x0, x8                                   
  d00fc0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d00fc4: mov    x0, x20                                  
  d00fc8: mov    x1, xzr                                  
  d00fcc: bl     #0x1b8a378                               ; fastJSON.JSON$$Parse
  d00fd0: mov    x20, x0                                  
  d00fd4: cbz    x20, #0xd01370                           
  d00fd8: adrp   x8, #0x2fe4000                           
  d00fdc: ldr    x8, [x8, #0x860]                         ; META System.Collections.Generic.Dictionary<string, object>_TypeInfo
  d00fe0: ldr    x9, [x20]                                
  d00fe4: ldr    x8, [x8]                                 
  d00fe8: ldrb   w11, [x9, #0x120]                        
  d00fec: ldrb   w10, [x8, #0x120]                        
  d00ff0: cmp    w11, w10                                 
  d00ff4: b.lo   #0xd01370                                
  d00ff8: ldr    x9, [x9, #0xc8]                          
  d00ffc: add    x9, x9, x10, lsl #3                      
  d01000: ldur   x9, [x9, #-8]                            
  d01004: cmp    x9, x8                                   
  d01008: b.ne   #0xd01370                                
  d0100c: adrp   x21, #0x302d000                          
  d01010: adrp   x8, #0x3023000                           
  d01014: ldr    x21, [x21, #0x520]                       ; STR "sUid"
  d01018: ldr    x8, [x8, #0xf78]                         ; MMETH Method$System.Collections.Generic.Dictionary<string, object>.ContainsKey()
  d0101c: mov    x0, x20                                  
  d01020: ldr    x1, [x21]                                
  d01024: ldr    x2, [x8]                                 
  d01028: bl     #0x215ae88                               ; System.Collections.Generic.Dictionary<IBinding, object>$$ContainsKey
  d0102c: tbz    w0, #0, #0xd01370                        
  d01030: adrp   x22, #0x2fbf000                          
  d01034: ldr    x23, [x19, #0x120]                       
  d01038: ldr    x1, [x21]                                
  d0103c: ldr    x22, [x22, #0x6b8]                       ; MMETH Method$System.Collections.Generic.Dictionary<string, object>.get_Item()
  d01040: mov    x0, x20                                  
  d01044: ldr    x2, [x22]                                
  d01048: bl     #0x215a920                               ; System.Collections.Generic.Dictionary<string, string>$$get_Item
  d0104c: mov    x21, x0                                  
  d01050: cbnz   x21, #0xd01058                           
  d01054: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01058: ldr    x8, [x21]                                
  d0105c: mov    x0, x21                                  
  d01060: ldp    x9, x1, [x8, #0x158]                     
  d01064: blr    x9                                       
  d01068: mov    x21, x0                                  
  d0106c: cbnz   x23, #0xd01078                           
  d01070: mov    x0, xzr                                  
  d01074: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01078: str    x21, [x23, #0x10]                        
  d0107c: adrp   x8, #0x305f000                           
  d01080: ldr    x8, [x8, #0xde8]                         ; STR "token"
  d01084: ldr    x2, [x22]                                
  d01088: ldr    x23, [x19, #0x120]                       
  d0108c: mov    x0, x20                                  
  d01090: ldr    x1, [x8]                                 
  d01094: bl     #0x215a920                               ; System.Collections.Generic.Dictionary<string, string>$$get_Item
  d01098: mov    x21, x0                                  
  d0109c: cbnz   x21, #0xd010a4                           
  d010a0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d010a4: ldr    x8, [x21]                                
  d010a8: mov    x0, x21                                  
  d010ac: ldp    x9, x1, [x8, #0x158]                     
  d010b0: blr    x9                                       
  d010b4: mov    x21, x0                                  
  d010b8: cbnz   x23, #0xd010c4                           
  d010bc: mov    x0, xzr                                  
  d010c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d010c4: str    x21, [x23, #0x38]                        
  d010c8: adrp   x8, #0x3030000                           
  d010cc: ldr    x8, [x8, #0x5d0]                         ; STR "userName"
  d010d0: ldr    x2, [x22]                                
  d010d4: ldr    x23, [x19, #0x120]                       
  d010d8: mov    x0, x20                                  
  d010dc: ldr    x1, [x8]                                 
  d010e0: bl     #0x215a920                               ; System.Collections.Generic.Dictionary<string, string>$$get_Item
  d010e4: mov    x21, x0                                  
  d010e8: cbnz   x21, #0xd010f0                           
  d010ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d010f0: ldr    x8, [x21]                                
  d010f4: mov    x0, x21                                  
  d010f8: ldp    x9, x1, [x8, #0x158]                     
  d010fc: blr    x9                                       
  d01100: mov    x21, x0                                  
  d01104: cbnz   x23, #0xd01110                           
  d01108: mov    x0, xzr                                  
  d0110c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01110: str    x21, [x23, #0x18]                        
  d01114: adrp   x8, #0x3000000                           
  d01118: ldr    x8, [x8, #0xf8]                          ; STR "channel"
  d0111c: ldr    x2, [x22]                                
  d01120: ldr    x23, [x19, #0x120]                       
  d01124: mov    x0, x20                                  
  d01128: ldr    x1, [x8]                                 
  d0112c: bl     #0x215a920                               ; System.Collections.Generic.Dictionary<string, string>$$get_Item
  d01130: mov    x21, x0                                  
  d01134: cbnz   x21, #0xd0113c                           
  d01138: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0113c: ldr    x8, [x21]                                
  d01140: mov    x0, x21                                  
  d01144: ldp    x9, x1, [x8, #0x158]                     
  d01148: blr    x9                                       
  d0114c: mov    x21, x0                                  
  d01150: cbnz   x23, #0xd0115c                           
  d01154: mov    x0, xzr                                  
  d01158: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0115c: str    x21, [x23, #0x48]                        
  d01160: adrp   x8, #0x3031000                           
  d01164: ldr    x8, [x8, #0x3c8]                         ; STR "pt"
  d01168: ldr    x2, [x22]                                
  d0116c: ldr    x21, [x19, #0x120]                       
  d01170: mov    x0, x20                                  
  d01174: ldr    x1, [x8]                                 
  d01178: bl     #0x215a920                               ; System.Collections.Generic.Dictionary<string, string>$$get_Item
  d0117c: mov    x20, x0                                  
  d01180: cbnz   x20, #0xd01188                           
  d01184: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01188: ldr    x8, [x20]                                
  d0118c: mov    x0, x20                                  
  d01190: ldp    x9, x1, [x8, #0x158]                     
  d01194: blr    x9                                       
  d01198: mov    x20, x0                                  
  d0119c: cbnz   x21, #0xd011a8                           
  d011a0: mov    x0, xzr                                  
  d011a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d011a8: str    x20, [x21, #0x40]                        
  d011ac: ldr    x20, [x19, #0x120]                       
  d011b0: cbnz   x20, #0xd011bc                           
  d011b4: mov    x0, xzr                                  
  d011b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d011bc: ldr    x0, [x20, #0x48]                         
  d011c0: mov    x1, xzr                                  
  d011c4: bl     #0x134b8b8                               ; UniCore.GeneralUtils$$ForceInt
  d011c8: adrp   x8, #0x3066000                           
  d011cc: ldr    x8, [x8, #0x588]                         ; STR "SDKChannel"
  d011d0: mov    w1, w0                                   
  d011d4: mov    x2, xzr                                  
  d011d8: ldr    x8, [x8]                                 
  d011dc: mov    x0, x8                                   
  d011e0: bl     #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt
  d011e4: ldr    x20, [x19, #0x120]                       
  d011e8: cbnz   x20, #0xd011f4                           
  d011ec: mov    x0, xzr                                  
  d011f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d011f4: adrp   x8, #0x3032000                           
  d011f8: ldr    x1, [x20, #0x38]                         
  d011fc: ldr    x8, [x8, #0xed0]                         ; STR "SDKToken"
  d01200: mov    x2, xzr                                  
  d01204: ldr    x0, [x8]                                 
  d01208: bl     #0x1be7028                               ; UnityEngine.PlayerPrefs$$SetString
  d0120c: ldr    x20, [x19, #0x120]                       
  d01210: cbnz   x20, #0xd0121c                           
  d01214: mov    x0, xzr                                  
  d01218: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0121c: adrp   x8, #0x2fc5000                           
  d01220: ldr    x8, [x8, #0xcc0]                         ; META AppsFlyer_TypeInfo
  d01224: ldr    x20, [x20, #0x10]                        
  d01228: ldr    x0, [x8]                                 
  d0122c: ldrb   w8, [x0, #0x127]                         
  d01230: tbz    w8, #1, #0xd01240                        
  d01234: ldr    w8, [x0, #0xd8]                          
  d01238: cbnz   w8, #0xd01240                            
  d0123c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d01240: adrp   x8, #0x2fef000                           
  d01244: ldr    x8, [x8, #0x480]                         ; STR "af_login"
  d01248: mov    x1, x20                                  
  d0124c: mov    x2, xzr                                  
  d01250: ldr    x0, [x8]                                 
  d01254: bl     #0x23bd170                               ; AppsFlyer$$trackEvent
  d01258: ldr    x20, [x19, #0x120]                       
  d0125c: cbnz   x20, #0xd01268                           
  d01260: mov    x0, xzr                                  
  d01264: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01268: ldr    x20, [x20, #0x18]                        
  d0126c: cbnz   x20, #0xd01278                           
  d01270: mov    x0, xzr                                  
  d01274: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01278: adrp   x8, #0x3071000                           
  d0127c: ldr    x8, [x8, #0xab8]                         ; STR "新浪游客"
  d01280: mov    x0, x20                                  
  d01284: mov    x2, xzr                                  
  d01288: ldr    x1, [x8]                                 
  d0128c: bl     #0x1c6e20c                               ; System.String$$Equals
  d01290: mov    w21, w0                                  
  d01294: mov    x0, xzr                                  
  d01298: bl     #0xeb3768                                ; SinaSDK$$Get
  d0129c: mov    x20, x0                                  
  d012a0: cbnz   x20, #0xd012a8                           
  d012a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d012a8: tbz    w21, #0, #0xd01410                       
  d012ac: strb   wzr, [x20, #0x70]                        
  d012b0: ldr    x23, [x19, #0x120]                       
  d012b4: cbnz   x23, #0xd012c0                           
  d012b8: mov    x0, xzr                                  
  d012bc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d012c0: ldr    x20, [x23, #0x10]                        
  d012c4: cbnz   x20, #0xd012d0                           
  d012c8: mov    x0, xzr                                  
  d012cc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d012d0: mov    x0, x20                                  
  d012d4: mov    x1, xzr                                  
  d012d8: bl     #0x1c6c600                               ; System.String$$get_Length
  d012dc: adrp   x8, #0x2ff3000                           
  d012e0: ldr    x8, [x8, #0x858]                         ; STR "游客"
  d012e4: ldr    x21, [x19, #0x120]                       
  d012e8: mov    w22, w0                                  
  d012ec: ldr    x20, [x8]                                
  d012f0: cbnz   x21, #0xd012fc                           
  d012f4: mov    x0, xzr                                  
  d012f8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d012fc: ldr    x21, [x21, #0x10]                        
  d01300: cmp    w22, #7                                  
  d01304: b.lt   #0xd01358                                
  d01308: ldr    x22, [x19, #0x120]                       
  d0130c: cbnz   x22, #0xd01318                           
  d01310: mov    x0, xzr                                  
  d01314: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01318: ldr    x22, [x22, #0x10]                        
  d0131c: cbnz   x22, #0xd01328                           
  d01320: mov    x0, xzr                                  
  d01324: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01328: mov    x0, x22                                  
  d0132c: mov    x1, xzr                                  
  d01330: bl     #0x1c6c600                               ; System.String$$get_Length
  d01334: mov    w22, w0                                  
  d01338: cbnz   x21, #0xd01344                           
  d0133c: mov    x0, xzr                                  
  d01340: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01344: sub    w1, w22, #6                              
  d01348: mov    x0, x21                                  
  d0134c: mov    x2, xzr                                  
  d01350: bl     #0x1c7148c                               ; System.String$$Substring
  d01354: mov    x21, x0                                  
  d01358: mov    x0, x20                                  
  d0135c: mov    x1, x21                                  
  d01360: mov    x2, xzr                                  
  d01364: bl     #0x1c75758                               ; System.String$$Concat
  d01368: str    x0, [x23, #0x18]                         
  d0136c: b      #0xd01418                                
  d01370: adrp   x20, #0x2ff5000                          
  d01374: ldr    x20, [x20, #0x500]                       ; META UniCore.Log_TypeInfo
  d01378: ldr    x0, [x20]                                
  d0137c: ldrb   w8, [x0, #0x127]                         
  d01380: tbz    w8, #1, #0xd01394                        
  d01384: ldr    w8, [x0, #0xd8]                          
  d01388: cbnz   w8, #0xd01394                            
  d0138c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d01390: ldr    x0, [x20]                                
  d01394: adrp   x9, #0x2fc7000                           
  d01398: ldr    x8, [x0, #0xb8]                          
  d0139c: ldr    x9, [x9, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  d013a0: ldr    x20, [x8, #8]                            
  d013a4: ldr    x0, [x9]                                 
  d013a8: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  d013ac: mov    x21, x0                                  
  d013b0: cbnz   x20, #0xd013bc                           
  d013b4: mov    x0, xzr                                  
  d013b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d013bc: adrp   x8, #0x3059000                           
  d013c0: ldr    x8, [x8, #0xf98]                         ; STR "LoginMediator, userInfo is null or no have suid"
  d013c4: mov    x0, x20                                  
  d013c8: mov    x2, x21                                  
  d013cc: mov    x3, xzr                                  
  d013d0: ldr    x1, [x8]                                 
  d013d4: bl     #0x142d91c                               ; UniCore.Logger$$Warning
  d013d8: mov    x0, x19                                  
  d013dc: bl     #0xd004fc                                ; LoginMediator$$ResetLogin
  d013e0: mov    x0, xzr                                  
  d013e4: bl     #0xeb3768                                ; SinaSDK$$Get
  d013e8: mov    x19, x0                                  
  d013ec: cbnz   x19, #0xd013f4                           
  d013f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d013f4: mov    x0, x19                                  
  d013f8: ldp    x29, x30, [sp, #0x30]                    
  d013fc: ldp    x20, x19, [sp, #0x20]                    
  d01400: ldp    x22, x21, [sp, #0x10]                    
  d01404: mov    x1, xzr                                  
  d01408: ldr    x23, [sp], #0x40                         
  d0140c: b      #0xebb6f8                                ; SinaSDK$$SinaLogout
  d01410: mov    w8, #1                                   
  d01414: strb   w8, [x20, #0x70]                         
  d01418: ldr    x20, [x19, #0x120]                       
  d0141c: cbnz   x20, #0xd01428                           
  d01420: mov    x0, xzr                                  
  d01424: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01428: adrp   x8, #0x3043000                           
  d0142c: ldr    x8, [x8, #0x160]                         ; STR "000000"
  d01430: ldr    x8, [x8]                                 
  d01434: str    x8, [x20, #0x20]                         
  d01438: ldp    x20, x21, [x19, #0x120]                  
  d0143c: cbnz   x21, #0xd01448                           
  d01440: mov    x0, xzr                                  
  d01444: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01448: ldr    x21, [x21, #0x28]                        
  d0144c: cbnz   x20, #0xd01458                           
  d01450: mov    x0, xzr                                  
  d01454: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01458: str    x21, [x20, #0x28]                        
  d0145c: ldp    x20, x21, [x19, #0x120]                  
  d01460: cbnz   x21, #0xd0146c                           
  d01464: mov    x0, xzr                                  
  d01468: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0146c: ldr    w21, [x21, #0x30]                        
  d01470: cbnz   x20, #0xd0147c                           
  d01474: mov    x0, xzr                                  
  d01478: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0147c: str    w21, [x20, #0x30]                        
  d01480: ldr    x20, [x19, #0x120]                       
  d01484: cbnz   x20, #0xd01490                           
  d01488: mov    x0, xzr                                  
  d0148c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01490: mov    w8, #1                                   
  d01494: strb   w8, [x20, #0x34]                         
  d01498: ldp    x20, x21, [x19, #0x120]                  
  d0149c: cbnz   x21, #0xd014a8                           
  d014a0: mov    x0, xzr                                  
  d014a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d014a8: ldr    w21, [x21, #0x10]                        
  d014ac: cbnz   x20, #0xd014b8                           
  d014b0: mov    x0, xzr                                  
  d014b4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d014b8: mov    x0, xzr                                  
  d014bc: str    w21, [x20, #0x50]                        
  d014c0: bl     #0xeb3768                                ; SinaSDK$$Get
  d014c4: ldr    x21, [x19, #0x120]                       
  d014c8: mov    x20, x0                                  
  d014cc: cbnz   x21, #0xd014d8                           
  d014d0: mov    x0, xzr                                  
  d014d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d014d8: ldr    x21, [x21, #0x10]                        
  d014dc: cbnz   x20, #0xd014e8                           
  d014e0: mov    x0, xzr                                  
  d014e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d014e8: str    x21, [x20, #0x48]                        
  d014ec: mov    x0, x19                                  
  d014f0: ldp    x29, x30, [sp, #0x30]                    
  d014f4: ldp    x20, x19, [sp, #0x20]                    
  d014f8: ldp    x22, x21, [sp, #0x10]                    
  d014fc: ldr    x23, [sp], #0x40                         
  d01500: b      #0xd01504                                ; LoginMediator$$BeginLogin

===== LoginMediator$$GetWaitMsg @ 0xd02364 (388 bytes)
  d02364: str    x21, [sp, #-0x30]!                       
  d02368: stp    x20, x19, [sp, #0x10]                    
  d0236c: stp    x29, x30, [sp, #0x20]                    
  d02370: add    x29, sp, #0x20                           
  d02374: adrp   x21, #0x31cc000                          
  d02378: ldrb   w8, [x21, #0x812]                        
  d0237c: mov    x19, x1                                  
  d02380: mov    x20, x0                                  
  d02384: tbnz   w8, #0, #0xd023a0                        
  d02388: adrp   x8, #0x2fe6000                           
  d0238c: ldr    x8, [x8, #0x68]                          
  d02390: ldr    w0, [x8]                                 
  d02394: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02398: mov    w8, #1                                   
  d0239c: strb   w8, [x21, #0x812]                        
  d023a0: adrp   x8, #0x3063000                           
  d023a4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d023a8: ldr    x8, [x8]                                 
  d023ac: ldr    x8, [x8, #0xb8]                          
  d023b0: ldr    x0, [x8, #0x288]                         
  d023b4: cbz    x0, #0xd023d4                            
  d023b8: mov    x1, x20                                  
  d023bc: mov    x2, x19                                  
  d023c0: ldp    x29, x30, [sp, #0x20]                    
  d023c4: ldp    x20, x19, [sp, #0x10]                    
  d023c8: mov    x3, xzr                                  
  d023cc: ldr    x21, [sp], #0x30                         
  d023d0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d023d4: ldrb   w8, [x20, #0x145]                        
  d023d8: add    w8, w8, #3                               
  d023dc: mvn    w8, w8                                   
  d023e0: and    w8, w8, #3                               
  d023e4: cbz    w8, #0xd023f8                            
  d023e8: ldp    x29, x30, [sp, #0x20]                    
  d023ec: ldp    x20, x19, [sp, #0x10]                    
  d023f0: ldr    x21, [sp], #0x30                         
  d023f4: ret                                             
  d023f8: mov    x0, x20                                  
  d023fc: bl     #0xd01a10                                ; LoginMediator$$StopLoginWait
  d02400: mov    x0, x20                                  
  d02404: mov    x1, xzr                                  
  d02408: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d0240c: mov    x20, x0                                  
  d02410: cbnz   x19, #0xd0241c                           
  d02414: mov    x0, xzr                                  
  d02418: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0241c: adrp   x10, #0x2ff0000                          
  d02420: ldr    x8, [x19]                                
  d02424: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d02428: ldrh   w9, [x8, #0x11e]                         
  d0242c: ldr    x1, [x10]                                
  d02430: cbz    x9, #0xd0245c                            
  d02434: ldr    x11, [x8, #0xb0]                         
  d02438: mov    x10, xzr                                 
  d0243c: add    x11, x11, #8                             
  d02440: ldur   x12, [x11, #-8]                          
  d02444: cmp    x12, x1                                  
  d02448: b.eq   #0xd0246c                                
  d0244c: add    x10, x10, #1                             
  d02450: cmp    x10, x9                                  
  d02454: add    x11, x11, #0x10                          
  d02458: b.lo   #0xd02440                                
  d0245c: mov    w2, #4                                   
  d02460: mov    x0, x19                                  
  d02464: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d02468: b      #0xd0247c                                
  d0246c: ldr    w9, [x11]                                
  d02470: add    w9, w9, #4                               
  d02474: add    x8, x8, w9, uxtw #4                      
  d02478: add    x0, x8, #0x128                           
  d0247c: ldp    x8, x1, [x0]                             
  d02480: mov    x0, x19                                  
  d02484: blr    x8                                       
  d02488: cbz    x0, #0xd024ac                            
  d0248c: adrp   x8, #0x2fc5000                           
  d02490: ldr    x8, [x8, #0xe20]                         ; META msg.SCAccountLoginQueue_TypeInfo
  d02494: ldr    x9, [x0]                                 
  d02498: ldr    x8, [x8]                                 
  d0249c: ldrb   w11, [x9, #0x120]                        
  d024a0: ldrb   w10, [x8, #0x120]                        
  d024a4: cmp    w11, w10                                 
  d024a8: b.hs   #0xd024b4                                
  d024ac: mov    x1, xzr                                  
  d024b0: b      #0xd024c8                                
  d024b4: ldr    x9, [x9, #0xc8]                          
  d024b8: add    x9, x9, x10, lsl #3                      
  d024bc: ldur   x9, [x9, #-8]                            
  d024c0: cmp    x9, x8                                   
  d024c4: csel   x1, x0, xzr, eq                          
  d024c8: adrp   x8, #0x3040000                           
  d024cc: ldr    x8, [x8, #0x6a8]                         ; MMETH Method$EventDispatcherExtension.Open<WaitingView>()
  d024d0: mov    x0, x20                                  
  d024d4: ldp    x29, x30, [sp, #0x20]                    
  d024d8: ldp    x20, x19, [sp, #0x10]                    
  d024dc: ldr    x2, [x8]                                 
  d024e0: ldr    x21, [sp], #0x30                         
  d024e4: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== LoginMediator$$Login @ 0xd01bb0 (824 bytes)
  d01bb0: str    x25, [sp, #-0x50]!                       
  d01bb4: stp    x24, x23, [sp, #0x10]                    
  d01bb8: stp    x22, x21, [sp, #0x20]                    
  d01bbc: stp    x20, x19, [sp, #0x30]                    
  d01bc0: stp    x29, x30, [sp, #0x40]                    
  d01bc4: add    x29, sp, #0x40                           
  d01bc8: adrp   x19, #0x31cc000                          
  d01bcc: ldrb   w8, [x19, #0x810]                        
  d01bd0: mov    x20, x0                                  
  d01bd4: tbnz   w8, #0, #0xd01bf0                        
  d01bd8: adrp   x8, #0x3057000                           
  d01bdc: ldr    x8, [x8, #0xfc0]                         
  d01be0: ldr    w0, [x8]                                 
  d01be4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01be8: mov    w8, #1                                   
  d01bec: strb   w8, [x19, #0x810]                        
  d01bf0: adrp   x8, #0x3063000                           
  d01bf4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01bf8: ldr    x8, [x8]                                 
  d01bfc: ldr    x8, [x8, #0xb8]                          
  d01c00: ldr    x0, [x8, #0x278]                         
  d01c04: cbz    x0, #0xd01c28                            
  d01c08: mov    x1, x20                                  
  d01c0c: ldp    x29, x30, [sp, #0x40]                    
  d01c10: ldp    x20, x19, [sp, #0x30]                    
  d01c14: ldp    x22, x21, [sp, #0x20]                    
  d01c18: ldp    x24, x23, [sp, #0x10]                    
  d01c1c: mov    x2, xzr                                  
  d01c20: ldr    x25, [sp], #0x50                         
  d01c24: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d01c28: adrp   x8, #0x3018000                           
  d01c2c: ldr    x8, [x8, #0xc68]                         ; META msg.CSLogin_TypeInfo
  d01c30: ldr    x0, [x8]                                 
  d01c34: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d01c38: mov    x1, xzr                                  
  d01c3c: mov    x19, x0                                  
  d01c40: bl     #0x212c1c4                               ; msg.CSLogin$$.ctor
  d01c44: ldr    x21, [x20, #0x120]                       
  d01c48: cbnz   x21, #0xd01c54                           
  d01c4c: mov    x0, xzr                                  
  d01c50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01c54: ldr    x21, [x21, #0x18]                        
  d01c58: cbnz   x19, #0xd01c64                           
  d01c5c: mov    x0, xzr                                  
  d01c60: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01c64: mov    x0, x19                                  
  d01c68: mov    x1, x21                                  
  d01c6c: mov    x2, xzr                                  
  d01c70: bl     #0x212c7ec                               ; msg.CSLogin$$set_name
  d01c74: ldr    x21, [x20, #0x120]                       
  d01c78: cbnz   x21, #0xd01c84                           
  d01c7c: mov    x0, xzr                                  
  d01c80: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01c84: ldr    x21, [x21, #0x10]                        
  d01c88: cbnz   x19, #0xd01c94                           
  d01c8c: mov    x0, xzr                                  
  d01c90: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01c94: mov    x0, x19                                  
  d01c98: mov    x1, x21                                  
  d01c9c: mov    x2, xzr                                  
  d01ca0: bl     #0x212c7d4                               ; msg.CSLogin$$set_account
  d01ca4: ldr    x21, [x20, #0x120]                       
  d01ca8: cbnz   x21, #0xd01cb4                           
  d01cac: mov    x0, xzr                                  
  d01cb0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01cb4: ldr    w21, [x21, #0x50]                        
  d01cb8: cbnz   x19, #0xd01cc4                           
  d01cbc: mov    x0, xzr                                  
  d01cc0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01cc4: mov    x0, x19                                  
  d01cc8: mov    w1, w21                                  
  d01ccc: mov    x2, xzr                                  
  d01cd0: bl     #0x212ce20                               ; msg.CSLogin$$set_serverId
  d01cd4: ldr    x21, [x20, #0x120]                       
  d01cd8: cbnz   x21, #0xd01ce4                           
  d01cdc: mov    x0, xzr                                  
  d01ce0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01ce4: ldr    x21, [x21, #0x48]                        
  d01ce8: cbnz   x19, #0xd01cf4                           
  d01cec: mov    x0, xzr                                  
  d01cf0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01cf4: mov    x0, x19                                  
  d01cf8: mov    x1, x21                                  
  d01cfc: mov    x2, xzr                                  
  d01d00: bl     #0x212caf8                               ; msg.CSLogin$$set_channel
  d01d04: ldr    x21, [x20, #0x120]                       
  d01d08: cbnz   x21, #0xd01d14                           
  d01d0c: mov    x0, xzr                                  
  d01d10: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01d14: ldr    x21, [x21, #0x38]                        
  d01d18: cbz    x19, #0xd01d34                           
  d01d1c: mov    x0, x19                                  
  d01d20: mov    x1, x21                                  
  d01d24: mov    x2, xzr                                  
  d01d28: bl     #0x212c9f4                               ; msg.CSLogin$$set_token
  d01d2c: ldr    x21, [x20, #0x138]                       
  d01d30: b      #0xd01d58                                
  d01d34: mov    x0, xzr                                  
  d01d38: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01d3c: mov    x0, x19                                  
  d01d40: mov    x1, x21                                  
  d01d44: mov    x2, xzr                                  
  d01d48: bl     #0x212c9f4                               ; msg.CSLogin$$set_token
  d01d4c: ldr    x21, [x20, #0x138]                       
  d01d50: mov    x0, xzr                                  
  d01d54: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01d58: mov    x0, x19                                  
  d01d5c: mov    x1, x21                                  
  d01d60: mov    x2, xzr                                  
  d01d64: bl     #0x212d044                               ; msg.CSLogin$$set_appendInfo
  d01d68: adrp   x21, #0x302c000                          
  d01d6c: ldr    x21, [x21, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  d01d70: ldr    x0, [x21]                                
  d01d74: ldrb   w8, [x0, #0x127]                         
  d01d78: tbz    w8, #1, #0xd01d8c                        
  d01d7c: ldr    w8, [x0, #0xd8]                          
  d01d80: cbnz   w8, #0xd01d8c                            
  d01d84: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d01d88: ldr    x0, [x21]                                
  d01d8c: adrp   x9, #0x303f000                           
  d01d90: ldr    x8, [x0, #0xb8]                          
  d01d94: ldr    x9, [x9, #0xc10]                         ; META char[]_TypeInfo
  d01d98: mov    w1, #1                                   
  d01d9c: ldr    x21, [x8, #8]                            
  d01da0: ldr    x0, [x9]                                 
  d01da4: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  d01da8: mov    x22, x0                                  
  d01dac: cbnz   x22, #0xd01db4                           
  d01db0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01db4: ldr    w8, [x22, #0x18]                         
  d01db8: cbnz   w8, #0xd01dcc                            
  d01dbc: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  d01dc0: mov    x1, xzr                                  
  d01dc4: mov    x2, xzr                                  
  d01dc8: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  d01dcc: mov    w8, #0x2e                                
  d01dd0: strh   w8, [x22, #0x20]                         
  d01dd4: cbnz   x21, #0xd01de0                           
  d01dd8: mov    x0, xzr                                  
  d01ddc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01de0: mov    x0, x21                                  
  d01de4: mov    x1, x22                                  
  d01de8: mov    x2, xzr                                  
  d01dec: bl     #0x1c70308                               ; System.String$$Split
  d01df0: mov    x21, x0                                  
  d01df4: mov    w23, wzr                                 
  d01df8: mov    w22, wzr                                 
  d01dfc: mov    w24, #0x3e8                              
  d01e00: b      #0xd01e44                                
  d01e04: mul    w9, w22, w24                             
  d01e08: cmp    w23, #1                                  
  d01e0c: csel   w22, w22, w9, lt                         
  d01e10: cmp    w23, w8                                  
  d01e14: sxtw   x25, w23                                 
  d01e18: b.lo   #0xd01e2c                                
  d01e1c: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  d01e20: mov    x1, xzr                                  
  d01e24: mov    x2, xzr                                  
  d01e28: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  d01e2c: add    x8, x21, x25, lsl #3                     
  d01e30: ldr    x0, [x8, #0x20]                          
  d01e34: mov    x1, xzr                                  
  d01e38: bl     #0x134b8b8                               ; UniCore.GeneralUtils$$ForceInt
  d01e3c: add    w22, w0, w22                             
  d01e40: add    w23, w23, #1                             
  d01e44: cbnz   x21, #0xd01e50                           
  d01e48: mov    x0, xzr                                  
  d01e4c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01e50: ldr    w8, [x21, #0x18]                         
  d01e54: cmp    w23, w8                                  
  d01e58: b.lt   #0xd01e04                                
  d01e5c: cbnz   x19, #0xd01e68                           
  d01e60: mov    x0, xzr                                  
  d01e64: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01e68: mov    x0, x19                                  
  d01e6c: mov    w1, w22                                  
  d01e70: mov    x2, xzr                                  
  d01e74: bl     #0x212cbfc                               ; msg.CSLogin$$set_version
  d01e78: mov    x0, xzr                                  
  d01e7c: bl     #0xeb3768                                ; SinaSDK$$Get
  d01e80: ldr    x21, [x20, #0x120]                       
  d01e84: mov    x20, x0                                  
  d01e88: cbnz   x21, #0xd01e94                           
  d01e8c: mov    x0, xzr                                  
  d01e90: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01e94: ldr    w21, [x21, #0x50]                        
  d01e98: cbnz   x20, #0xd01ea4                           
  d01e9c: mov    x0, xzr                                  
  d01ea0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01ea4: str    w21, [x20, #0x40]                        
  d01ea8: adrp   x8, #0x3077000                           
  d01eac: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  d01eb0: ldr    x0, [x8]                                 
  d01eb4: ldrb   w8, [x0, #0x127]                         
  d01eb8: tbz    w8, #1, #0xd01ec8                        
  d01ebc: ldr    w8, [x0, #0xd8]                          
  d01ec0: cbnz   w8, #0xd01ec8                            
  d01ec4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d01ec8: mov    x0, x19                                  
  d01ecc: ldp    x29, x30, [sp, #0x40]                    
  d01ed0: ldp    x20, x19, [sp, #0x30]                    
  d01ed4: ldp    x22, x21, [sp, #0x20]                    
  d01ed8: ldp    x24, x23, [sp, #0x10]                    
  d01edc: mov    x1, xzr                                  
  d01ee0: ldr    x25, [sp], #0x50                         
  d01ee4: b      #0x1125f84                               ; ConnectAPI$$QueuePacket

===== LoginMediator$$LoginFailed @ 0xd00408 (244 bytes)
  d00408: str    x21, [sp, #-0x30]!                       
  d0040c: stp    x20, x19, [sp, #0x10]                    
  d00410: stp    x29, x30, [sp, #0x20]                    
  d00414: add    x29, sp, #0x20                           
  d00418: adrp   x21, #0x31cc000                          
  d0041c: ldrb   w8, [x21, #0x802]                        
  d00420: mov    x20, x1                                  
  d00424: mov    x19, x0                                  
  d00428: tbnz   w8, #0, #0xd00444                        
  d0042c: adrp   x8, #0x3004000                           
  d00430: ldr    x8, [x8, #0xba8]                         
  d00434: ldr    w0, [x8]                                 
  d00438: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d0043c: mov    w8, #1                                   
  d00440: strb   w8, [x21, #0x802]                        
  d00444: adrp   x8, #0x3063000                           
  d00448: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d0044c: ldr    x8, [x8]                                 
  d00450: ldr    x8, [x8, #0xb8]                          
  d00454: ldr    x0, [x8, #0x208]                         
  d00458: cbz    x0, #0xd00478                            
  d0045c: mov    x1, x19                                  
  d00460: mov    x2, x20                                  
  d00464: ldp    x29, x30, [sp, #0x20]                    
  d00468: ldp    x20, x19, [sp, #0x10]                    
  d0046c: mov    x3, xzr                                  
  d00470: ldr    x21, [sp], #0x30                         
  d00474: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d00478: strb   wzr, [x19, #0x144]                       
  d0047c: bl     #0x1269298                               ; CommonTipView$$Get
  d00480: mov    x21, x0                                  
  d00484: mov    x0, x20                                  
  d00488: mov    x1, xzr                                  
  d0048c: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  d00490: tbz    w0, #0, #0xd004cc                        
  d00494: adrp   x8, #0x303e000                           
  d00498: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  d0049c: ldr    x0, [x8]                                 
  d004a0: ldrb   w8, [x0, #0x127]                         
  d004a4: tbz    w8, #1, #0xd004b4                        
  d004a8: ldr    w8, [x0, #0xd8]                          
  d004ac: cbnz   w8, #0xd004b4                            
  d004b0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d004b4: adrp   x8, #0x2ffb000                           
  d004b8: ldr    x8, [x8, #0x400]                         ; STR "GLOBAL_NOSERVERS"
  d004bc: mov    x1, xzr                                  
  d004c0: ldr    x0, [x8]                                 
  d004c4: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  d004c8: mov    x20, x0                                  
  d004cc: cbnz   x21, #0xd004d8                           
  d004d0: mov    x0, xzr                                  
  d004d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d004d8: mov    x0, x21                                  
  d004dc: mov    x1, x20                                  
  d004e0: mov    x2, xzr                                  
  d004e4: bl     #0x126a774                               ; CommonTipView$$PopCenterTipWnd
  d004e8: mov    x0, x19                                  
  d004ec: ldp    x29, x30, [sp, #0x20]                    
  d004f0: ldp    x20, x19, [sp, #0x10]                    
  d004f4: ldr    x21, [sp], #0x30                         
  d004f8: b      #0xd004fc                                ; LoginMediator$$ResetLogin

===== LoginMediator$$OnCancelQueue @ 0xd024e8 (116 bytes)
  d024e8: stp    x20, x19, [sp, #-0x20]!                  
  d024ec: stp    x29, x30, [sp, #0x10]                    
  d024f0: add    x29, sp, #0x10                           
  d024f4: adrp   x20, #0x31cc000                          
  d024f8: ldrb   w8, [x20, #0x813]                        
  d024fc: mov    x19, x0                                  
  d02500: tbnz   w8, #0, #0xd0251c                        
  d02504: adrp   x8, #0x2ff1000                           
  d02508: ldr    x8, [x8, #0xc90]                         
  d0250c: ldr    w0, [x8]                                 
  d02510: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02514: mov    w8, #1                                   
  d02518: strb   w8, [x20, #0x813]                        
  d0251c: adrp   x8, #0x3063000                           
  d02520: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d02524: ldr    x8, [x8]                                 
  d02528: ldr    x8, [x8, #0xb8]                          
  d0252c: ldr    x0, [x8, #0x290]                         
  d02530: cbz    x0, #0xd02548                            
  d02534: ldp    x29, x30, [sp, #0x10]                    
  d02538: mov    x1, x19                                  
  d0253c: mov    x2, xzr                                  
  d02540: ldp    x20, x19, [sp], #0x20                    
  d02544: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d02548: strb   wzr, [x19, #0x144]                       
  d0254c: ldp    x29, x30, [sp, #0x10]                    
  d02550: mov    x0, x19                                  
  d02554: ldp    x20, x19, [sp], #0x20                    
  d02558: b      #0xd004fc                                ; LoginMediator$$ResetLogin

===== LoginMediator$$OnLoginMsg @ 0xd01ee8 (1148 bytes)
  d01ee8: stp    x22, x21, [sp, #-0x30]!                  
  d01eec: stp    x20, x19, [sp, #0x10]                    
  d01ef0: stp    x29, x30, [sp, #0x20]                    
  d01ef4: add    x29, sp, #0x20                           
  d01ef8: adrp   x21, #0x31cc000                          
  d01efc: ldrb   w8, [x21, #0x811]                        
  d01f00: mov    x20, x1                                  
  d01f04: mov    x19, x0                                  
  d01f08: tbnz   w8, #0, #0xd01f24                        
  d01f0c: adrp   x8, #0x3018000                           
  d01f10: ldr    x8, [x8, #0xe70]                         
  d01f14: ldr    w0, [x8]                                 
  d01f18: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01f1c: mov    w8, #1                                   
  d01f20: strb   w8, [x21, #0x811]                        
  d01f24: adrp   x8, #0x3063000                           
  d01f28: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01f2c: ldr    x8, [x8]                                 
  d01f30: ldr    x8, [x8, #0xb8]                          
  d01f34: ldr    x0, [x8, #0x280]                         
  d01f38: cbz    x0, #0xd01f58                            
  d01f3c: mov    x1, x19                                  
  d01f40: mov    x2, x20                                  
  d01f44: ldp    x29, x30, [sp, #0x20]                    
  d01f48: ldp    x20, x19, [sp, #0x10]                    
  d01f4c: mov    x3, xzr                                  
  d01f50: ldp    x22, x21, [sp], #0x30                    
  d01f54: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d01f58: mov    w8, #1                                   
  d01f5c: mov    x0, x19                                  
  d01f60: mov    x1, xzr                                  
  d01f64: strb   w8, [x19, #0x145]                        
  d01f68: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d01f6c: adrp   x8, #0x306c000                           
  d01f70: ldr    x8, [x8, #0x280]                         ; MMETH Method$EventDispatcherExtension.Close<WaitingView>()
  d01f74: ldr    x1, [x8]                                 
  d01f78: bl     #0x12a82a4                               ; EventDispatcherExtension$$Close<WaitingView>
  d01f7c: cbnz   x20, #0xd01f88                           
  d01f80: mov    x0, xzr                                  
  d01f84: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d01f88: adrp   x10, #0x2ff0000                          
  d01f8c: ldr    x8, [x20]                                
  d01f90: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d01f94: ldrh   w9, [x8, #0x11e]                         
  d01f98: ldr    x1, [x10]                                
  d01f9c: cbz    x9, #0xd01fc8                            
  d01fa0: ldr    x11, [x8, #0xb0]                         
  d01fa4: mov    x10, xzr                                 
  d01fa8: add    x11, x11, #8                             
  d01fac: ldur   x12, [x11, #-8]                          
  d01fb0: cmp    x12, x1                                  
  d01fb4: b.eq   #0xd01fd8                                
  d01fb8: add    x10, x10, #1                             
  d01fbc: cmp    x10, x9                                  
  d01fc0: add    x11, x11, #0x10                          
  d01fc4: b.lo   #0xd01fac                                
  d01fc8: mov    w2, #4                                   
  d01fcc: mov    x0, x20                                  
  d01fd0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d01fd4: b      #0xd01fe8                                
  d01fd8: ldr    w9, [x11]                                
  d01fdc: add    w9, w9, #4                               
  d01fe0: add    x8, x8, w9, uxtw #4                      
  d01fe4: add    x0, x8, #0x128                           
  d01fe8: ldp    x8, x1, [x0]                             
  d01fec: mov    x0, x20                                  
  d01ff0: blr    x8                                       
  d01ff4: mov    x20, x0                                  
  d01ff8: cbz    x20, #0xd02030                           
  d01ffc: adrp   x8, #0x2fed000                           
  d02000: ldr    x8, [x8, #0xe58]                         ; META msg.SCLoginResult_TypeInfo
  d02004: ldr    x9, [x20]                                
  d02008: b      #0xd1e914                                ; ? near MaterialOrder$$.ctor+0x34
  d0200c: ldrb   w11, [x9, #0x120]                        
  d02010: ldrb   w10, [x8, #0x120]                        
  d02014: cmp    w11, w10                                 
  d02018: b.lo   #0xd02030                                
  d0201c: ldr    x9, [x9, #0xc8]                          
  d02020: add    x9, x9, x10, lsl #3                      
  d02024: ldur   x9, [x9, #-8]                            
  d02028: cmp    x9, x8                                   
  d0202c: b.eq   #0xd020b0                                
  d02030: adrp   x20, #0x2ff5000                          
  d02034: ldr    x20, [x20, #0x500]                       ; META UniCore.Log_TypeInfo
  d02038: ldr    x0, [x20]                                
  d0203c: ldrb   w8, [x0, #0x127]                         
  d02040: tbz    w8, #1, #0xd02054                        
  d02044: ldr    w8, [x0, #0xd8]                          
  d02048: cbnz   w8, #0xd02054                            
  d0204c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d02050: ldr    x0, [x20]                                
  d02054: adrp   x9, #0x2fc7000                           
  d02058: ldr    x8, [x0, #0xb8]                          
  d0205c: ldr    x9, [x9, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  d02060: ldr    x20, [x8, #8]                            
  d02064: ldr    x0, [x9]                                 
  d02068: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  d0206c: mov    x21, x0                                  
  d02070: cbnz   x20, #0xd0207c                           
  d02074: mov    x0, xzr                                  
  d02078: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0207c: adrp   x8, #0x2fcc000                           
  d02080: ldr    x8, [x8, #0x230]                         ; STR "Packet type is error. is not SCLoginResult"
  d02084: mov    x0, x20                                  
  d02088: mov    x2, x21                                  
  d0208c: mov    x3, xzr                                  
  d02090: ldr    x1, [x8]                                 
  d02094: bl     #0x1423464                               ; UniCore.Logger$$Error
  d02098: mov    x0, x19                                  
  d0209c: ldp    x29, x30, [sp, #0x20]                    
  d020a0: ldp    x20, x19, [sp, #0x10]                    
  d020a4: mov    x1, xzr                                  
  d020a8: ldp    x22, x21, [sp], #0x30                    
  d020ac: b      #0xd00408                                ; LoginMediator$$LoginFailed
  d020b0: mov    x0, x20                                  
  d020b4: mov    x1, xzr                                  
  d020b8: bl     #0x1b9c458                               ; msg.SCLoginResult$$get_resultCode
  d020bc: cmn    w0, #1                                   
  d020c0: b.ne   #0xd020dc                                
  d020c4: mov    x0, x20                                  
  d020c8: mov    x1, xzr                                  
  d020cc: bl     #0x1b9c4ec                               ; msg.SCLoginResult$$get_resultReason
  d020d0: mov    x1, xzr                                  
  d020d4: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  d020d8: tbz    w0, #0, #0xd021ac                        
  d020dc: mov    x0, x20                                  
  d020e0: mov    x1, xzr                                  
  d020e4: bl     #0x1b9c594                               ; msg.SCLoginResult$$get_keyActivate
  d020e8: tbz    w0, #0, #0xd02120                        
  d020ec: mov    x0, x19                                  
  d020f0: mov    x1, xzr                                  
  d020f4: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d020f8: adrp   x8, #0x3076000                           
  d020fc: ldr    x8, [x8, #0x3d0]                         ; MMETH Method$EventDispatcherExtension.Open<AccountActiveView>()
  d02100: mov    x1, xzr                                  
  d02104: ldr    x2, [x8]                                 
  d02108: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  d0210c: mov    x0, x19                                  
  d02110: ldp    x29, x30, [sp, #0x20]                    
  d02114: ldp    x20, x19, [sp, #0x10]                    
  d02118: ldp    x22, x21, [sp], #0x30                    
  d0211c: b      #0xd01a10                                ; LoginMediator$$StopLoginWait
  d02120: ldr    x1, [x19, #0x130]                        
  d02124: cbz    x1, #0xd02134                            
  d02128: mov    x0, x19                                  
  d0212c: mov    x2, xzr                                  
  d02130: bl     #0x1be157c                               ; UnityEngine.MonoBehaviour$$StopCoroutine
  d02134: ldr    s0, [x19, #0x140]                        
  d02138: mov    x0, x19                                  
  d0213c: fadd   s0, s0, s0                               
  d02140: bl     #0xd01918                                ; LoginMediator$$WaitInitData
  d02144: mov    x1, x0                                   
  d02148: mov    x0, x19                                  
  d0214c: mov    x2, xzr                                  
  d02150: bl     #0x1be12e8                               ; UnityEngine.MonoBehaviour$$StartCoroutine
  d02154: str    x0, [x19, #0x130]                        
  d02158: adrp   x8, #0x3025000                           
  d0215c: ldr    x8, [x8, #0x5a0]                         ; META msg.CSCharacterLogin_TypeInfo
  d02160: ldr    x0, [x8]                                 
  d02164: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d02168: mov    x1, xzr                                  
  d0216c: mov    x19, x0                                  
  d02170: bl     #0x13fbd94                               ; msg.CSCharacterLogin$$.ctor
  d02174: adrp   x8, #0x3077000                           
  d02178: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  d0217c: ldr    x0, [x8]                                 
  d02180: ldrb   w8, [x0, #0x127]                         
  d02184: tbz    w8, #1, #0xd02194                        
  d02188: ldr    w8, [x0, #0xd8]                          
  d0218c: cbnz   w8, #0xd02194                            
  d02190: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d02194: mov    x0, x19                                  
  d02198: ldp    x29, x30, [sp, #0x20]                    
  d0219c: ldp    x20, x19, [sp, #0x10]                    
  d021a0: mov    x1, xzr                                  
  d021a4: ldp    x22, x21, [sp], #0x30                    
  d021a8: b      #0x1125f84                               ; ConnectAPI$$QueuePacket
  d021ac: adrp   x8, #0x2fdb000                           
  d021b0: ldr    x8, [x8, #0x2c0]                         ; META string_TypeInfo
  d021b4: mov    x0, x20                                  
  d021b8: mov    x1, xzr                                  
  d021bc: ldr    x8, [x8]                                 
  d021c0: ldr    x8, [x8, #0xb8]                          
  d021c4: ldr    x21, [x8]                                
  d021c8: bl     #0x1b9c4ec                               ; msg.SCLoginResult$$get_resultReason
  d021cc: mov    x1, xzr                                  
  d021d0: bl     #0x1747e1c                               ; System.Int32$$Parse
  d021d4: adrp   x8, #0x3039000                           
  d021d8: ldr    x8, [x8, #0x2e8]                         ; META ConfStringServer_TypeInfo
  d021dc: mov    w22, w0                                  
  d021e0: ldr    x8, [x8]                                 
  d021e4: ldrb   w9, [x8, #0x127]                         
  d021e8: tbz    w9, #1, #0xd021fc                        
  d021ec: ldr    w9, [x8, #0xd8]                          
  d021f0: cbnz   w9, #0xd021fc                            
  d021f4: mov    x0, x8                                   
  d021f8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d021fc: mov    w0, w22                                  
  d02200: mov    x1, xzr                                  
  d02204: bl     #0x1114298                               ; ConfStringServer$$Get
  d02208: cbz    x0, #0xd02218                            
  d0220c: mov    x1, xzr                                  
  d02210: bl     #0x1113c04                               ; ConfStringServer$$get_desc
  d02214: mov    x21, x0                                  
  d02218: mov    x0, x19                                  
  d0221c: mov    x1, x21                                  
  d02220: bl     #0xd00408                                ; LoginMediator$$LoginFailed
  d02224: mov    x0, x20                                  
  d02228: mov    x1, xzr                                  
  d0222c: bl     #0x1b9c4ec                               ; msg.SCLoginResult$$get_resultReason
  d02230: mov    x19, x0                                  
  d02234: cbnz   x19, #0xd0223c                           
  d02238: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0223c: adrp   x8, #0x301f000                           
  d02240: ldr    x8, [x8, #0x2c0]                         ; STR "8507"
  d02244: mov    x0, x19                                  
  d02248: mov    x2, xzr                                  
  d0224c: ldr    x1, [x8]                                 
  d02250: bl     #0x1c6e20c                               ; System.String$$Equals
  d02254: tbz    w0, #0, #0xd022bc                        
  d02258: mov    x0, xzr                                  
  d0225c: bl     #0x1e6ccac                               ; UnityEngine.Application$$get_platform
  d02260: cmp    w0, #8                                   
  d02264: b.ne   #0xd022bc                                
  d02268: adrp   x19, #0x302c000                          
  d0226c: ldr    x19, [x19, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  d02270: ldr    x0, [x19]                                
  d02274: ldrb   w8, [x0, #0x127]                         
  d02278: tbz    w8, #1, #0xd0228c                        
  d0227c: ldr    w8, [x0, #0xd8]                          
  d02280: cbnz   w8, #0xd0228c                            
  d02284: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d02288: ldr    x0, [x19]                                
  d0228c: ldr    x8, [x0, #0xb8]                          
  d02290: adrp   x9, #0x304a000                           
  d02294: ldr    x9, [x9, #0x2c0]                         ; STR "com.sina.sng.evangelion"
  d02298: mov    x2, xzr                                  
  d0229c: ldr    x19, [x8]                                
  d022a0: ldr    x1, [x9]                                 
  d022a4: mov    x0, x19                                  
  d022a8: bl     #0x1c6fe98                               ; System.String$$op_Equality
  d022ac: tbz    w0, #0, #0xd022cc                        
  d022b0: adrp   x8, #0x3011000                           
  d022b4: ldr    x8, [x8, #0x880]                         ; STR "https://itunes.apple.com/cn/app/id1150277659"
  d022b8: b      #0xd0234c                                
  d022bc: ldp    x29, x30, [sp, #0x20]                    
  d022c0: ldp    x20, x19, [sp, #0x10]                    
  d022c4: ldp    x22, x21, [sp], #0x30                    
  d022c8: ret                                             
  d022cc: adrp   x8, #0x3054000                           
  d022d0: ldr    x8, [x8, #0x8a0]                         ; STR "com.sina.sng.pxzr"
  d022d4: mov    x0, x19                                  
  d022d8: mov    x2, xzr                                  
  d022dc: ldr    x1, [x8]                                 
  d022e0: bl     #0x1c6fe98                               ; System.String$$op_Equality
  d022e4: tbz    w0, #0, #0xd022f4                        
  d022e8: adrp   x8, #0x2ff3000                           
  d022ec: ldr    x8, [x8, #0x4a0]                         ; STR "https://itunes.apple.com/cn/app/id1239683416"
  d022f0: b      #0xd0234c                                
  d022f4: adrp   x8, #0x3018000                           
  d022f8: ldr    x8, [x8, #0xa20]                         ; STR "com.sina.sng.evanew"
  d022fc: mov    x0, x19                                  
  d02300: mov    x2, xzr                                  
  d02304: ldr    x1, [x8]                                 
  d02308: bl     #0x1c6fe98                               ; System.String$$op_Equality
  d0230c: tbz    w0, #0, #0xd0231c                        
  d02310: adrp   x8, #0x3003000                           
  d02314: ldr    x8, [x8, #0x318]                         ; STR "https://itunes.apple.com/cn/app/id1239723075"
  d02318: b      #0xd0234c                                
  d0231c: adrp   x8, #0x3051000                           
  d02320: ldr    x8, [x8, #0xa00]                         ; STR "com.sina.sng.pxcs"
  d02324: mov    x0, x19                                  
  d02328: mov    x2, xzr                                  
  d0232c: ldr    x1, [x8]                                 
  d02330: bl     #0x1c6fe98                               ; System.String$$op_Equality
  d02334: tbz    w0, #0, #0xd02344                        
  d02338: adrp   x8, #0x2fe7000                           
  d0233c: ldr    x8, [x8, #0x270]                         ; STR "https://itunes.apple.com/cn/app/id1243390655"
  d02340: b      #0xd0234c                                
  d02344: adrp   x8, #0x2ff4000                           
  d02348: ldr    x8, [x8, #0xf08]                         ; STR "https://itunes.apple.com/cn/app/id1406685165"
  d0234c: ldr    x0, [x8]                                 
  d02350: ldp    x29, x30, [sp, #0x20]                    
  d02354: ldp    x20, x19, [sp, #0x10]                    
  d02358: mov    x1, xzr                                  
  d0235c: ldp    x22, x21, [sp], #0x30                    
  d02360: b      #0x1e6d030                               ; UnityEngine.Application$$OpenURL

===== LoginMediator$$OnRegister @ 0xcfe9d4 (2616 bytes)
  cfe9d4: sub    sp, sp, #0x70                            
  cfe9d8: stp    x26, x25, [sp, #0x20]                    
  cfe9dc: stp    x24, x23, [sp, #0x30]                    
  cfe9e0: stp    x22, x21, [sp, #0x40]                    
  cfe9e4: stp    x20, x19, [sp, #0x50]                    
  cfe9e8: stp    x29, x30, [sp, #0x60]                    
  cfe9ec: add    x29, sp, #0x60                           
  cfe9f0: adrp   x20, #0x31cc000                          
  cfe9f4: ldrb   w8, [x20, #0x7ff]                        
  cfe9f8: mov    x19, x0                                  
  cfe9fc: tbnz   w8, #0, #0xcfea18                        
  cfea00: adrp   x8, #0x2fc7000                           
  cfea04: ldr    x8, [x8, #0xa68]                         
  cfea08: ldr    w0, [x8]                                 
  cfea0c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfea10: mov    w8, #1                                   
  cfea14: strb   w8, [x20, #0x7ff]                        
  cfea18: adrp   x8, #0x3063000                           
  cfea1c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfea20: ldr    x8, [x8]                                 
  cfea24: ldr    x8, [x8, #0xb8]                          
  cfea28: ldr    x0, [x8, #0x1f0]                         
  cfea2c: cbz    x0, #0xcfea54                            
  cfea30: mov    x1, x19                                  
  cfea34: ldp    x29, x30, [sp, #0x60]                    
  cfea38: ldp    x20, x19, [sp, #0x50]                    
  cfea3c: ldp    x22, x21, [sp, #0x40]                    
  cfea40: ldp    x24, x23, [sp, #0x30]                    
  cfea44: ldp    x26, x25, [sp, #0x20]                    
  cfea48: mov    x2, xzr                                  
  cfea4c: add    sp, sp, #0x70                            
  cfea50: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  cfea54: mov    x0, x19                                  
  cfea58: mov    x1, xzr                                  
  cfea5c: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cfea60: adrp   x25, #0x3011000                          
  cfea64: ldr    x25, [x25, #0x730]                       ; META LoginEvent_TypeInfo
  cfea68: mov    x20, x0                                  
  cfea6c: mov    w8, #7                                   
  cfea70: add    x1, sp, #0x1c                            
  cfea74: ldr    x0, [x25]                                
  cfea78: str    w8, [sp, #0x1c]                          
  cfea7c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfea80: adrp   x23, #0x302a000                          
  cfea84: ldr    x23, [x23, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
  cfea88: mov    x21, x0                                  
  cfea8c: ldr    x8, [x23]                                
  cfea90: mov    x0, x8                                   
  cfea94: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfea98: adrp   x8, #0x3033000                           
  cfea9c: ldr    x8, [x8, #0x9f0]                         ; MMETH Method$LoginMediator.OnServerListInit()
  cfeaa0: mov    x1, x19                                  
  cfeaa4: mov    x3, xzr                                  
  cfeaa8: mov    x22, x0                                  
  cfeaac: ldr    x2, [x8]                                 
  cfeab0: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfeab4: cbnz   x20, #0xcfeac0                           
  cfeab8: mov    x0, xzr                                  
  cfeabc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfeac0: adrp   x24, #0x3069000                          
  cfeac4: ldr    x8, [x20]                                
  cfeac8: ldr    x24, [x24, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  cfeacc: ldrh   w9, [x8, #0x11e]                         
  cfead0: ldr    x1, [x24]                                
  cfead4: cbz    x9, #0xcfeb00                            
  cfead8: ldr    x11, [x8, #0xb0]                         
  cfeadc: mov    x10, xzr                                 
  cfeae0: add    x11, x11, #8                             
  cfeae4: ldur   x12, [x11, #-8]                          
  cfeae8: cmp    x12, x1                                  
  cfeaec: b.eq   #0xcfeb10                                
  cfeaf0: add    x10, x10, #1                             
  cfeaf4: cmp    x10, x9                                  
  cfeaf8: add    x11, x11, #0x10                          
  cfeafc: b.lo   #0xcfeae4                                
  cfeb00: mov    w2, #1                                   
  cfeb04: mov    x0, x20                                  
  cfeb08: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfeb0c: b      #0xcfeb20                                
  cfeb10: ldr    w9, [x11]                                
  cfeb14: add    w9, w9, #1                               
  cfeb18: add    x8, x8, w9, uxtw #4                      
  cfeb1c: add    x0, x8, #0x128                           
  cfeb20: ldp    x8, x3, [x0]                             
  cfeb24: mov    x0, x20                                  
  cfeb28: mov    x1, x21                                  
  cfeb2c: mov    x2, x22                                  
  cfeb30: blr    x8                                       
  cfeb34: mov    x0, x19                                  
  cfeb38: mov    x1, xzr                                  
  cfeb3c: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cfeb40: mov    x20, x0                                  
  cfeb44: ldr    x0, [x25]                                
  cfeb48: mov    w8, #0xb                                 
  cfeb4c: add    x1, sp, #0x18                            
  cfeb50: str    w8, [sp, #0x18]                          
  cfeb54: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfeb58: ldr    x8, [x23]                                
  cfeb5c: mov    x21, x0                                  
  cfeb60: mov    x0, x8                                   
  cfeb64: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfeb68: adrp   x8, #0x3049000                           
  cfeb6c: ldr    x8, [x8, #0xc08]                         ; MMETH Method$LoginMediator.OnServerSelected()
  cfeb70: mov    x1, x19                                  
  cfeb74: mov    x3, xzr                                  
  cfeb78: mov    x22, x0                                  
  cfeb7c: ldr    x2, [x8]                                 
  cfeb80: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfeb84: cbnz   x20, #0xcfeb90                           
  cfeb88: mov    x0, xzr                                  
  cfeb8c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfeb90: ldr    x8, [x20]                                
  cfeb94: ldr    x1, [x24]                                
  cfeb98: ldrh   w9, [x8, #0x11e]                         
  cfeb9c: cbz    x9, #0xcfebc8                            
  cfeba0: ldr    x11, [x8, #0xb0]                         
  cfeba4: mov    x10, xzr                                 
  cfeba8: add    x11, x11, #8                             
  cfebac: ldur   x12, [x11, #-8]                          
  cfebb0: cmp    x12, x1                                  
  cfebb4: b.eq   #0xcfebd8                                
  cfebb8: add    x10, x10, #1                             
  cfebbc: cmp    x10, x9                                  
  cfebc0: add    x11, x11, #0x10                          
  cfebc4: b.lo   #0xcfebac                                
  cfebc8: mov    w2, #1                                   
  cfebcc: mov    x0, x20                                  
  cfebd0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfebd4: b      #0xcfebe8                                
  cfebd8: ldr    w9, [x11]                                
  cfebdc: add    w9, w9, #1                               
  cfebe0: add    x8, x8, w9, uxtw #4                      
  cfebe4: add    x0, x8, #0x128                           
  cfebe8: ldp    x8, x3, [x0]                             
  cfebec: mov    x0, x20                                  
  cfebf0: mov    x1, x21                                  
  cfebf4: mov    x2, x22                                  
  cfebf8: blr    x8                                       
  cfebfc: mov    x0, x19                                  
  cfec00: mov    x1, xzr                                  
  cfec04: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cfec08: mov    x20, x0                                  
  cfec0c: ldr    x0, [x25]                                
  cfec10: add    x1, sp, #0x14                            
  cfec14: str    wzr, [sp, #0x14]                         
  cfec18: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfec1c: adrp   x8, #0x3023000                           
  cfec20: ldr    x8, [x8, #0x1c8]                         ; META strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback_TypeInfo
  cfec24: mov    x21, x0                                  
  cfec28: ldr    x8, [x8]                                 
  cfec2c: mov    x0, x8                                   
  cfec30: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfec34: adrp   x8, #0x3018000                           
  cfec38: ldr    x8, [x8, #0x748]                         ; MMETH Method$LoginMediator.OnCancelQueue()
  cfec3c: mov    x1, x19                                  
  cfec40: mov    x3, xzr                                  
  cfec44: mov    x22, x0                                  
  cfec48: ldr    x2, [x8]                                 
  cfec4c: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  cfec50: cbnz   x20, #0xcfec5c                           
  cfec54: mov    x0, xzr                                  
  cfec58: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfec5c: ldr    x8, [x20]                                
  cfec60: ldr    x1, [x24]                                
  cfec64: ldrh   w9, [x8, #0x11e]                         
  cfec68: cbz    x9, #0xcfec94                            
  cfec6c: ldr    x11, [x8, #0xb0]                         
  cfec70: mov    x10, xzr                                 
  cfec74: add    x11, x11, #8                             
  cfec78: ldur   x12, [x11, #-8]                          
  cfec7c: cmp    x12, x1                                  
  cfec80: b.eq   #0xcfeca4                                
  cfec84: add    x10, x10, #1                             
  cfec88: cmp    x10, x9                                  
  cfec8c: add    x11, x11, #0x10                          
  cfec90: b.lo   #0xcfec78                                
  cfec94: mov    w2, #2                                   
  cfec98: mov    x0, x20                                  
  cfec9c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfeca0: b      #0xcfecb4                                
  cfeca4: ldr    w9, [x11]                                
  cfeca8: add    w9, w9, #2                               
  cfecac: add    x8, x8, w9, uxtw #4                      
  cfecb0: add    x0, x8, #0x128                           
  cfecb4: ldp    x8, x3, [x0]                             
  cfecb8: mov    x0, x20                                  
  cfecbc: mov    x1, x21                                  
  cfecc0: mov    x2, x22                                  
  cfecc4: blr    x8                                       
  cfecc8: mov    x0, x19                                  
  cfeccc: bl     #0xcfe964                                ; LoginMediator$$get_netDispatcher
  cfecd0: adrp   x26, #0x300b000                          
  cfecd4: ldr    x26, [x26, #0x800]                       ; META int_TypeInfo
  cfecd8: mov    x20, x0                                  
  cfecdc: mov    w8, #0x99                                
  cfece0: add    x1, sp, #0x10                            
  cfece4: ldr    x0, [x26]                                
  cfece8: str    w8, [sp, #0x10]                          
  cfecec: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfecf0: ldr    x8, [x23]                                
  cfecf4: mov    x21, x0                                  
  cfecf8: mov    x0, x8                                   
  cfecfc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfed00: adrp   x8, #0x2ffc000                           
  cfed04: ldr    x8, [x8, #0xc38]                         ; MMETH Method$LoginMediator.GetWaitMsg()
  cfed08: mov    x1, x19                                  
  cfed0c: mov    x3, xzr                                  
  cfed10: mov    x22, x0                                  
  cfed14: ldr    x2, [x8]                                 
  cfed18: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfed1c: cbnz   x20, #0xcfed28                           
  cfed20: mov    x0, xzr                                  
  cfed24: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfed28: ldr    x8, [x20]                                
  cfed2c: ldr    x1, [x24]                                
  cfed30: ldrh   w9, [x8, #0x11e]                         
  cfed34: cbz    x9, #0xcfed60                            
  cfed38: ldr    x11, [x8, #0xb0]                         
  cfed3c: mov    x10, xzr                                 
  cfed40: add    x11, x11, #8                             
  cfed44: ldur   x12, [x11, #-8]                          
  cfed48: cmp    x12, x1                                  
  cfed4c: b.eq   #0xcfed70                                
  cfed50: add    x10, x10, #1                             
  cfed54: cmp    x10, x9                                  
  cfed58: add    x11, x11, #0x10                          
  cfed5c: b.lo   #0xcfed44                                
  cfed60: mov    w2, #1                                   
  cfed64: mov    x0, x20                                  
  cfed68: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfed6c: b      #0xcfed80                                
  cfed70: ldr    w9, [x11]                                
  cfed74: add    w9, w9, #1                               
  cfed78: add    x8, x8, w9, uxtw #4                      
  cfed7c: add    x0, x8, #0x128                           
  cfed80: ldp    x8, x3, [x0]                             
  cfed84: mov    x0, x20                                  
  cfed88: mov    x1, x21                                  
  cfed8c: mov    x2, x22                                  
  cfed90: blr    x8                                       
  cfed94: mov    x0, x19                                  
  cfed98: bl     #0xcfe964                                ; LoginMediator$$get_netDispatcher
  cfed9c: mov    x20, x0                                  
  cfeda0: ldr    x0, [x26]                                
  cfeda4: mov    w8, #0x70                                
  cfeda8: add    x1, sp, #0xc                             
  cfedac: str    w8, [sp, #0xc]                           
  cfedb0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfedb4: ldr    x8, [x23]                                
  cfedb8: mov    x21, x0                                  
  cfedbc: mov    x0, x8                                   
  cfedc0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfedc4: adrp   x8, #0x303c000                           
  cfedc8: ldr    x8, [x8, #0x9f0]                         ; MMETH Method$LoginMediator.OnLoginMsg()
  cfedcc: mov    x1, x19                                  
  cfedd0: mov    x3, xzr                                  
  cfedd4: mov    x22, x0                                  
  cfedd8: ldr    x2, [x8]                                 
  cfeddc: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfede0: cbnz   x20, #0xcfedec                           
  cfede4: mov    x0, xzr                                  
  cfede8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfedec: ldr    x8, [x20]                                
  cfedf0: ldr    x1, [x24]                                
  cfedf4: ldrh   w9, [x8, #0x11e]                         
  cfedf8: cbz    x9, #0xcfee24                            
  cfedfc: ldr    x11, [x8, #0xb0]                         
  cfee00: mov    x10, xzr                                 
  cfee04: add    x11, x11, #8                             
  cfee08: ldur   x12, [x11, #-8]                          
  cfee0c: cmp    x12, x1                                  
  cfee10: b.eq   #0xcfee34                                
  cfee14: add    x10, x10, #1                             
  cfee18: cmp    x10, x9                                  
  cfee1c: add    x11, x11, #0x10                          
  cfee20: b.lo   #0xcfee08                                
  cfee24: mov    w2, #1                                   
  cfee28: mov    x0, x20                                  
  cfee2c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfee30: b      #0xcfee44                                
  cfee34: ldr    w9, [x11]                                
  cfee38: add    w9, w9, #1                               
  cfee3c: add    x8, x8, w9, uxtw #4                      
  cfee40: add    x0, x8, #0x128                           
  cfee44: ldp    x8, x3, [x0]                             
  cfee48: mov    x0, x20                                  
  cfee4c: mov    x1, x21                                  
  cfee50: mov    x2, x22                                  
  cfee54: blr    x8                                       
  cfee58: mov    x0, x19                                  
  cfee5c: bl     #0xcfcccc                                ; LoginMediator$$get_view
  cfee60: mov    x20, x0                                  
  cfee64: cbnz   x20, #0xcfee6c                           
  cfee68: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfee6c: mov    x0, x20                                  
  cfee70: mov    x1, xzr                                  
  cfee74: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  cfee78: mov    x20, x0                                  
  cfee7c: ldr    x0, [x25]                                
  cfee80: mov    w8, #0xc                                 
  cfee84: add    x1, sp, #8                               
  cfee88: str    w8, [sp, #8]                             
  cfee8c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfee90: ldr    x8, [x23]                                
  cfee94: mov    x21, x0                                  
  cfee98: mov    x0, x8                                   
  cfee9c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfeea0: adrp   x8, #0x3070000                           
  cfeea4: ldr    x8, [x8, #0x7a0]                         ; MMETH Method$LoginMediator.EnterGame()
  cfeea8: mov    x1, x19                                  
  cfeeac: mov    x3, xzr                                  
  cfeeb0: mov    x22, x0                                  
  cfeeb4: ldr    x2, [x8]                                 
  cfeeb8: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfeebc: cbnz   x20, #0xcfeec8                           
  cfeec0: mov    x0, xzr                                  
  cfeec4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfeec8: ldr    x8, [x20]                                
  cfeecc: ldr    x1, [x24]                                
  cfeed0: ldrh   w9, [x8, #0x11e]                         
  cfeed4: cbz    x9, #0xcfef00                            
  cfeed8: ldr    x11, [x8, #0xb0]                         
  cfeedc: mov    x10, xzr                                 
  cfeee0: add    x11, x11, #8                             
  cfeee4: ldur   x12, [x11, #-8]                          
  cfeee8: cmp    x12, x1                                  
  cfeeec: b.eq   #0xcfef10                                
  cfeef0: add    x10, x10, #1                             
  cfeef4: cmp    x10, x9                                  
  cfeef8: add    x11, x11, #0x10                          
  cfeefc: b.lo   #0xcfeee4                                
  cfef00: mov    w2, #1                                   
  cfef04: mov    x0, x20                                  
  cfef08: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfef0c: b      #0xcfef20                                
  cfef10: ldr    w9, [x11]                                
  cfef14: add    w9, w9, #1                               
  cfef18: add    x8, x8, w9, uxtw #4                      
  cfef1c: add    x0, x8, #0x128                           
  cfef20: ldp    x8, x3, [x0]                             
  cfef24: mov    x0, x20                                  
  cfef28: mov    x1, x21                                  
  cfef2c: mov    x2, x22                                  
  cfef30: blr    x8                                       
  cfef34: mov    x0, x19                                  
  cfef38: bl     #0xcfcccc                                ; LoginMediator$$get_view
  cfef3c: mov    x20, x0                                  
  cfef40: cbnz   x20, #0xcfef48                           
  cfef44: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfef48: mov    x0, x20                                  
  cfef4c: mov    x1, xzr                                  
  cfef50: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  cfef54: adrp   x8, #0x2ff5000                           
  cfef58: ldr    x8, [x8, #0xb08]                         ; META LobbyEvent_TypeInfo
  cfef5c: mov    x20, x0                                  
  cfef60: add    x1, sp, #4                               
  cfef64: ldr    x0, [x8]                                 
  cfef68: mov    w8, #0x67                                
  cfef6c: str    w8, [sp, #4]                             
  cfef70: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfef74: ldr    x8, [x23]                                
  cfef78: mov    x21, x0                                  
  cfef7c: mov    x0, x8                                   
  cfef80: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfef84: adrp   x8, #0x3019000                           
  cfef88: ldr    x8, [x8, #0x740]                         ; MMETH Method$LoginMediator.ServerNotice()
  cfef8c: mov    x1, x19                                  
  cfef90: mov    x3, xzr                                  
  cfef94: mov    x22, x0                                  
  cfef98: ldr    x2, [x8]                                 
  cfef9c: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfefa0: cbnz   x20, #0xcfefac                           
  cfefa4: mov    x0, xzr                                  
  cfefa8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfefac: ldr    x8, [x20]                                
  cfefb0: ldr    x1, [x24]                                
  cfefb4: ldrh   w9, [x8, #0x11e]                         
  cfefb8: cbz    x9, #0xcfefe4                            
  cfefbc: ldr    x11, [x8, #0xb0]                         
  cfefc0: mov    x10, xzr                                 
  cfefc4: add    x11, x11, #8                             
  cfefc8: ldur   x12, [x11, #-8]                          
  cfefcc: cmp    x12, x1                                  
  cfefd0: b.eq   #0xcfeff4                                
  cfefd4: add    x10, x10, #1                             
  cfefd8: cmp    x10, x9                                  
  cfefdc: add    x11, x11, #0x10                          
  cfefe0: b.lo   #0xcfefc8                                
  cfefe4: mov    w2, #1                                   
  cfefe8: mov    x0, x20                                  
  cfefec: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfeff0: b      #0xcff004                                
  cfeff4: ldr    w9, [x11]                                
  cfeff8: add    w9, w9, #1                               
  cfeffc: add    x8, x8, w9, uxtw #4                      
  cff000: add    x0, x8, #0x128                           
  cff004: ldp    x8, x3, [x0]                             
  cff008: mov    x0, x20                                  
  cff00c: mov    x1, x21                                  
  cff010: mov    x2, x22                                  
  cff014: blr    x8                                       
  cff018: adrp   x8, #0x2fda000                           
  cff01c: ldr    x8, [x8, #0x58]                          ; META System.Action<NetErrors>_TypeInfo
  cff020: ldr    x0, [x8]                                 
  cff024: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cff028: adrp   x8, #0x2fd4000                           
  cff02c: adrp   x9, #0x306c000                           
  cff030: ldr    x8, [x8, #0x528]                         ; MMETH Method$LoginMediator.ConnectAPI_onConnect()
  cff034: ldr    x9, [x9, #0x648]                         ; MMETH Method$System.Action<NetErrors>..ctor()
  cff038: mov    x1, x19                                  
  cff03c: mov    x20, x0                                  
  cff040: ldr    x2, [x8]                                 
  cff044: ldr    x3, [x9]                                 
  cff048: bl     #0x1f71b6c                               ; System.Action<NetErrors>$$.ctor
  cff04c: adrp   x23, #0x3077000                          
  cff050: ldr    x23, [x23, #0xb80]                       ; META ConnectAPI_TypeInfo
  cff054: ldr    x0, [x23]                                
  cff058: ldrb   w8, [x0, #0x127]                         
  cff05c: tbz    w8, #1, #0xcff06c                        
  cff060: ldr    w8, [x0, #0xd8]                          
  cff064: cbnz   w8, #0xcff06c                            
  cff068: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  cff06c: mov    x0, x20                                  
  cff070: mov    x1, xzr                                  
  cff074: bl     #0x112238c                               ; ConnectAPI$$add_onConnect
  cff078: mov    x0, x19                                  
  cff07c: bl     #0xcff40c                                ; LoginMediator$$ReadLastServer
  cff080: str    x0, [x19, #0x128]                        
  cff084: mov    x0, x19                                  
  cff088: bl     #0xcfcccc                                ; LoginMediator$$get_view
  cff08c: ldr    x21, [x19, #0x128]                       
  cff090: mov    x20, x0                                  
  cff094: mov    x8, x21                                  
  cff098: cbnz   x21, #0xcff0ac                           
  cff09c: mov    x0, xzr                                  
  cff0a0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff0a4: ldr    x8, [x19, #0x128]                        
  cff0a8: cbz    x8, #0xcff404                            
  cff0ac: ldr    x21, [x21, #0x18]                        
  cff0b0: ldr    w22, [x8, #0x34]                         
  cff0b4: cbnz   x20, #0xcff0c0                           
  cff0b8: mov    x0, xzr                                  
  cff0bc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff0c0: mov    x0, x20                                  
  cff0c4: mov    x1, x21                                  
  cff0c8: mov    w2, w22                                  
  cff0cc: bl     #0xcff560                                ; LoginView$$SetServerBtn
  cff0d0: mov    x0, x19                                  
  cff0d4: bl     #0xcff760                                ; LoginMediator$$Reset
  cff0d8: adrp   x8, #0x2ffe000                           
  cff0dc: ldr    x8, [x8, #0xc20]                         ; META System.Text.StringBuilder_TypeInfo
  cff0e0: ldr    x0, [x8]                                 
  cff0e4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cff0e8: mov    x1, xzr                                  
  cff0ec: mov    x20, x0                                  
  cff0f0: bl     #0x1df2650                               ; System.Text.StringBuilder$$.ctor
  cff0f4: mov    x0, xzr                                  
  cff0f8: bl     #0x1c6092c                               ; UnityEngine.SystemInfo$$get_deviceUniqueIdentifier
  cff0fc: mov    x1, xzr                                  
  cff100: mov    x21, x0                                  
  cff104: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  cff108: adrp   x8, #0x306c000                           
  cff10c: ldr    x8, [x8, #0x368]                         ; STR "null"
  cff110: tst    w0, #1                                   
  cff114: ldr    x8, [x8]                                 
  cff118: csel   x21, x8, x21, ne                         
  cff11c: cbz    x20, #0xcff134                           
  cff120: mov    x0, x20                                  
  cff124: mov    x1, x21                                  
  cff128: mov    x2, xzr                                  
  cff12c: bl     #0x1df0b70                               ; System.Text.StringBuilder$$Append
  cff130: b      #0xcff154                                
  cff134: mov    x0, xzr                                  
  cff138: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff13c: mov    x0, x20                                  
  cff140: mov    x1, x21                                  
  cff144: mov    x2, xzr                                  
  cff148: bl     #0x1df0b70                               ; System.Text.StringBuilder$$Append
  cff14c: mov    x0, xzr                                  
  cff150: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff154: mov    w1, #0x2c                                
  cff158: mov    x0, x20                                  
  cff15c: mov    x2, xzr                                  
  cff160: bl     #0x1df20c4                               ; System.Text.StringBuilder$$Append
  cff164: adrp   x21, #0x302c000                          
  cff168: ldr    x21, [x21, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  cff16c: ldr    x0, [x21]                                
  cff170: ldrb   w8, [x0, #0x127]                         
  cff174: tbz    w8, #1, #0xcff188                        
  cff178: ldr    w8, [x0, #0xd8]                          
  cff17c: cbnz   w8, #0xcff188                            
  cff180: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  cff184: ldr    x0, [x21]                                
  cff188: ldr    x8, [x0, #0xb8]                          
  cff18c: mov    x1, xzr                                  
  cff190: ldr    x21, [x8]                                
  cff194: mov    x0, x21                                  
  cff198: bl     #0x112d374                               ; <PrivateImplementationDetails>$$ComputeStringHash
  cff19c: mov    w8, #0xc2d0                              
  cff1a0: movk   w8, #0x509e, lsl #16                     
  cff1a4: cmp    w0, w8                                   
  cff1a8: b.hi   #0xcff1e8                                
  cff1ac: mov    w8, #0x795d                              
  cff1b0: movk   w8, #0x2a1e, lsl #16                     
  cff1b4: cmp    w0, w8                                   
  cff1b8: b.hi   #0xcff248                                
  cff1bc: mov    w8, #0x6d9d                              
  cff1c0: movk   w8, #0x1643, lsl #16                     
  cff1c4: cmp    w0, w8                                   
  cff1c8: b.eq   #0xcff2b0                                
  cff1cc: mov    w8, #0x795d                              
  cff1d0: movk   w8, #0x2a1e, lsl #16                     
  cff1d4: cmp    w0, w8                                   
  cff1d8: b.ne   #0xcff2f8                                
  cff1dc: adrp   x8, #0x304c000                           
  cff1e0: ldr    x8, [x8, #0x958]                         ; STR "com.prism.eva.twios"
  cff1e4: b      #0xcff2e8                                
  cff1e8: mov    w8, #0xc6f3                              
  cff1ec: movk   w8, #0x641a, lsl #16                     
  cff1f0: cmp    w0, w8                                   
  cff1f4: b.hi   #0xcff274                                
  cff1f8: mov    w8, #0xe19c                              
  cff1fc: movk   w8, #0x535b, lsl #16                     
  cff200: cmp    w0, w8                                   
  cff204: b.eq   #0xcff2e0                                
  cff208: mov    w8, #0xc6f3                              
  cff20c: movk   w8, #0x641a, lsl #16                     
  cff210: cmp    w0, w8                                   
  cff214: b.ne   #0xcff2f8                                
  cff218: adrp   x8, #0x304a000                           
  cff21c: ldr    x8, [x8, #0x2c0]                         ; STR "com.sina.sng.evangelion"
  cff220: mov    x0, x21                                  
  cff224: mov    x2, xzr                                  
  cff228: ldr    x1, [x8]                                 
  cff22c: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff230: tbz    w0, #0, #0xcff2f8                        
  cff234: cbnz   x20, #0xcff240                           
  cff238: mov    x0, xzr                                  
  cff23c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff240: mov    w1, #1                                   
  cff244: b      #0xcff3fc                                
  cff248: mov    w8, #0x365d                              
  cff24c: movk   w8, #0x4fbb, lsl #16                     
  cff250: cmp    w0, w8                                   
  cff254: b.eq   #0xcff370                                
  cff258: mov    w8, #0xc2d0                              
  cff25c: movk   w8, #0x509e, lsl #16                     
  cff260: cmp    w0, w8                                   
  cff264: b.ne   #0xcff2f8                                
  cff268: adrp   x8, #0x2fdc000                           
  cff26c: ldr    x8, [x8, #0xeb0]                         ; STR "com.prism.eva.tw"
  cff270: b      #0xcff2e8                                
  cff274: mov    w8, #0xc785                              
  cff278: movk   w8, #0x9144, lsl #16                     
  cff27c: cmp    w0, w8                                   
  cff280: b.eq   #0xcff3a0                                
  cff284: mov    w8, #0xc3b                               
  cff288: movk   w8, #0x982f, lsl #16                     
  cff28c: cmp    w0, w8                                   
  cff290: b.eq   #0xcff3d0                                
  cff294: mov    w8, #0x8e49                              
  cff298: movk   w8, #0x7c31, lsl #16                     
  cff29c: cmp    w0, w8                                   
  cff2a0: b.ne   #0xcff2f8                                
  cff2a4: adrp   x8, #0x301b000                           
  cff2a8: ldr    x8, [x8, #0x60]                          ; STR "com.prism.eva.krios"
  cff2ac: b      #0xcff2e8                                
  cff2b0: adrp   x8, #0x2fcd000                           
  cff2b4: ldr    x8, [x8, #0x798]                         ; STR "com.wyx.qzgame.evaoverseas"
  cff2b8: mov    x0, x21                                  
  cff2bc: mov    x2, xzr                                  
  cff2c0: ldr    x1, [x8]                                 
  cff2c4: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff2c8: tbz    w0, #0, #0xcff2f8                        
  cff2cc: cbnz   x20, #0xcff2d8                           
  cff2d0: mov    x0, xzr                                  
  cff2d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff2d8: mov    w1, #5                                   
  cff2dc: b      #0xcff3fc                                
  cff2e0: adrp   x8, #0x3028000                           
  cff2e4: ldr    x8, [x8, #0xf0]                          ; STR "com.prism.eva.kr"
  cff2e8: ldr    x1, [x8]                                 
  cff2ec: mov    x0, x21                                  
  cff2f0: mov    x2, xzr                                  
  cff2f4: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff2f8: cbnz   x20, #0xcff304                           
  cff2fc: mov    x0, xzr                                  
  cff300: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff304: mov    x0, x20                                  
  cff308: mov    w1, wzr                                  
  cff30c: mov    x2, xzr                                  
  cff310: bl     #0x1df4648                               ; System.Text.StringBuilder$$Append
  cff314: cbnz   x20, #0xcff320                           
  cff318: mov    x0, xzr                                  
  cff31c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff320: ldr    x8, [x20]                                
  cff324: mov    x0, x20                                  
  cff328: ldp    x9, x1, [x8, #0x158]                     
  cff32c: blr    x9                                       
  cff330: str    x0, [x19, #0x138]                        
  cff334: ldr    x0, [x23]                                
  cff338: ldrb   w8, [x0, #0x127]                         
  cff33c: tbz    w8, #1, #0xcff34c                        
  cff340: ldr    w8, [x0, #0xd8]                          
  cff344: cbnz   w8, #0xcff34c                            
  cff348: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  cff34c: mov    x0, xzr                                  
  cff350: bl     #0x112521c                               ; ConnectAPI$$Disconnect
  cff354: ldp    x29, x30, [sp, #0x60]                    
  cff358: ldp    x20, x19, [sp, #0x50]                    
  cff35c: ldp    x22, x21, [sp, #0x40]                    
  cff360: ldp    x24, x23, [sp, #0x30]                    
  cff364: ldp    x26, x25, [sp, #0x20]                    
  cff368: add    sp, sp, #0x70                            
  cff36c: ret                                             
  cff370: adrp   x8, #0x3018000                           
  cff374: ldr    x8, [x8, #0xa20]                         ; STR "com.sina.sng.evanew"
  cff378: mov    x0, x21                                  
  cff37c: mov    x2, xzr                                  
  cff380: ldr    x1, [x8]                                 
  cff384: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff388: tbz    w0, #0, #0xcff2f8                        
  cff38c: cbnz   x20, #0xcff398                           
  cff390: mov    x0, xzr                                  
  cff394: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff398: mov    w1, #3                                   
  cff39c: b      #0xcff3fc                                
  cff3a0: adrp   x8, #0x3054000                           
  cff3a4: ldr    x8, [x8, #0x8a0]                         ; STR "com.sina.sng.pxzr"
  cff3a8: mov    x0, x21                                  
  cff3ac: mov    x2, xzr                                  
  cff3b0: ldr    x1, [x8]                                 
  cff3b4: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff3b8: tbz    w0, #0, #0xcff2f8                        
  cff3bc: cbnz   x20, #0xcff3c8                           
  cff3c0: mov    x0, xzr                                  
  cff3c4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff3c8: mov    w1, #2                                   
  cff3cc: b      #0xcff3fc                                
  cff3d0: adrp   x8, #0x3051000                           
  cff3d4: ldr    x8, [x8, #0xa00]                         ; STR "com.sina.sng.pxcs"
  cff3d8: mov    x0, x21                                  
  cff3dc: mov    x2, xzr                                  
  cff3e0: ldr    x1, [x8]                                 
  cff3e4: bl     #0x1c6fe98                               ; System.String$$op_Equality
  cff3e8: tbz    w0, #0, #0xcff2f8                        
  cff3ec: cbnz   x20, #0xcff3f8                           
  cff3f0: mov    x0, xzr                                  
  cff3f4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff3f8: mov    w1, #4                                   
  cff3fc: mov    x0, x20                                  
  cff400: b      #0xcff30c                                
  cff404: mov    x0, xzr                                  
  cff408: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c

===== LoginMediator$$OnRemove @ 0xcffb9c (1728 bytes)
  cffb9c: sub    sp, sp, #0x70                            
  cffba0: stp    x26, x25, [sp, #0x20]                    
  cffba4: stp    x24, x23, [sp, #0x30]                    
  cffba8: stp    x22, x21, [sp, #0x40]                    
  cffbac: stp    x20, x19, [sp, #0x50]                    
  cffbb0: stp    x29, x30, [sp, #0x60]                    
  cffbb4: add    x29, sp, #0x60                           
  cffbb8: adrp   x20, #0x31cc000                          
  cffbbc: ldrb   w8, [x20, #0x800]                        
  cffbc0: mov    x19, x0                                  
  cffbc4: tbnz   w8, #0, #0xcffbe0                        
  cffbc8: adrp   x8, #0x2fd0000                           
  cffbcc: ldr    x8, [x8, #0xa48]                         
  cffbd0: ldr    w0, [x8]                                 
  cffbd4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cffbd8: mov    w8, #1                                   
  cffbdc: strb   w8, [x20, #0x800]                        
  cffbe0: adrp   x8, #0x3063000                           
  cffbe4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cffbe8: ldr    x8, [x8]                                 
  cffbec: ldr    x8, [x8, #0xb8]                          
  cffbf0: ldr    x0, [x8, #0x1f8]                         
  cffbf4: cbz    x0, #0xcffc1c                            
  cffbf8: mov    x1, x19                                  
  cffbfc: ldp    x29, x30, [sp, #0x60]                    
  cffc00: ldp    x20, x19, [sp, #0x50]                    
  cffc04: ldp    x22, x21, [sp, #0x40]                    
  cffc08: ldp    x24, x23, [sp, #0x30]                    
  cffc0c: ldp    x26, x25, [sp, #0x20]                    
  cffc10: mov    x2, xzr                                  
  cffc14: add    sp, sp, #0x70                            
  cffc18: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  cffc1c: mov    x0, x19                                  
  cffc20: mov    x1, xzr                                  
  cffc24: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cffc28: adrp   x25, #0x3011000                          
  cffc2c: ldr    x25, [x25, #0x730]                       ; META LoginEvent_TypeInfo
  cffc30: mov    x20, x0                                  
  cffc34: mov    w8, #7                                   
  cffc38: add    x1, sp, #0x1c                            
  cffc3c: ldr    x0, [x25]                                
  cffc40: str    w8, [sp, #0x1c]                          
  cffc44: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cffc48: adrp   x23, #0x302a000                          
  cffc4c: ldr    x23, [x23, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
  cffc50: mov    x21, x0                                  
  cffc54: ldr    x8, [x23]                                
  cffc58: mov    x0, x8                                   
  cffc5c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cffc60: adrp   x8, #0x3033000                           
  cffc64: ldr    x8, [x8, #0x9f0]                         ; MMETH Method$LoginMediator.OnServerListInit()
  cffc68: mov    x1, x19                                  
  cffc6c: mov    x3, xzr                                  
  cffc70: mov    x22, x0                                  
  cffc74: ldr    x2, [x8]                                 
  cffc78: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cffc7c: cbnz   x20, #0xcffc88                           
  cffc80: mov    x0, xzr                                  
  cffc84: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffc88: adrp   x24, #0x3069000                          
  cffc8c: ldr    x8, [x20]                                
  cffc90: ldr    x24, [x24, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  cffc94: ldrh   w9, [x8, #0x11e]                         
  cffc98: ldr    x1, [x24]                                
  cffc9c: cbz    x9, #0xcffcc8                            
  cffca0: ldr    x11, [x8, #0xb0]                         
  cffca4: mov    x10, xzr                                 
  cffca8: add    x11, x11, #8                             
  cffcac: ldur   x12, [x11, #-8]                          
  cffcb0: cmp    x12, x1                                  
  cffcb4: b.eq   #0xcffcd8                                
  cffcb8: add    x10, x10, #1                             
  cffcbc: cmp    x10, x9                                  
  cffcc0: add    x11, x11, #0x10                          
  cffcc4: b.lo   #0xcffcac                                
  cffcc8: mov    w2, #3                                   
  cffccc: mov    x0, x20                                  
  cffcd0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cffcd4: b      #0xcffce8                                
  cffcd8: ldr    w9, [x11]                                
  cffcdc: add    w9, w9, #3                               
  cffce0: add    x8, x8, w9, uxtw #4                      
  cffce4: add    x0, x8, #0x128                           
  cffce8: ldp    x8, x3, [x0]                             
  cffcec: mov    x0, x20                                  
  cffcf0: mov    x1, x21                                  
  cffcf4: mov    x2, x22                                  
  cffcf8: blr    x8                                       
  cffcfc: mov    x0, x19                                  
  cffd00: mov    x1, xzr                                  
  cffd04: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cffd08: mov    x20, x0                                  
  cffd0c: ldr    x0, [x25]                                
  cffd10: mov    w8, #0xb                                 
  cffd14: add    x1, sp, #0x18                            
  cffd18: str    w8, [sp, #0x18]                          
  cffd1c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cffd20: ldr    x8, [x23]                                
  cffd24: mov    x21, x0                                  
  cffd28: mov    x0, x8                                   
  cffd2c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cffd30: adrp   x8, #0x3049000                           
  cffd34: ldr    x8, [x8, #0xc08]                         ; MMETH Method$LoginMediator.OnServerSelected()
  cffd38: mov    x1, x19                                  
  cffd3c: mov    x3, xzr                                  
  cffd40: mov    x22, x0                                  
  cffd44: ldr    x2, [x8]                                 
  cffd48: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cffd4c: cbnz   x20, #0xcffd58                           
  cffd50: mov    x0, xzr                                  
  cffd54: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffd58: ldr    x8, [x20]                                
  cffd5c: ldr    x1, [x24]                                
  cffd60: ldrh   w9, [x8, #0x11e]                         
  cffd64: cbz    x9, #0xcffd90                            
  cffd68: ldr    x11, [x8, #0xb0]                         
  cffd6c: mov    x10, xzr                                 
  cffd70: add    x11, x11, #8                             
  cffd74: ldur   x12, [x11, #-8]                          
  cffd78: cmp    x12, x1                                  
  cffd7c: b.eq   #0xcffda0                                
  cffd80: add    x10, x10, #1                             
  cffd84: cmp    x10, x9                                  
  cffd88: add    x11, x11, #0x10                          
  cffd8c: b.lo   #0xcffd74                                
  cffd90: mov    w2, #3                                   
  cffd94: mov    x0, x20                                  
  cffd98: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cffd9c: b      #0xcffdb0                                
  cffda0: ldr    w9, [x11]                                
  cffda4: add    w9, w9, #3                               
  cffda8: add    x8, x8, w9, uxtw #4                      
  cffdac: add    x0, x8, #0x128                           
  cffdb0: ldp    x8, x3, [x0]                             
  cffdb4: mov    x0, x20                                  
  cffdb8: mov    x1, x21                                  
  cffdbc: mov    x2, x22                                  
  cffdc0: blr    x8                                       
  cffdc4: mov    x0, x19                                  
  cffdc8: mov    x1, xzr                                  
  cffdcc: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  cffdd0: mov    x20, x0                                  
  cffdd4: ldr    x0, [x25]                                
  cffdd8: add    x1, sp, #0x14                            
  cffddc: str    wzr, [sp, #0x14]                         
  cffde0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cffde4: adrp   x8, #0x3023000                           
  cffde8: ldr    x8, [x8, #0x1c8]                         ; META strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback_TypeInfo
  cffdec: mov    x21, x0                                  
  cffdf0: ldr    x8, [x8]                                 
  cffdf4: mov    x0, x8                                   
  cffdf8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cffdfc: adrp   x8, #0x3018000                           
  cffe00: ldr    x8, [x8, #0x748]                         ; MMETH Method$LoginMediator.OnCancelQueue()
  cffe04: mov    x1, x19                                  
  cffe08: mov    x3, xzr                                  
  cffe0c: mov    x22, x0                                  
  cffe10: ldr    x2, [x8]                                 
  cffe14: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  cffe18: cbnz   x20, #0xcffe24                           
  cffe1c: mov    x0, xzr                                  
  cffe20: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffe24: ldr    x8, [x20]                                
  cffe28: ldr    x1, [x24]                                
  cffe2c: ldrh   w9, [x8, #0x11e]                         
  cffe30: cbz    x9, #0xcffe5c                            
  cffe34: ldr    x11, [x8, #0xb0]                         
  cffe38: mov    x10, xzr                                 
  cffe3c: add    x11, x11, #8                             
  cffe40: ldur   x12, [x11, #-8]                          
  cffe44: cmp    x12, x1                                  
  cffe48: b.eq   #0xcffe6c                                
  cffe4c: add    x10, x10, #1                             
  cffe50: cmp    x10, x9                                  
  cffe54: add    x11, x11, #0x10                          
  cffe58: b.lo   #0xcffe40                                
  cffe5c: mov    w2, #4                                   
  cffe60: mov    x0, x20                                  
  cffe64: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cffe68: b      #0xcffe7c                                
  cffe6c: ldr    w9, [x11]                                
  cffe70: add    w9, w9, #4                               
  cffe74: add    x8, x8, w9, uxtw #4                      
  cffe78: add    x0, x8, #0x128                           
  cffe7c: ldp    x8, x3, [x0]                             
  cffe80: mov    x0, x20                                  
  cffe84: mov    x1, x21                                  
  cffe88: mov    x2, x22                                  
  cffe8c: blr    x8                                       
  cffe90: mov    x0, x19                                  
  cffe94: bl     #0xcfe964                                ; LoginMediator$$get_netDispatcher
  cffe98: adrp   x26, #0x300b000                          
  cffe9c: ldr    x26, [x26, #0x800]                       ; META int_TypeInfo
  cffea0: mov    x20, x0                                  
  cffea4: mov    w8, #0x99                                
  cffea8: add    x1, sp, #0x10                            
  cffeac: ldr    x0, [x26]                                
  cffeb0: str    w8, [sp, #0x10]                          
  cffeb4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cffeb8: ldr    x8, [x23]                                
  cffebc: mov    x21, x0                                  
  cffec0: mov    x0, x8                                   
  cffec4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cffec8: adrp   x8, #0x2ffc000                           
  cffecc: ldr    x8, [x8, #0xc38]                         ; MMETH Method$LoginMediator.GetWaitMsg()
  cffed0: mov    x1, x19                                  
  cffed4: mov    x3, xzr                                  
  cffed8: mov    x22, x0                                  
  cffedc: ldr    x2, [x8]                                 
  cffee0: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cffee4: cbnz   x20, #0xcffef0                           
  cffee8: mov    x0, xzr                                  
  cffeec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffef0: ldr    x8, [x20]                                
  cffef4: ldr    x1, [x24]                                
  cffef8: ldrh   w9, [x8, #0x11e]                         
  cffefc: cbz    x9, #0xcfff28                            
  cfff00: ldr    x11, [x8, #0xb0]                         
  cfff04: mov    x10, xzr                                 
  cfff08: add    x11, x11, #8                             
  cfff0c: ldur   x12, [x11, #-8]                          
  cfff10: cmp    x12, x1                                  
  cfff14: b.eq   #0xcfff38                                
  cfff18: add    x10, x10, #1                             
  cfff1c: cmp    x10, x9                                  
  cfff20: add    x11, x11, #0x10                          
  cfff24: b.lo   #0xcfff0c                                
  cfff28: mov    w2, #3                                   
  cfff2c: mov    x0, x20                                  
  cfff30: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cfff34: b      #0xcfff48                                
  cfff38: ldr    w9, [x11]                                
  cfff3c: add    w9, w9, #3                               
  cfff40: add    x8, x8, w9, uxtw #4                      
  cfff44: add    x0, x8, #0x128                           
  cfff48: ldp    x8, x3, [x0]                             
  cfff4c: mov    x0, x20                                  
  cfff50: mov    x1, x21                                  
  cfff54: mov    x2, x22                                  
  cfff58: blr    x8                                       
  cfff5c: mov    x0, x19                                  
  cfff60: bl     #0xcfe964                                ; LoginMediator$$get_netDispatcher
  cfff64: mov    x20, x0                                  
  cfff68: ldr    x0, [x26]                                
  cfff6c: mov    w8, #0x70                                
  cfff70: add    x1, sp, #0xc                             
  cfff74: str    w8, [sp, #0xc]                           
  cfff78: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  cfff7c: ldr    x8, [x23]                                
  cfff80: mov    x21, x0                                  
  cfff84: mov    x0, x8                                   
  cfff88: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cfff8c: adrp   x8, #0x303c000                           
  cfff90: ldr    x8, [x8, #0x9f0]                         ; MMETH Method$LoginMediator.OnLoginMsg()
  cfff94: mov    x1, x19                                  
  cfff98: mov    x3, xzr                                  
  cfff9c: mov    x22, x0                                  
  cfffa0: ldr    x2, [x8]                                 
  cfffa4: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  cfffa8: cbnz   x20, #0xcfffb4                           
  cfffac: mov    x0, xzr                                  
  cfffb0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cfffb4: ldr    x8, [x20]                                
  cfffb8: ldr    x1, [x24]                                
  cfffbc: ldrh   w9, [x8, #0x11e]                         
  cfffc0: cbz    x9, #0xcfffec                            
  cfffc4: ldr    x11, [x8, #0xb0]                         
  cfffc8: mov    x10, xzr                                 
  cfffcc: add    x11, x11, #8                             
  cfffd0: ldur   x12, [x11, #-8]                          
  cfffd4: cmp    x12, x1                                  
  cfffd8: b.eq   #0xcffffc                                
  cfffdc: add    x10, x10, #1                             
  cfffe0: cmp    x10, x9                                  
  cfffe4: add    x11, x11, #0x10                          
  cfffe8: b.lo   #0xcfffd0                                
  cfffec: mov    w2, #3                                   
  cffff0: mov    x0, x20                                  
  cffff4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  cffff8: b      #0xd0000c                                
  cffffc: ldr    w9, [x11]                                
  d00000: add    w9, w9, #3                               
  d00004: add    x8, x8, w9, uxtw #4                      
  d00008: add    x0, x8, #0x128                           
  d0000c: ldp    x8, x3, [x0]                             
  d00010: mov    x0, x20                                  
  d00014: mov    x1, x21                                  
  d00018: mov    x2, x22                                  
  d0001c: blr    x8                                       
  d00020: mov    x0, x19                                  
  d00024: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d00028: mov    x20, x0                                  
  d0002c: cbnz   x20, #0xd00034                           
  d00030: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00034: mov    x0, x20                                  
  d00038: mov    x1, xzr                                  
  d0003c: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  d00040: mov    x20, x0                                  
  d00044: ldr    x0, [x25]                                
  d00048: mov    w8, #0xc                                 
  d0004c: add    x1, sp, #8                               
  d00050: str    w8, [sp, #8]                             
  d00054: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  d00058: ldr    x8, [x23]                                
  d0005c: mov    x21, x0                                  
  d00060: mov    x0, x8                                   
  d00064: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d00068: adrp   x8, #0x3070000                           
  d0006c: ldr    x8, [x8, #0x7a0]                         ; MMETH Method$LoginMediator.EnterGame()
  d00070: mov    x1, x19                                  
  d00074: mov    x3, xzr                                  
  d00078: mov    x22, x0                                  
  d0007c: ldr    x2, [x8]                                 
  d00080: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  d00084: cbnz   x20, #0xd00090                           
  d00088: mov    x0, xzr                                  
  d0008c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00090: ldr    x8, [x20]                                
  d00094: ldr    x1, [x24]                                
  d00098: ldrh   w9, [x8, #0x11e]                         
  d0009c: cbz    x9, #0xd000c8                            
  d000a0: ldr    x11, [x8, #0xb0]                         
  d000a4: mov    x10, xzr                                 
  d000a8: add    x11, x11, #8                             
  d000ac: ldur   x12, [x11, #-8]                          
  d000b0: cmp    x12, x1                                  
  d000b4: b.eq   #0xd000d8                                
  d000b8: add    x10, x10, #1                             
  d000bc: cmp    x10, x9                                  
  d000c0: add    x11, x11, #0x10                          
  d000c4: b.lo   #0xd000ac                                
  d000c8: mov    w2, #3                                   
  d000cc: mov    x0, x20                                  
  d000d0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d000d4: b      #0xd000e8                                
  d000d8: ldr    w9, [x11]                                
  d000dc: add    w9, w9, #3                               
  d000e0: add    x8, x8, w9, uxtw #4                      
  d000e4: add    x0, x8, #0x128                           
  d000e8: ldp    x8, x3, [x0]                             
  d000ec: mov    x0, x20                                  
  d000f0: mov    x1, x21                                  
  d000f4: mov    x2, x22                                  
  d000f8: blr    x8                                       
  d000fc: mov    x0, x19                                  
  d00100: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d00104: mov    x20, x0                                  
  d00108: cbnz   x20, #0xd00110                           
  d0010c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00110: mov    x0, x20                                  
  d00114: mov    x1, xzr                                  
  d00118: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  d0011c: adrp   x8, #0x2ff5000                           
  d00120: ldr    x8, [x8, #0xb08]                         ; META LobbyEvent_TypeInfo
  d00124: mov    x20, x0                                  
  d00128: add    x1, sp, #4                               
  d0012c: ldr    x0, [x8]                                 
  d00130: mov    w8, #0x67                                
  d00134: str    w8, [sp, #4]                             
  d00138: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  d0013c: ldr    x8, [x23]                                
  d00140: mov    x21, x0                                  
  d00144: mov    x0, x8                                   
  d00148: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d0014c: adrp   x8, #0x3019000                           
  d00150: ldr    x8, [x8, #0x740]                         ; MMETH Method$LoginMediator.ServerNotice()
  d00154: mov    x1, x19                                  
  d00158: mov    x3, xzr                                  
  d0015c: mov    x22, x0                                  
  d00160: ldr    x2, [x8]                                 
  d00164: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  d00168: cbnz   x20, #0xd00174                           
  d0016c: mov    x0, xzr                                  
  d00170: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00174: ldr    x8, [x20]                                
  d00178: ldr    x1, [x24]                                
  d0017c: ldrh   w9, [x8, #0x11e]                         
  d00180: cbz    x9, #0xd001ac                            
  d00184: ldr    x11, [x8, #0xb0]                         
  d00188: mov    x10, xzr                                 
  d0018c: add    x11, x11, #8                             
  d00190: ldur   x12, [x11, #-8]                          
  d00194: cmp    x12, x1                                  
  d00198: b.eq   #0xd001bc                                
  d0019c: add    x10, x10, #1                             
  d001a0: cmp    x10, x9                                  
  d001a4: add    x11, x11, #0x10                          
  d001a8: b.lo   #0xd00190                                
  d001ac: mov    w2, #3                                   
  d001b0: mov    x0, x20                                  
  d001b4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d001b8: b      #0xd001cc                                
  d001bc: ldr    w9, [x11]                                
  d001c0: add    w9, w9, #3                               
  d001c4: add    x8, x8, w9, uxtw #4                      
  d001c8: add    x0, x8, #0x128                           
  d001cc: ldp    x8, x3, [x0]                             
  d001d0: mov    x0, x20                                  
  d001d4: mov    x1, x21                                  
  d001d8: mov    x2, x22                                  
  d001dc: blr    x8                                       
  d001e0: adrp   x8, #0x2fda000                           
  d001e4: ldr    x8, [x8, #0x58]                          ; META System.Action<NetErrors>_TypeInfo
  d001e8: ldr    x0, [x8]                                 
  d001ec: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d001f0: adrp   x8, #0x2fd4000                           
  d001f4: adrp   x9, #0x306c000                           
  d001f8: ldr    x8, [x8, #0x528]                         ; MMETH Method$LoginMediator.ConnectAPI_onConnect()
  d001fc: ldr    x9, [x9, #0x648]                         ; MMETH Method$System.Action<NetErrors>..ctor()
  d00200: mov    x1, x19                                  
  d00204: mov    x20, x0                                  
  d00208: ldr    x2, [x8]                                 
  d0020c: ldr    x3, [x9]                                 
  d00210: bl     #0x1f71b6c                               ; System.Action<NetErrors>$$.ctor
  d00214: adrp   x8, #0x3077000                           
  d00218: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  d0021c: ldr    x0, [x8]                                 
  d00220: ldrb   w8, [x0, #0x127]                         
  d00224: tbz    w8, #1, #0xd00234                        
  d00228: ldr    w8, [x0, #0xd8]                          
  d0022c: cbnz   w8, #0xd00234                            
  d00230: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d00234: mov    x0, x20                                  
  d00238: mov    x1, xzr                                  
  d0023c: bl     #0x1122500                               ; ConnectAPI$$remove_onConnect
  d00240: ldp    x29, x30, [sp, #0x60]                    
  d00244: ldp    x20, x19, [sp, #0x50]                    
  d00248: ldp    x22, x21, [sp, #0x40]                    
  d0024c: ldp    x24, x23, [sp, #0x30]                    
  d00250: ldp    x26, x25, [sp, #0x20]                    
  d00254: add    sp, sp, #0x70                            
  d00258: ret                                             

===== LoginMediator$$OnServerListInit @ 0xd005d0 (992 bytes)
  d005d0: str    x27, [sp, #-0x60]!                       
  d005d4: stp    x26, x25, [sp, #0x10]                    
  d005d8: stp    x24, x23, [sp, #0x20]                    
  d005dc: stp    x22, x21, [sp, #0x30]                    
  d005e0: stp    x20, x19, [sp, #0x40]                    
  d005e4: stp    x29, x30, [sp, #0x50]                    
  d005e8: add    x29, sp, #0x50                           
  d005ec: adrp   x21, #0x31cc000                          
  d005f0: ldrb   w8, [x21, #0x803]                        
  d005f4: mov    x20, x1                                  
  d005f8: mov    x19, x0                                  
  d005fc: tbnz   w8, #0, #0xd00618                        
  d00600: adrp   x8, #0x301b000                           
  d00604: ldr    x8, [x8, #0x5d0]                         
  d00608: ldr    w0, [x8]                                 
  d0060c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d00610: mov    w8, #1                                   
  d00614: strb   w8, [x21, #0x803]                        
  d00618: adrp   x8, #0x3063000                           
  d0061c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d00620: ldr    x8, [x8]                                 
  d00624: ldr    x8, [x8, #0xb8]                          
  d00628: ldr    x0, [x8, #0x210]                         
  d0062c: cbz    x0, #0xd00658                            
  d00630: mov    x1, x19                                  
  d00634: mov    x2, x20                                  
  d00638: ldp    x29, x30, [sp, #0x50]                    
  d0063c: ldp    x20, x19, [sp, #0x40]                    
  d00640: ldp    x22, x21, [sp, #0x30]                    
  d00644: ldp    x24, x23, [sp, #0x20]                    
  d00648: ldp    x26, x25, [sp, #0x10]                    
  d0064c: mov    x3, xzr                                  
  d00650: ldr    x27, [sp], #0x60                         
  d00654: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d00658: cbnz   x20, #0xd00664                           
  d0065c: mov    x0, xzr                                  
  d00660: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00664: adrp   x10, #0x2ff0000                          
  d00668: ldr    x8, [x20]                                
  d0066c: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d00670: ldrh   w9, [x8, #0x11e]                         
  d00674: ldr    x1, [x10]                                
  d00678: cbz    x9, #0xd006a4                            
  d0067c: ldr    x11, [x8, #0xb0]                         
  d00680: mov    x10, xzr                                 
  d00684: add    x11, x11, #8                             
  d00688: ldur   x12, [x11, #-8]                          
  d0068c: cmp    x12, x1                                  
  d00690: b.eq   #0xd006b4                                
  d00694: add    x10, x10, #1                             
  d00698: cmp    x10, x9                                  
  d0069c: add    x11, x11, #0x10                          
  d006a0: b.lo   #0xd00688                                
  d006a4: mov    w2, #4                                   
  d006a8: mov    x0, x20                                  
  d006ac: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d006b0: b      #0xd006c4                                
  d006b4: ldr    w9, [x11]                                
  d006b8: add    w9, w9, #4                               
  d006bc: add    x8, x8, w9, uxtw #4                      
  d006c0: add    x0, x8, #0x128                           
  d006c4: ldp    x8, x1, [x0]                             
  d006c8: mov    x0, x20                                  
  d006cc: blr    x8                                       
  d006d0: mov    x20, x0                                  
  d006d4: cbz    x20, #0xd0070c                           
  d006d8: adrp   x8, #0x2fd5000                           
  d006dc: ldr    x8, [x8, #0x760]                         ; META System.Collections.Generic.List<ServerInfo>_TypeInfo
  d006e0: ldr    x9, [x20]                                
  d006e4: ldr    x8, [x8]                                 
  d006e8: ldrb   w11, [x9, #0x120]                        
  d006ec: ldrb   w10, [x8, #0x120]                        
  d006f0: cmp    w11, w10                                 
  d006f4: b.lo   #0xd0070c                                
  d006f8: ldr    x9, [x9, #0xc8]                          
  d006fc: add    x9, x9, x10, lsl #3                      
  d00700: ldur   x9, [x9, #-8]                            
  d00704: cmp    x9, x8                                   
  d00708: b.eq   #0xd00728                                
  d0070c: ldp    x29, x30, [sp, #0x50]                    
  d00710: ldp    x20, x19, [sp, #0x40]                    
  d00714: ldp    x22, x21, [sp, #0x30]                    
  d00718: ldp    x24, x23, [sp, #0x20]                    
  d0071c: ldp    x26, x25, [sp, #0x10]                    
  d00720: ldr    x27, [sp], #0x60                         
  d00724: ret                                             
  d00728: adrp   x25, #0x303f000                          
  d0072c: ldr    x25, [x25, #0x680]                       ; MMETH Method$System.Collections.Generic.List<ServerInfo>.get_Count()
  d00730: mov    x0, x20                                  
  d00734: ldr    x1, [x25]                                
  d00738: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  d0073c: cmp    w0, #1                                   
  d00740: b.lt   #0xd0087c                                
  d00744: adrp   x26, #0x3045000                          
  d00748: ldr    x26, [x26, #0x238]                       ; MMETH Method$System.Collections.Generic.List<ServerInfo>.get_Item()
  d0074c: mov    x22, xzr                                 
  d00750: mov    w21, wzr                                 
  d00754: add    x24, x19, #0x128                         
  d00758: ldr    x23, [x24]                               
  d0075c: cbnz   x23, #0xd00768                           
  d00760: mov    x0, xzr                                  
  d00764: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00768: ldr    x2, [x26]                                
  d0076c: ldr    w27, [x23, #0x10]                        
  d00770: mov    x0, x20                                  
  d00774: mov    w1, w21                                  
  d00778: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d0077c: mov    x23, x0                                  
  d00780: cbnz   x23, #0xd00788                           
  d00784: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00788: ldr    x2, [x26]                                
  d0078c: ldr    w23, [x23, #0x10]                        
  d00790: mov    x0, x20                                  
  d00794: mov    w1, w21                                  
  d00798: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d0079c: cmp    w27, w23                                 
  d007a0: mov    x23, x0                                  
  d007a4: b.eq   #0xd008c0                                
  d007a8: cbnz   x23, #0xd007b4                           
  d007ac: mov    x0, xzr                                  
  d007b0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d007b4: ldr    w8, [x23, #0x34]                         
  d007b8: cbz    w8, #0xd00834                            
  d007bc: ldr    x2, [x26]                                
  d007c0: mov    x0, x20                                  
  d007c4: mov    w1, w21                                  
  d007c8: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d007cc: mov    x23, x0                                  
  d007d0: cbnz   x23, #0xd007d8                           
  d007d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d007d8: ldr    w8, [x23, #0x34]                         
  d007dc: cmp    w8, #5                                   
  d007e0: b.eq   #0xd00834                                
  d007e4: ldr    x2, [x26]                                
  d007e8: mov    x0, x20                                  
  d007ec: mov    w1, w21                                  
  d007f0: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d007f4: mov    x23, x0                                  
  d007f8: cbnz   x23, #0xd00800                           
  d007fc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00800: ldr    w8, [x23, #0x34]                         
  d00804: cmp    w8, #6                                   
  d00808: b.eq   #0xd00834                                
  d0080c: ldr    x2, [x26]                                
  d00810: mov    x0, x20                                  
  d00814: mov    w1, w21                                  
  d00818: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d0081c: mov    x23, x0                                  
  d00820: cbnz   x23, #0xd00828                           
  d00824: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00828: ldr    w8, [x23, #0x34]                         
  d0082c: cmp    w8, #7                                   
  d00830: b.ne   #0xd00848                                
  d00834: ldr    x2, [x26]                                
  d00838: mov    x0, x20                                  
  d0083c: mov    w1, w21                                  
  d00840: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d00844: mov    x22, x0                                  
  d00848: ldr    x1, [x25]                                
  d0084c: mov    x0, x20                                  
  d00850: add    w21, w21, #1                             
  d00854: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  d00858: cmp    w21, w0                                  
  d0085c: b.lt   #0xd00758                                
  d00860: cbz    x22, #0xd0087c                           
  d00864: mov    x0, x19                                  
  d00868: add    x24, x19, #0x128                         
  d0086c: str    x22, [x19, #0x128]                       
  d00870: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d00874: mov    x19, x0                                  
  d00878: b      #0xd008fc                                
  d0087c: ldr    x1, [x25]                                
  d00880: mov    x0, x20                                  
  d00884: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  d00888: cmp    w0, #1                                   
  d0088c: b.lt   #0xd008d4                                
  d00890: ldr    x1, [x25]                                
  d00894: mov    x0, x20                                  
  d00898: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  d0089c: adrp   x8, #0x3045000                           
  d008a0: ldr    x8, [x8, #0x238]                         ; MMETH Method$System.Collections.Generic.List<ServerInfo>.get_Item()
  d008a4: sub    w1, w0, #1                               
  d008a8: mov    x0, x20                                  
  d008ac: ldr    x2, [x8]                                 
  d008b0: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  d008b4: mov    x20, x0                                  
  d008b8: cbnz   x19, #0xd008e4                           
  d008bc: b      #0xd008dc                                
  d008c0: mov    x0, x19                                  
  d008c4: str    x23, [x19, #0x128]                       
  d008c8: bl     #0xd009b0                                ; LoginMediator$$SaveLoginServer
  d008cc: ldr    x20, [x19, #0x128]                       
  d008d0: b      #0xd008ec                                
  d008d4: mov    x20, xzr                                 
  d008d8: cbnz   x19, #0xd008e4                           
  d008dc: mov    x0, xzr                                  
  d008e0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d008e4: add    x24, x19, #0x128                         
  d008e8: str    x20, [x19, #0x128]                       
  d008ec: mov    x0, x19                                  
  d008f0: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d008f4: mov    x19, x0                                  
  d008f8: cbz    x20, #0xd0093c                           
  d008fc: ldr    x20, [x24]                               
  d00900: mov    x8, x20                                  
  d00904: cbnz   x20, #0xd00918                           
  d00908: mov    x0, xzr                                  
  d0090c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00910: ldr    x8, [x24]                                
  d00914: cbz    x8, #0xd009a8                            
  d00918: ldr    x20, [x20, #0x18]                        
  d0091c: ldr    w21, [x8, #0x34]                         
  d00920: cbnz   x19, #0xd0092c                           
  d00924: mov    x0, xzr                                  
  d00928: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0092c: mov    x0, x19                                  
  d00930: mov    x1, x20                                  
  d00934: mov    w2, w21                                  
  d00938: b      #0xd0098c                                
  d0093c: adrp   x8, #0x303e000                           
  d00940: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  d00944: ldr    x0, [x8]                                 
  d00948: ldrb   w8, [x0, #0x127]                         
  d0094c: tbz    w8, #1, #0xd0095c                        
  d00950: ldr    w8, [x0, #0xd8]                          
  d00954: cbnz   w8, #0xd0095c                            
  d00958: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d0095c: adrp   x8, #0x3065000                           
  d00960: ldr    x8, [x8, #0x2a0]                         ; STR "GLOBAL_LOGIN_NOTSERVERLIST"
  d00964: mov    x1, xzr                                  
  d00968: ldr    x0, [x8]                                 
  d0096c: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  d00970: mov    x20, x0                                  
  d00974: cbnz   x19, #0xd00980                           
  d00978: mov    x0, xzr                                  
  d0097c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00980: mov    w2, #3                                   
  d00984: mov    x0, x19                                  
  d00988: mov    x1, x20                                  
  d0098c: ldp    x29, x30, [sp, #0x50]                    
  d00990: ldp    x20, x19, [sp, #0x40]                    
  d00994: ldp    x22, x21, [sp, #0x30]                    
  d00998: ldp    x24, x23, [sp, #0x20]                    
  d0099c: ldp    x26, x25, [sp, #0x10]                    
  d009a0: ldr    x27, [sp], #0x60                         
  d009a4: b      #0xcff560                                ; LoginView$$SetServerBtn
  d009a8: mov    x0, xzr                                  
  d009ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c

===== LoginMediator$$OnServerSelected @ 0xd00ae0 (452 bytes)
  d00ae0: stp    x22, x21, [sp, #-0x30]!                  
  d00ae4: stp    x20, x19, [sp, #0x10]                    
  d00ae8: stp    x29, x30, [sp, #0x20]                    
  d00aec: add    x29, sp, #0x20                           
  d00af0: adrp   x21, #0x31cc000                          
  d00af4: ldrb   w8, [x21, #0x804]                        
  d00af8: mov    x20, x1                                  
  d00afc: mov    x19, x0                                  
  d00b00: tbnz   w8, #0, #0xd00b1c                        
  d00b04: adrp   x8, #0x300d000                           
  d00b08: ldr    x8, [x8, #0xb8]                          
  d00b0c: ldr    w0, [x8]                                 
  d00b10: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d00b14: mov    w8, #1                                   
  d00b18: strb   w8, [x21, #0x804]                        
  d00b1c: adrp   x8, #0x3063000                           
  d00b20: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d00b24: ldr    x8, [x8]                                 
  d00b28: ldr    x8, [x8, #0xb8]                          
  d00b2c: ldr    x0, [x8, #0x218]                         
  d00b30: cbz    x0, #0xd00b50                            
  d00b34: mov    x1, x19                                  
  d00b38: mov    x2, x20                                  
  d00b3c: ldp    x29, x30, [sp, #0x20]                    
  d00b40: ldp    x20, x19, [sp, #0x10]                    
  d00b44: mov    x3, xzr                                  
  d00b48: ldp    x22, x21, [sp], #0x30                    
  d00b4c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d00b50: cbnz   x20, #0xd00b5c                           
  d00b54: mov    x0, xzr                                  
  d00b58: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00b5c: adrp   x10, #0x2ff0000                          
  d00b60: ldr    x8, [x20]                                
  d00b64: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d00b68: ldrh   w9, [x8, #0x11e]                         
  d00b6c: ldr    x1, [x10]                                
  d00b70: cbz    x9, #0xd00b9c                            
  d00b74: ldr    x11, [x8, #0xb0]                         
  d00b78: mov    x10, xzr                                 
  d00b7c: add    x11, x11, #8                             
  d00b80: ldur   x12, [x11, #-8]                          
  d00b84: cmp    x12, x1                                  
  d00b88: b.eq   #0xd00bac                                
  d00b8c: add    x10, x10, #1                             
  d00b90: cmp    x10, x9                                  
  d00b94: add    x11, x11, #0x10                          
  d00b98: b.lo   #0xd00b80                                
  d00b9c: mov    w2, #4                                   
  d00ba0: mov    x0, x20                                  
  d00ba4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d00ba8: b      #0xd00bbc                                
  d00bac: ldr    w9, [x11]                                
  d00bb0: add    w9, w9, #4                               
  d00bb4: add    x8, x8, w9, uxtw #4                      
  d00bb8: add    x0, x8, #0x128                           
  d00bbc: ldp    x8, x1, [x0]                             
  d00bc0: mov    x0, x20                                  
  d00bc4: blr    x8                                       
  d00bc8: cbz    x0, #0xd00c00                            
  d00bcc: adrp   x8, #0x2fdc000                           
  d00bd0: ldr    x8, [x8, #0x710]                         ; META ServerInfo_TypeInfo
  d00bd4: ldr    x9, [x0]                                 
  d00bd8: ldr    x8, [x8]                                 
  d00bdc: ldrb   w11, [x9, #0x120]                        
  d00be0: ldrb   w10, [x8, #0x120]                        
  d00be4: cmp    w11, w10                                 
  d00be8: b.lo   #0xd00c00                                
  d00bec: ldr    x9, [x9, #0xc8]                          
  d00bf0: add    x9, x9, x10, lsl #3                      
  d00bf4: ldur   x9, [x9, #-8]                            
  d00bf8: cmp    x9, x8                                   
  d00bfc: b.eq   #0xd00c14                                
  d00c00: str    xzr, [x19, #0x128]                       
  d00c04: ldp    x29, x30, [sp, #0x20]                    
  d00c08: ldp    x20, x19, [sp, #0x10]                    
  d00c0c: ldp    x22, x21, [sp], #0x30                    
  d00c10: ret                                             
  d00c14: str    x0, [x19, #0x128]                        
  d00c18: mov    x0, x19                                  
  d00c1c: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d00c20: ldr    x21, [x19, #0x128]                       
  d00c24: mov    x20, x0                                  
  d00c28: mov    x8, x21                                  
  d00c2c: cbnz   x21, #0xd00c40                           
  d00c30: mov    x0, xzr                                  
  d00c34: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00c38: ldr    x8, [x19, #0x128]                        
  d00c3c: cbz    x8, #0xd00c9c                            
  d00c40: ldr    x21, [x21, #0x18]                        
  d00c44: ldr    w22, [x8, #0x34]                         
  d00c48: cbnz   x20, #0xd00c54                           
  d00c4c: mov    x0, xzr                                  
  d00c50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00c54: mov    x0, x20                                  
  d00c58: mov    x1, x21                                  
  d00c5c: mov    w2, w22                                  
  d00c60: bl     #0xcff560                                ; LoginView$$SetServerBtn
  d00c64: mov    x0, x19                                  
  d00c68: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d00c6c: mov    x19, x0                                  
  d00c70: cbnz   x19, #0xd00c78                           
  d00c74: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00c78: ldr    x8, [x19]                                
  d00c7c: mov    x0, x19                                  
  d00c80: ldp    x29, x30, [sp, #0x20]                    
  d00c84: ldp    x20, x19, [sp, #0x10]                    
  d00c88: ldr    x3, [x8, #0x268]                         
  d00c8c: ldr    x2, [x8, #0x270]                         
  d00c90: mov    x1, xzr                                  
  d00c94: ldp    x22, x21, [sp], #0x30                    
  d00c98: br     x3                                       
  d00c9c: mov    x0, xzr                                  
  d00ca0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c

===== LoginMediator$$ReadLastServer @ 0xcff40c (340 bytes)
  cff40c: stp    x20, x19, [sp, #-0x20]!                  
  cff410: stp    x29, x30, [sp, #0x10]                    
  cff414: add    x29, sp, #0x10                           
  cff418: adrp   x20, #0x31cc000                          
  cff41c: ldrb   w8, [x20, #0x806]                        
  cff420: mov    x19, x0                                  
  cff424: tbnz   w8, #0, #0xcff440                        
  cff428: adrp   x8, #0x3066000                           
  cff42c: ldr    x8, [x8, #0x750]                         
  cff430: ldr    w0, [x8]                                 
  cff434: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cff438: mov    w8, #1                                   
  cff43c: strb   w8, [x20, #0x806]                        
  cff440: adrp   x8, #0x3063000                           
  cff444: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cff448: ldr    x8, [x8]                                 
  cff44c: ldr    x8, [x8, #0xb8]                          
  cff450: ldr    x0, [x8, #0x228]                         
  cff454: cbz    x0, #0xcff46c                            
  cff458: ldp    x29, x30, [sp, #0x10]                    
  cff45c: mov    x1, x19                                  
  cff460: mov    x2, xzr                                  
  cff464: ldp    x20, x19, [sp], #0x20                    
  cff468: b      #0xca3f8c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp85
  cff46c: adrp   x8, #0x2fdc000                           
  cff470: ldr    x8, [x8, #0x710]                         ; META ServerInfo_TypeInfo
  cff474: ldr    x0, [x8]                                 
  cff478: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  cff47c: mov    x1, xzr                                  
  cff480: mov    x19, x0                                  
  cff484: bl     #0xf21304                                ; ServerInfo$$.ctor
  cff488: adrp   x8, #0x3077000                           
  cff48c: ldr    x8, [x8, #0x518]                         ; STR "ServerID"
  cff490: mov    x1, xzr                                  
  cff494: ldr    x0, [x8]                                 
  cff498: bl     #0x1be6f08                               ; UnityEngine.PlayerPrefs$$GetInt
  cff49c: mov    w20, w0                                  
  cff4a0: cbnz   x19, #0xcff4ac                           
  cff4a4: mov    x0, xzr                                  
  cff4a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff4ac: str    w20, [x19, #0x10]                        
  cff4b0: adrp   x8, #0x3033000                           
  cff4b4: ldr    x8, [x8, #0xa90]                         ; STR "ServerName"
  cff4b8: mov    x1, xzr                                  
  cff4bc: ldr    x0, [x8]                                 
  cff4c0: bl     #0x1be7138                               ; UnityEngine.PlayerPrefs$$GetString
  cff4c4: mov    x20, x0                                  
  cff4c8: cbnz   x19, #0xcff4d4                           
  cff4cc: mov    x0, xzr                                  
  cff4d0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff4d4: str    x20, [x19, #0x18]                        
  cff4d8: adrp   x8, #0x300a000                           
  cff4dc: ldr    x8, [x8, #0x778]                         ; STR "ServerStage"
  cff4e0: mov    x1, xzr                                  
  cff4e4: ldr    x0, [x8]                                 
  cff4e8: bl     #0x1be6f08                               ; UnityEngine.PlayerPrefs$$GetInt
  cff4ec: mov    w20, w0                                  
  cff4f0: cbnz   x19, #0xcff4fc                           
  cff4f4: mov    x0, xzr                                  
  cff4f8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff4fc: str    w20, [x19, #0x34]                        
  cff500: adrp   x8, #0x3017000                           
  cff504: ldr    x8, [x8, #0xcc0]                         ; STR "ServerIP"
  cff508: mov    x1, xzr                                  
  cff50c: ldr    x0, [x8]                                 
  cff510: bl     #0x1be7138                               ; UnityEngine.PlayerPrefs$$GetString
  cff514: mov    x20, x0                                  
  cff518: cbnz   x19, #0xcff524                           
  cff51c: mov    x0, xzr                                  
  cff520: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff524: str    x20, [x19, #0x28]                        
  cff528: adrp   x8, #0x3002000                           
  cff52c: ldr    x8, [x8, #0x198]                         ; STR "ServerPort"
  cff530: mov    x1, xzr                                  
  cff534: ldr    x0, [x8]                                 
  cff538: bl     #0x1be6f08                               ; UnityEngine.PlayerPrefs$$GetInt
  cff53c: mov    w20, w0                                  
  cff540: cbnz   x19, #0xcff54c                           
  cff544: mov    x0, xzr                                  
  cff548: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff54c: str    w20, [x19, #0x30]                        
  cff550: ldp    x29, x30, [sp, #0x10]                    
  cff554: mov    x0, x19                                  
  cff558: ldp    x20, x19, [sp], #0x20                    
  cff55c: ret                                             

===== LoginMediator$$Reset @ 0xcff760 (1084 bytes)
  cff760: stp    x20, x19, [sp, #-0x20]!                  
  cff764: stp    x29, x30, [sp, #0x10]                    
  cff768: add    x29, sp, #0x10                           
  cff76c: adrp   x20, #0x31cc000                          
  cff770: ldrb   w8, [x20, #0x801]                        
  cff774: mov    x19, x0                                  
  cff778: tbnz   w8, #0, #0xcff794                        
  cff77c: adrp   x8, #0x305c000                           
  cff780: ldr    x8, [x8, #0x228]                         
  cff784: ldr    w0, [x8]                                 
  cff788: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cff78c: mov    w8, #1                                   
  cff790: strb   w8, [x20, #0x801]                        
  cff794: adrp   x8, #0x3063000                           
  cff798: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cff79c: ldr    x8, [x8]                                 
  cff7a0: ldr    x8, [x8, #0xb8]                          
  cff7a4: ldr    x0, [x8, #0x200]                         
  cff7a8: cbz    x0, #0xcff7c0                            
  cff7ac: ldp    x29, x30, [sp, #0x10]                    
  cff7b0: mov    x1, x19                                  
  cff7b4: mov    x2, xzr                                  
  cff7b8: ldp    x20, x19, [sp], #0x20                    
  cff7bc: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  cff7c0: mov    x0, x19                                  
  cff7c4: bl     #0xcfceb4                                ; LoginMediator$$get_playerData
  cff7c8: mov    x20, x0                                  
  cff7cc: cbnz   x20, #0xcff7d4                           
  cff7d0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff7d4: mov    x0, x20                                  
  cff7d8: mov    x1, xzr                                  
  cff7dc: bl     #0xe1af20                                ; PlayerData$$Clear
  cff7e0: mov    x0, x19                                  
  cff7e4: bl     #0xcfcfa8                                ; LoginMediator$$get_chatData
  cff7e8: mov    x20, x0                                  
  cff7ec: cbnz   x20, #0xcff7f4                           
  cff7f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff7f4: mov    x0, x20                                  
  cff7f8: mov    x1, xzr                                  
  cff7fc: bl     #0xd87eb8                                ; ChatMessageMgr$$Clear
  cff800: mov    x0, x19                                  
  cff804: bl     #0xcfd09c                                ; LoginMediator$$get_guildData
  cff808: mov    x20, x0                                  
  cff80c: cbnz   x20, #0xcff814                           
  cff810: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff814: mov    x0, x20                                  
  cff818: mov    x1, xzr                                  
  cff81c: bl     #0xfd6eb8                                ; GuildData$$Clear
  cff820: mov    x0, x19                                  
  cff824: bl     #0xcfd10c                                ; LoginMediator$$get_mailData
  cff828: mov    x20, x0                                  
  cff82c: cbnz   x20, #0xcff834                           
  cff830: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff834: mov    x0, x20                                  
  cff838: bl     #0xd0025c                                ; MailData$$Clear
  cff83c: mov    x0, x19                                  
  cff840: bl     #0xcfd200                                ; LoginMediator$$get_guideData
  cff844: mov    x20, x0                                  
  cff848: cbnz   x20, #0xcff850                           
  cff84c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff850: mov    x0, x20                                  
  cff854: mov    x1, xzr                                  
  cff858: bl     #0xf5f31c                                ; GuideData$$Clear
  cff85c: mov    x0, x19                                  
  cff860: bl     #0xcfd2f4                                ; LoginMediator$$get_activityData
  cff864: mov    x20, x0                                  
  cff868: cbnz   x20, #0xcff870                           
  cff86c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff870: mov    x0, x20                                  
  cff874: mov    x1, xzr                                  
  cff878: bl     #0xe2ec88                                ; ActivityData$$Clear
  cff87c: mov    x0, x19                                  
  cff880: bl     #0xcfd3e8                                ; LoginMediator$$get_chapterData
  cff884: mov    x20, x0                                  
  cff888: cbnz   x20, #0xcff890                           
  cff88c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff890: mov    x0, x20                                  
  cff894: mov    x1, xzr                                  
  cff898: bl     #0xea7de0                                ; ChapterData$$Clear
  cff89c: mov    x0, x19                                  
  cff8a0: bl     #0xcfd5d0                                ; LoginMediator$$get_pointMatch
  cff8a4: mov    x20, x0                                  
  cff8a8: cbnz   x20, #0xcff8b0                           
  cff8ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff8b0: mov    x0, x20                                  
  cff8b4: mov    x1, xzr                                  
  cff8b8: bl     #0xe25080                                ; PointMatchData$$Clear
  cff8bc: mov    x0, x19                                  
  cff8c0: bl     #0xcfd6c4                                ; LoginMediator$$get_cursadesData
  cff8c4: mov    x20, x0                                  
  cff8c8: cbnz   x20, #0xcff8d0                           
  cff8cc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff8d0: mov    x0, x20                                  
  cff8d4: mov    x1, xzr                                  
  cff8d8: bl     #0x1088cb8                               ; CrusadesData$$Clear
  cff8dc: mov    x0, x19                                  
  cff8e0: bl     #0xcfd4dc                                ; LoginMediator$$get_arenaData
  cff8e4: mov    x20, x0                                  
  cff8e8: cbnz   x20, #0xcff8f0                           
  cff8ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff8f0: mov    x0, x20                                  
  cff8f4: mov    x1, xzr                                  
  cff8f8: bl     #0xf354d0                                ; ArenaData$$Clear
  cff8fc: mov    x0, x19                                  
  cff900: bl     #0xcfd7b8                                ; LoginMediator$$get_towerUpdate
  cff904: mov    x20, x0                                  
  cff908: cbnz   x20, #0xcff910                           
  cff90c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff910: mov    x0, x20                                  
  cff914: mov    x1, xzr                                  
  cff918: bl     #0x128c048                               ; TowerUpData$$Clear
  cff91c: mov    x0, x19                                  
  cff920: bl     #0xcfd8ac                                ; LoginMediator$$get_supplyData
  cff924: mov    x20, x0                                  
  cff928: cbnz   x20, #0xcff930                           
  cff92c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff930: mov    x0, x20                                  
  cff934: mov    x1, xzr                                  
  cff938: bl     #0xd4e8d4                                ; SupplyData$$Clear
  cff93c: mov    x0, x19                                  
  cff940: bl     #0xcfd9a0                                ; LoginMediator$$get_teamRaidData
  cff944: mov    x20, x0                                  
  cff948: cbnz   x20, #0xcff950                           
  cff94c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff950: mov    x0, x20                                  
  cff954: mov    x1, xzr                                  
  cff958: bl     #0x105e650                               ; TeamRaidData$$Clear
  cff95c: mov    x0, x19                                  
  cff960: bl     #0xcfe510                                ; LoginMediator$$get_bagData
  cff964: mov    x20, x0                                  
  cff968: cbnz   x20, #0xcff970                           
  cff96c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff970: mov    x0, x20                                  
  cff974: mov    x1, xzr                                  
  cff978: bl     #0xd62f0c                                ; BagData$$Clear
  cff97c: mov    x0, x19                                  
  cff980: bl     #0xcfddf4                                ; LoginMediator$$get_mechaData
  cff984: mov    x20, x0                                  
  cff988: cbnz   x20, #0xcff990                           
  cff98c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff990: mov    x0, x20                                  
  cff994: mov    x1, xzr                                  
  cff998: bl     #0xe712d0                                ; MechaData$$Clear
  cff99c: mov    x0, x19                                  
  cff9a0: bl     #0xcfdc7c                                ; LoginMediator$$get_geneData
  cff9a4: mov    x20, x0                                  
  cff9a8: cbnz   x20, #0xcff9b0                           
  cff9ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff9b0: mov    x0, x20                                  
  cff9b4: mov    x1, xzr                                  
  cff9b8: bl     #0x1198bf4                               ; GeneData$$ClearGeneList
  cff9bc: mov    x0, x19                                  
  cff9c0: bl     #0xcfdb88                                ; LoginMediator$$get_materialData
  cff9c4: mov    x20, x0                                  
  cff9c8: cbnz   x20, #0xcff9d0                           
  cff9cc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff9d0: mov    x0, x20                                  
  cff9d4: bl     #0xd00320                                ; MaterialData$$ClearMatList
  cff9d8: mov    x0, x19                                  
  cff9dc: bl     #0xcfddf4                                ; LoginMediator$$get_mechaData
  cff9e0: mov    x20, x0                                  
  cff9e4: cbnz   x20, #0xcff9ec                           
  cff9e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cff9ec: mov    x0, x20                                  
  cff9f0: mov    x1, xzr                                  
  cff9f4: bl     #0xe71368                                ; MechaData$$ClearListCache
  cff9f8: mov    x0, x19                                  
  cff9fc: bl     #0xcfdee8                                ; LoginMediator$$get_childrenData
  cffa00: mov    x20, x0                                  
  cffa04: cbnz   x20, #0xcffa0c                           
  cffa08: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffa0c: mov    x0, x20                                  
  cffa10: mov    x1, xzr                                  
  cffa14: bl     #0xd9392c                                ; ChildrenData$$ClearListCache
  cffa18: mov    x0, x19                                  
  cffa1c: bl     #0xcfdfdc                                ; LoginMediator$$get_atSkillData
  cffa20: mov    x20, x0                                  
  cffa24: cbnz   x20, #0xcffa2c                           
  cffa28: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffa2c: mov    x0, x20                                  
  cffa30: mov    x1, xzr                                  
  cffa34: bl     #0x112e848                               ; ATSkillData$$ClearChipDictCache
  cffa38: mov    x0, x19                                  
  cffa3c: bl     #0xcfe04c                                ; LoginMediator$$get_angelData
  cffa40: mov    x20, x0                                  
  cffa44: cbnz   x20, #0xcffa4c                           
  cffa48: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffa4c: mov    x0, x20                                  
  cffa50: mov    x1, xzr                                  
  cffa54: bl     #0xe42434                                ; AngelData$$ClearAngelItemList
  cffa58: mov    x0, x19                                  
  cffa5c: bl     #0xcfda94                                ; LoginMediator$$get_friendData
  cffa60: mov    x20, x0                                  
  cffa64: cbnz   x20, #0xcffa6c                           
  cffa68: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffa6c: mov    x0, x20                                  
  cffa70: mov    x1, xzr                                  
  cffa74: bl     #0x10d5400                               ; FriendDataMgr$$ClearCache
  cffa78: mov    x0, x19                                  
  cffa7c: bl     #0xcfe140                                ; LoginMediator$$get_pvpData
  cffa80: mov    x20, x0                                  
  cffa84: cbnz   x20, #0xcffa8c                           
  cffa88: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffa8c: mov    x0, x20                                  
  cffa90: mov    x1, xzr                                  
  cffa94: bl     #0xdd1058                                ; PVPData$$Reset
  cffa98: adrp   x8, #0x3077000                           
  cffa9c: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  cffaa0: ldr    x0, [x8]                                 
  cffaa4: ldrb   w8, [x0, #0x127]                         
  cffaa8: tbz    w8, #1, #0xcffab8                        
  cffaac: ldr    w8, [x0, #0xd8]                          
  cffab0: cbnz   w8, #0xcffab8                            
  cffab4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  cffab8: mov    x0, xzr                                  
  cffabc: bl     #0x1126e58                               ; ConnectAPI$$ClearPingState
  cffac0: mov    x0, x19                                  
  cffac4: bl     #0xcfe234                                ; LoginMediator$$get_guildBattleData
  cffac8: mov    x20, x0                                  
  cffacc: cbnz   x20, #0xcffad4                           
  cffad0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffad4: mov    x0, x20                                  
  cffad8: mov    x1, xzr                                  
  cffadc: bl     #0xf74208                                ; GuildBattleData$$Clear
  cffae0: mov    x0, x19                                  
  cffae4: bl     #0xcfe328                                ; LoginMediator$$get_peakVsData
  cffae8: mov    x20, x0                                  
  cffaec: cbnz   x20, #0xcffaf4                           
  cffaf0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffaf4: mov    x0, x20                                  
  cffaf8: mov    x1, xzr                                  
  cffafc: bl     #0x10f8f7c                               ; PeakVsData$$Clear
  cffb00: mov    x0, x19                                  
  cffb04: bl     #0xcfe41c                                ; LoginMediator$$get_crystalOreData
  cffb08: mov    x20, x0                                  
  cffb0c: cbnz   x20, #0xcffb14                           
  cffb10: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffb14: mov    x0, x20                                  
  cffb18: mov    x1, xzr                                  
  cffb1c: bl     #0x108bd4c                               ; CrystalOreData$$Clear
  cffb20: mov    x0, x19                                  
  cffb24: bl     #0xcfe604                                ; LoginMediator$$get_activeSevenData
  cffb28: mov    x20, x0                                  
  cffb2c: cbnz   x20, #0xcffb34                           
  cffb30: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffb34: mov    x0, x20                                  
  cffb38: mov    x1, xzr                                  
  cffb3c: bl     #0x1142bf8                               ; ActiveSevenData$$Clear
  cffb40: mov    x0, x19                                  
  cffb44: bl     #0xcfe6f8                                ; LoginMediator$$get_tbData
  cffb48: mov    x20, x0                                  
  cffb4c: cbnz   x20, #0xcffb54                           
  cffb50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffb54: mov    x0, x20                                  
  cffb58: mov    x1, xzr                                  
  cffb5c: bl     #0xed4d0c                                ; TeamBattleData$$Clear
  cffb60: mov    x0, x19                                  
  cffb64: bl     #0xcfe6f8                                ; LoginMediator$$get_tbData
  cffb68: mov    x20, x0                                  
  cffb6c: cbnz   x20, #0xcffb74                           
  cffb70: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffb74: mov    x0, x19                                  
  cffb78: strb   wzr, [x20, #0x48]                        
  cffb7c: bl     #0xcfe7ec                                ; LoginMediator$$get_recruitData
  cffb80: mov    x19, x0                                  
  cffb84: cbnz   x19, #0xcffb8c                           
  cffb88: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  cffb8c: str    xzr, [x19, #0x90]                        
  cffb90: ldp    x29, x30, [sp, #0x10]                    
  cffb94: ldp    x20, x19, [sp], #0x20                    
  cffb98: ret                                             

===== LoginMediator$$ResetLogin @ 0xd004fc (212 bytes)
  d004fc: stp    x20, x19, [sp, #-0x20]!                  
  d00500: stp    x29, x30, [sp, #0x10]                    
  d00504: add    x29, sp, #0x10                           
  d00508: adrp   x20, #0x31cc000                          
  d0050c: ldrb   w8, [x20, #0x80c]                        
  d00510: mov    x19, x0                                  
  d00514: tbnz   w8, #0, #0xd00530                        
  d00518: adrp   x8, #0x3038000                           
  d0051c: ldr    x8, [x8, #0xf10]                         
  d00520: ldr    w0, [x8]                                 
  d00524: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d00528: mov    w8, #1                                   
  d0052c: strb   w8, [x20, #0x80c]                        
  d00530: adrp   x8, #0x3063000                           
  d00534: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d00538: ldr    x8, [x8]                                 
  d0053c: ldr    x8, [x8, #0xb8]                          
  d00540: ldr    x0, [x8, #0x258]                         
  d00544: cbz    x0, #0xd0055c                            
  d00548: ldp    x29, x30, [sp, #0x10]                    
  d0054c: mov    x1, x19                                  
  d00550: mov    x2, xzr                                  
  d00554: ldp    x20, x19, [sp], #0x20                    
  d00558: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d0055c: adrp   x8, #0x3077000                           
  d00560: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  d00564: ldr    x0, [x8]                                 
  d00568: ldrb   w8, [x0, #0x127]                         
  d0056c: tbz    w8, #1, #0xd0057c                        
  d00570: ldr    w8, [x0, #0xd8]                          
  d00574: cbnz   w8, #0xd0057c                            
  d00578: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d0057c: mov    x0, xzr                                  
  d00580: bl     #0x112521c                               ; ConnectAPI$$Disconnect
  d00584: mov    x0, x19                                  
  d00588: bl     #0xd01a10                                ; LoginMediator$$StopLoginWait
  d0058c: mov    x0, x19                                  
  d00590: bl     #0xcff760                                ; LoginMediator$$Reset
  d00594: mov    x0, x19                                  
  d00598: bl     #0xcfcccc                                ; LoginMediator$$get_view
  d0059c: mov    x19, x0                                  
  d005a0: cbnz   x19, #0xd005a8                           
  d005a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d005a8: adrp   x9, #0x303c000                           
  d005ac: ldr    x8, [x19]                                
  d005b0: ldr    x9, [x9, #0xbf0]                         ; STR "Reset"
  d005b4: ldp    x29, x30, [sp, #0x10]                    
  d005b8: mov    x0, x19                                  
  d005bc: ldr    x3, [x8, #0x268]                         
  d005c0: ldr    x1, [x9]                                 
  d005c4: ldr    x2, [x8, #0x270]                         
  d005c8: ldp    x20, x19, [sp], #0x20                    
  d005cc: br     x3                                       

===== LoginMediator$$SaveLoginServer @ 0xd009b0 (304 bytes)
  d009b0: stp    x20, x19, [sp, #-0x20]!                  
  d009b4: stp    x29, x30, [sp, #0x10]                    
  d009b8: add    x29, sp, #0x10                           
  d009bc: adrp   x20, #0x31cc000                          
  d009c0: ldrb   w8, [x20, #0x805]                        
  d009c4: mov    x19, x0                                  
  d009c8: tbnz   w8, #0, #0xd009e4                        
  d009cc: adrp   x8, #0x3053000                           
  d009d0: ldr    x8, [x8, #0xff0]                         
  d009d4: ldr    w0, [x8]                                 
  d009d8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d009dc: mov    w8, #1                                   
  d009e0: strb   w8, [x20, #0x805]                        
  d009e4: adrp   x8, #0x3063000                           
  d009e8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d009ec: ldr    x8, [x8]                                 
  d009f0: ldr    x8, [x8, #0xb8]                          
  d009f4: ldr    x0, [x8, #0x220]                         
  d009f8: cbz    x0, #0xd00a10                            
  d009fc: ldp    x29, x30, [sp, #0x10]                    
  d00a00: mov    x1, x19                                  
  d00a04: mov    x2, xzr                                  
  d00a08: ldp    x20, x19, [sp], #0x20                    
  d00a0c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d00a10: ldr    x20, [x19, #0x128]                       
  d00a14: cbnz   x20, #0xd00a20                           
  d00a18: mov    x0, xzr                                  
  d00a1c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00a20: adrp   x8, #0x3077000                           
  d00a24: ldr    w1, [x20, #0x10]                         
  d00a28: ldr    x8, [x8, #0x518]                         ; STR "ServerID"
  d00a2c: mov    x2, xzr                                  
  d00a30: ldr    x0, [x8]                                 
  d00a34: bl     #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt
  d00a38: ldr    x20, [x19, #0x128]                       
  d00a3c: cbnz   x20, #0xd00a48                           
  d00a40: mov    x0, xzr                                  
  d00a44: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00a48: adrp   x8, #0x3033000                           
  d00a4c: ldr    x1, [x20, #0x18]                         
  d00a50: ldr    x8, [x8, #0xa90]                         ; STR "ServerName"
  d00a54: mov    x2, xzr                                  
  d00a58: ldr    x0, [x8]                                 
  d00a5c: bl     #0x1be7028                               ; UnityEngine.PlayerPrefs$$SetString
  d00a60: ldr    x20, [x19, #0x128]                       
  d00a64: cbnz   x20, #0xd00a70                           
  d00a68: mov    x0, xzr                                  
  d00a6c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00a70: adrp   x8, #0x300a000                           
  d00a74: ldr    w1, [x20, #0x34]                         
  d00a78: ldr    x8, [x8, #0x778]                         ; STR "ServerStage"
  d00a7c: mov    x2, xzr                                  
  d00a80: ldr    x0, [x8]                                 
  d00a84: bl     #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt
  d00a88: ldr    x20, [x19, #0x128]                       
  d00a8c: cbnz   x20, #0xd00a98                           
  d00a90: mov    x0, xzr                                  
  d00a94: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00a98: adrp   x8, #0x3017000                           
  d00a9c: ldr    x1, [x20, #0x28]                         
  d00aa0: ldr    x8, [x8, #0xcc0]                         ; STR "ServerIP"
  d00aa4: mov    x2, xzr                                  
  d00aa8: ldr    x0, [x8]                                 
  d00aac: bl     #0x1be7028                               ; UnityEngine.PlayerPrefs$$SetString
  d00ab0: ldr    x19, [x19, #0x128]                       
  d00ab4: cbnz   x19, #0xd00ac0                           
  d00ab8: mov    x0, xzr                                  
  d00abc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d00ac0: adrp   x8, #0x3002000                           
  d00ac4: ldr    w1, [x19, #0x30]                         
  d00ac8: ldr    x8, [x8, #0x198]                         ; STR "ServerPort"
  d00acc: ldp    x29, x30, [sp, #0x10]                    
  d00ad0: mov    x2, xzr                                  
  d00ad4: ldr    x0, [x8]                                 
  d00ad8: ldp    x20, x19, [sp], #0x20                    
  d00adc: b      #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt

===== LoginMediator$$ServerNotice @ 0xd01694 (212 bytes)
  d01694: str    x21, [sp, #-0x30]!                       
  d01698: stp    x20, x19, [sp, #0x10]                    
  d0169c: stp    x29, x30, [sp, #0x20]                    
  d016a0: add    x29, sp, #0x20                           
  d016a4: adrp   x21, #0x31cc000                          
  d016a8: ldrb   w8, [x21, #0x808]                        
  d016ac: mov    x20, x1                                  
  d016b0: mov    x19, x0                                  
  d016b4: tbnz   w8, #0, #0xd016d0                        
  d016b8: adrp   x8, #0x3062000                           
  d016bc: ldr    x8, [x8, #0x5e8]                         
  d016c0: ldr    w0, [x8]                                 
  d016c4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d016c8: mov    w8, #1                                   
  d016cc: strb   w8, [x21, #0x808]                        
  d016d0: adrp   x8, #0x3063000                           
  d016d4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d016d8: ldr    x8, [x8]                                 
  d016dc: ldr    x8, [x8, #0xb8]                          
  d016e0: ldr    x0, [x8, #0x238]                         
  d016e4: cbz    x0, #0xd01704                            
  d016e8: mov    x1, x19                                  
  d016ec: mov    x2, x20                                  
  d016f0: ldp    x29, x30, [sp, #0x20]                    
  d016f4: ldp    x20, x19, [sp, #0x10]                    
  d016f8: mov    x3, xzr                                  
  d016fc: ldr    x21, [sp], #0x30                         
  d01700: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d01704: mov    x0, x19                                  
  d01708: bl     #0xcfcdc0                                ; LoginMediator$$get_noticeData
  d0170c: adrp   x8, #0x305b000                           
  d01710: ldr    x8, [x8, #0x7c8]                         ; META System.Action_TypeInfo
  d01714: mov    x20, x0                                  
  d01718: ldr    x8, [x8]                                 
  d0171c: mov    x0, x8                                   
  d01720: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d01724: adrp   x8, #0x3055000                           
  d01728: ldr    x8, [x8, #0x628]                         ; MMETH Method$LoginMediator.ShowServerNotice()
  d0172c: mov    x1, x19                                  
  d01730: mov    x3, xzr                                  
  d01734: mov    x21, x0                                  
  d01738: ldr    x2, [x8]                                 
  d0173c: bl     #0x19b1360                               ; System.Action$$.ctor
  d01740: cbnz   x20, #0xd0174c                           
  d01744: mov    x0, xzr                                  
  d01748: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0174c: mov    x0, x20                                  
  d01750: ldp    x29, x30, [sp, #0x20]                    
  d01754: ldp    x20, x19, [sp, #0x10]                    
  d01758: mov    x1, x21                                  
  d0175c: mov    x2, xzr                                  
  d01760: ldr    x21, [sp], #0x30                         
  d01764: b      #0xe629f4                                ; NoticeData$$getNoticeInfo

===== LoginMediator$$ShowServerNotice @ 0xd01768 (184 bytes)
  d01768: stp    x20, x19, [sp, #-0x20]!                  
  d0176c: stp    x29, x30, [sp, #0x10]                    
  d01770: add    x29, sp, #0x10                           
  d01774: adrp   x20, #0x31cc000                          
  d01778: ldrb   w8, [x20, #0x809]                        
  d0177c: mov    x19, x0                                  
  d01780: tbnz   w8, #0, #0xd0179c                        
  d01784: adrp   x8, #0x3043000                           
  d01788: ldr    x8, [x8, #0xf00]                         
  d0178c: ldr    w0, [x8]                                 
  d01790: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01794: mov    w8, #1                                   
  d01798: strb   w8, [x20, #0x809]                        
  d0179c: adrp   x8, #0x3063000                           
  d017a0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d017a4: ldr    x8, [x8]                                 
  d017a8: ldr    x8, [x8, #0xb8]                          
  d017ac: ldr    x0, [x8, #0x240]                         
  d017b0: cbz    x0, #0xd017c8                            
  d017b4: ldp    x29, x30, [sp, #0x10]                    
  d017b8: mov    x1, x19                                  
  d017bc: mov    x2, xzr                                  
  d017c0: ldp    x20, x19, [sp], #0x20                    
  d017c4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d017c8: mov    x0, x19                                  
  d017cc: bl     #0xcfcdc0                                ; LoginMediator$$get_noticeData
  d017d0: mov    x20, x0                                  
  d017d4: cbnz   x20, #0xd017dc                           
  d017d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d017dc: ldr    x0, [x20, #0x18]                         
  d017e0: mov    x1, xzr                                  
  d017e4: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  d017e8: tbz    w0, #0, #0xd017f8                        
  d017ec: ldp    x29, x30, [sp, #0x10]                    
  d017f0: ldp    x20, x19, [sp], #0x20                    
  d017f4: ret                                             
  d017f8: mov    x0, x19                                  
  d017fc: mov    x1, xzr                                  
  d01800: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d01804: adrp   x8, #0x2fff000                           
  d01808: ldr    x8, [x8, #0x738]                         ; MMETH Method$EventDispatcherExtension.Open<NoticeViewInLobby>()
  d0180c: ldp    x29, x30, [sp, #0x10]                    
  d01810: mov    x1, xzr                                  
  d01814: ldr    x2, [x8]                                 
  d01818: ldp    x20, x19, [sp], #0x20                    
  d0181c: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== LoginMediator$$StopLoginWait @ 0xd01a10 (156 bytes)
  d01a10: stp    x20, x19, [sp, #-0x20]!                  
  d01a14: stp    x29, x30, [sp, #0x10]                    
  d01a18: add    x29, sp, #0x10                           
  d01a1c: adrp   x20, #0x31cc000                          
  d01a20: ldrb   w8, [x20, #0x80e]                        
  d01a24: mov    x19, x0                                  
  d01a28: tbnz   w8, #0, #0xd01a44                        
  d01a2c: adrp   x8, #0x2fd4000                           
  d01a30: ldr    x8, [x8, #0xd28]                         
  d01a34: ldr    w0, [x8]                                 
  d01a38: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01a3c: mov    w8, #1                                   
  d01a40: strb   w8, [x20, #0x80e]                        
  d01a44: adrp   x8, #0x3063000                           
  d01a48: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01a4c: ldr    x8, [x8]                                 
  d01a50: ldr    x8, [x8, #0xb8]                          
  d01a54: ldr    x0, [x8, #0x268]                         
  d01a58: cbz    x0, #0xd01a70                            
  d01a5c: ldp    x29, x30, [sp, #0x10]                    
  d01a60: mov    x1, x19                                  
  d01a64: mov    x2, xzr                                  
  d01a68: ldp    x20, x19, [sp], #0x20                    
  d01a6c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d01a70: ldr    x1, [x19, #0x130]                        
  d01a74: cbz    x1, #0xd01a88                            
  d01a78: mov    x0, x19                                  
  d01a7c: mov    x2, xzr                                  
  d01a80: bl     #0x1be157c                               ; UnityEngine.MonoBehaviour$$StopCoroutine
  d01a84: str    xzr, [x19, #0x130]                       
  d01a88: mov    x0, x19                                  
  d01a8c: mov    x1, xzr                                  
  d01a90: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d01a94: adrp   x8, #0x2fd3000                           
  d01a98: ldr    x8, [x8, #0xac0]                         ; MMETH Method$EventDispatcherExtension.Close<PreOpenView>()
  d01a9c: ldp    x29, x30, [sp, #0x10]                    
  d01aa0: ldr    x1, [x8]                                 
  d01aa4: ldp    x20, x19, [sp], #0x20                    
  d01aa8: b      #0x12a82a4                               ; EventDispatcherExtension$$Close<WaitingView>

===== LoginMediator$$WaitInitData @ 0xd01918 (204 bytes)
  d01918: str    d8, [sp, #-0x30]!                        
  d0191c: stp    x20, x19, [sp, #0x10]                    
  d01920: stp    x29, x30, [sp, #0x20]                    
  d01924: add    x29, sp, #0x20                           
  d01928: adrp   x20, #0x31cc000                          
  d0192c: ldrb   w8, [x20, #0x80b]                        
  d01930: mov    v8.16b, v0.16b                           
  d01934: mov    x19, x0                                  
  d01938: tbnz   w8, #0, #0xd01954                        
  d0193c: adrp   x8, #0x306e000                           
  d01940: ldr    x8, [x8, #0x6f0]                         
  d01944: ldr    w0, [x8]                                 
  d01948: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d0194c: mov    w8, #1                                   
  d01950: strb   w8, [x20, #0x80b]                        
  d01954: adrp   x8, #0x3063000                           
  d01958: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d0195c: ldr    x8, [x8]                                 
  d01960: ldr    x8, [x8, #0xb8]                          
  d01964: ldr    x0, [x8, #0x250]                         
  d01968: cbz    x0, #0xd01988                            
  d0196c: mov    x1, x19                                  
  d01970: ldp    x29, x30, [sp, #0x20]                    
  d01974: ldp    x20, x19, [sp, #0x10]                    
  d01978: mov    v0.16b, v8.16b                           
  d0197c: mov    x2, xzr                                  
  d01980: ldr    d8, [sp], #0x30                          
  d01984: b      #0xca4214                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp86
  d01988: adrp   x8, #0x301d000                           
  d0198c: ldr    x8, [x8, #0x778]                         ; META LoginMediator.<WaitInitData>d__143_TypeInfo
  d01990: ldr    x0, [x8]                                 
  d01994: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d01998: mov    x1, xzr                                  
  d0199c: mov    x20, x0                                  
  d019a0: bl     #0x1ca54c0                               ; System.Object$$.ctor
  d019a4: str    wzr, [x20, #0x10]                        
  d019a8: cbz    x20, #0xd019b4                           
  d019ac: str    x19, [x20, #0x20]                        
  d019b0: b      #0xd019cc                                
  d019b4: mov    x0, xzr                                  
  d019b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d019bc: mov    w8, #0x20                                
  d019c0: mov    x0, xzr                                  
  d019c4: str    x19, [x8]                                
  d019c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d019cc: str    s8, [x20, #0x28]                         
  d019d0: mov    x0, x20                                  
  d019d4: ldp    x29, x30, [sp, #0x20]                    
  d019d8: ldp    x20, x19, [sp, #0x10]                    
  d019dc: ldr    d8, [sp], #0x30                          
  d019e0: ret                                             

===== LoginMediator$$WaitLoginResult @ 0xd01820 (204 bytes)
  d01820: str    d8, [sp, #-0x30]!                        
  d01824: stp    x20, x19, [sp, #0x10]                    
  d01828: stp    x29, x30, [sp, #0x20]                    
  d0182c: add    x29, sp, #0x20                           
  d01830: adrp   x20, #0x31cc000                          
  d01834: ldrb   w8, [x20, #0x80a]                        
  d01838: mov    v8.16b, v0.16b                           
  d0183c: mov    x19, x0                                  
  d01840: tbnz   w8, #0, #0xd0185c                        
  d01844: adrp   x8, #0x3035000                           
  d01848: ldr    x8, [x8, #0x778]                         
  d0184c: ldr    w0, [x8]                                 
  d01850: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d01854: mov    w8, #1                                   
  d01858: strb   w8, [x20, #0x80a]                        
  d0185c: adrp   x8, #0x3063000                           
  d01860: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  d01864: ldr    x8, [x8]                                 
  d01868: ldr    x8, [x8, #0xb8]                          
  d0186c: ldr    x0, [x8, #0x248]                         
  d01870: cbz    x0, #0xd01890                            
  d01874: mov    x1, x19                                  
  d01878: ldp    x29, x30, [sp, #0x20]                    
  d0187c: ldp    x20, x19, [sp, #0x10]                    
  d01880: mov    v0.16b, v8.16b                           
  d01884: mov    x2, xzr                                  
  d01888: ldr    d8, [sp], #0x30                          
  d0188c: b      #0xca4214                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp86
  d01890: adrp   x8, #0x3020000                           
  d01894: ldr    x8, [x8, #0x770]                         ; META LoginMediator.<WaitLoginResult>d__142_TypeInfo
  d01898: ldr    x0, [x8]                                 
  d0189c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d018a0: mov    x1, xzr                                  
  d018a4: mov    x20, x0                                  
  d018a8: bl     #0x1ca54c0                               ; System.Object$$.ctor
  d018ac: str    wzr, [x20, #0x10]                        
  d018b0: cbz    x20, #0xd018bc                           
  d018b4: str    x19, [x20, #0x20]                        
  d018b8: b      #0xd018d4                                
  d018bc: mov    x0, xzr                                  
  d018c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d018c4: mov    w8, #0x20                                
  d018c8: mov    x0, xzr                                  
  d018cc: str    x19, [x8]                                
  d018d0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d018d4: str    s8, [x20, #0x28]                         
  d018d8: mov    x0, x20                                  
  d018dc: ldp    x29, x30, [sp, #0x20]                    
  d018e0: ldp    x20, x19, [sp, #0x10]                    
  d018e4: ldr    d8, [sp], #0x30                          
  d018e8: ret                                             

===== LoginMediator$$get_activeSevenData @ 0xcfe604 (112 bytes)
  cfe604: stp    x20, x19, [sp, #-0x20]!                  
  cfe608: stp    x29, x30, [sp, #0x10]                    
  cfe60c: add    x29, sp, #0x10                           
  cfe610: adrp   x20, #0x31cc000                          
  cfe614: ldrb   w8, [x20, #0x7f7]                        
  cfe618: mov    x19, x0                                  
  cfe61c: tbnz   w8, #0, #0xcfe638                        
  cfe620: adrp   x8, #0x2fd9000                           
  cfe624: ldr    x8, [x8, #0xf18]                         
  cfe628: ldr    w0, [x8]                                 
  cfe62c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe630: mov    w8, #1                                   
  cfe634: strb   w8, [x20, #0x7f7]                        
  cfe638: adrp   x8, #0x3063000                           
  cfe63c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe640: ldr    x8, [x8]                                 
  cfe644: ldr    x8, [x8, #0xb8]                          
  cfe648: ldr    x0, [x8, #0x1b0]                         
  cfe64c: cbz    x0, #0xcfe664                            
  cfe650: ldp    x29, x30, [sp, #0x10]                    
  cfe654: mov    x1, x19                                  
  cfe658: mov    x2, xzr                                  
  cfe65c: ldp    x20, x19, [sp], #0x20                    
  cfe660: b      #0xca3564                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp81
  cfe664: ldr    x0, [x19, #0x100]                        
  cfe668: ldp    x29, x30, [sp, #0x10]                    
  cfe66c: ldp    x20, x19, [sp], #0x20                    
  cfe670: ret                                             

===== LoginMediator$$get_activityData @ 0xcfd2f4 (112 bytes)
  cfd2f4: stp    x20, x19, [sp, #-0x20]!                  
  cfd2f8: stp    x29, x30, [sp, #0x10]                    
  cfd2fc: add    x29, sp, #0x10                           
  cfd300: adrp   x20, #0x31cc000                          
  cfd304: ldrb   w8, [x20, #0x7cf]                        
  cfd308: mov    x19, x0                                  
  cfd30c: tbnz   w8, #0, #0xcfd328                        
  cfd310: adrp   x8, #0x300c000                           
  cfd314: ldr    x8, [x8, #0x868]                         
  cfd318: ldr    w0, [x8]                                 
  cfd31c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd320: mov    w8, #1                                   
  cfd324: strb   w8, [x20, #0x7cf]                        
  cfd328: adrp   x8, #0x3063000                           
  cfd32c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd330: ldr    x8, [x8]                                 
  cfd334: ldr    x8, [x8, #0xb8]                          
  cfd338: ldr    x0, [x8, #0x70]                          
  cfd33c: cbz    x0, #0xcfd354                            
  cfd340: ldp    x29, x30, [sp, #0x10]                    
  cfd344: mov    x1, x19                                  
  cfd348: mov    x2, xzr                                  
  cfd34c: ldp    x20, x19, [sp], #0x20                    
  cfd350: b      #0xca02c4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp61
  cfd354: ldr    x0, [x19, #0x60]                         
  cfd358: ldp    x29, x30, [sp, #0x10]                    
  cfd35c: ldp    x20, x19, [sp], #0x20                    
  cfd360: ret                                             

===== LoginMediator$$get_angelData @ 0xcfe04c (112 bytes)
  cfe04c: stp    x20, x19, [sp, #-0x20]!                  
  cfe050: stp    x29, x30, [sp, #0x10]                    
  cfe054: add    x29, sp, #0x10                           
  cfe058: adrp   x20, #0x31cc000                          
  cfe05c: ldrb   w8, [x20, #0x7eb]                        
  cfe060: mov    x19, x0                                  
  cfe064: tbnz   w8, #0, #0xcfe080                        
  cfe068: adrp   x8, #0x2fd8000                           
  cfe06c: ldr    x8, [x8, #0x188]                         
  cfe070: ldr    w0, [x8]                                 
  cfe074: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe078: mov    w8, #1                                   
  cfe07c: strb   w8, [x20, #0x7eb]                        
  cfe080: adrp   x8, #0x3063000                           
  cfe084: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe088: ldr    x8, [x8]                                 
  cfe08c: ldr    x8, [x8, #0xb8]                          
  cfe090: ldr    x0, [x8, #0x150]                         
  cfe094: cbz    x0, #0xcfe0ac                            
  cfe098: ldp    x29, x30, [sp, #0x10]                    
  cfe09c: mov    x1, x19                                  
  cfe0a0: mov    x2, xzr                                  
  cfe0a4: ldp    x20, x19, [sp], #0x20                    
  cfe0a8: b      #0xca2634                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp75
  cfe0ac: ldr    x0, [x19, #0xd0]                         
  cfe0b0: ldp    x29, x30, [sp, #0x10]                    
  cfe0b4: ldp    x20, x19, [sp], #0x20                    
  cfe0b8: ret                                             

===== LoginMediator$$get_arenaData @ 0xcfd4dc (112 bytes)
  cfd4dc: stp    x20, x19, [sp, #-0x20]!                  
  cfd4e0: stp    x29, x30, [sp, #0x10]                    
  cfd4e4: add    x29, sp, #0x10                           
  cfd4e8: adrp   x20, #0x31cc000                          
  cfd4ec: ldrb   w8, [x20, #0x7d3]                        
  cfd4f0: mov    x19, x0                                  
  cfd4f4: tbnz   w8, #0, #0xcfd510                        
  cfd4f8: adrp   x8, #0x3036000                           
  cfd4fc: ldr    x8, [x8, #0xb88]                         
  cfd500: ldr    w0, [x8]                                 
  cfd504: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd508: mov    w8, #1                                   
  cfd50c: strb   w8, [x20, #0x7d3]                        
  cfd510: adrp   x8, #0x3063000                           
  cfd514: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd518: ldr    x8, [x8]                                 
  cfd51c: ldr    x8, [x8, #0xb8]                          
  cfd520: ldr    x0, [x8, #0x90]                          
  cfd524: cbz    x0, #0xcfd53c                            
  cfd528: ldp    x29, x30, [sp, #0x10]                    
  cfd52c: mov    x1, x19                                  
  cfd530: mov    x2, xzr                                  
  cfd534: ldp    x20, x19, [sp], #0x20                    
  cfd538: b      #0xca07d4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp63
  cfd53c: ldr    x0, [x19, #0x70]                         
  cfd540: ldp    x29, x30, [sp, #0x10]                    
  cfd544: ldp    x20, x19, [sp], #0x20                    
  cfd548: ret                                             

===== LoginMediator$$get_atSkillData @ 0xcfdfdc (112 bytes)
  cfdfdc: stp    x20, x19, [sp, #-0x20]!                  
  cfdfe0: stp    x29, x30, [sp, #0x10]                    
  cfdfe4: add    x29, sp, #0x10                           
  cfdfe8: adrp   x20, #0x31cc000                          
  cfdfec: ldrb   w8, [x20, #0x7ea]                        
  cfdff0: mov    x19, x0                                  
  cfdff4: tbnz   w8, #0, #0xcfe010                        
  cfdff8: adrp   x8, #0x3078000                           
  cfdffc: ldr    x8, [x8, #0xa30]                         
  cfe000: b      #0xd1e904                                ; ? near MaterialOrder$$.ctor+0x24
  cfe004: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe008: mov    w8, #1                                   
  cfe00c: strb   w8, [x20, #0x7ea]                        
  cfe010: adrp   x8, #0x3063000                           
  cfe014: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe018: ldr    x8, [x8]                                 
  cfe01c: ldr    x8, [x8, #0xb8]                          
  cfe020: ldr    x0, [x8, #0x148]                         
  cfe024: cbz    x0, #0xcfe03c                            
  cfe028: ldp    x29, x30, [sp, #0x10]                    
  cfe02c: mov    x1, x19                                  
  cfe030: mov    x2, xzr                                  
  cfe034: ldp    x20, x19, [sp], #0x20                    
  cfe038: b      #0xca23ac                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp74
  cfe03c: ldr    x0, [x19, #0xc8]                         
  cfe040: ldp    x29, x30, [sp, #0x10]                    
  cfe044: ldp    x20, x19, [sp], #0x20                    
  cfe048: ret                                             

===== LoginMediator$$get_bagData @ 0xcfe510 (112 bytes)
  cfe510: stp    x20, x19, [sp, #-0x20]!                  
  cfe514: stp    x29, x30, [sp, #0x10]                    
  cfe518: add    x29, sp, #0x10                           
  cfe51c: adrp   x20, #0x31cc000                          
  cfe520: ldrb   w8, [x20, #0x7f5]                        
  cfe524: mov    x19, x0                                  
  cfe528: tbnz   w8, #0, #0xcfe544                        
  cfe52c: adrp   x8, #0x3024000                           
  cfe530: ldr    x8, [x8, #0x4b0]                         
  cfe534: ldr    w0, [x8]                                 
  cfe538: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe53c: mov    w8, #1                                   
  cfe540: strb   w8, [x20, #0x7f5]                        
  cfe544: adrp   x8, #0x3063000                           
  cfe548: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe54c: ldr    x8, [x8]                                 
  cfe550: ldr    x8, [x8, #0xb8]                          
  cfe554: ldr    x0, [x8, #0x1a0]                         
  cfe558: cbz    x0, #0xcfe570                            
  cfe55c: ldp    x29, x30, [sp, #0x10]                    
  cfe560: mov    x1, x19                                  
  cfe564: mov    x2, xzr                                  
  cfe568: ldp    x20, x19, [sp], #0x20                    
  cfe56c: b      #0xca32dc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp80
  cfe570: ldr    x0, [x19, #0xf8]                         
  cfe574: ldp    x29, x30, [sp, #0x10]                    
  cfe578: ldp    x20, x19, [sp], #0x20                    
  cfe57c: ret                                             

===== LoginMediator$$get_chapterData @ 0xcfd3e8 (112 bytes)
  cfd3e8: stp    x20, x19, [sp, #-0x20]!                  
  cfd3ec: stp    x29, x30, [sp, #0x10]                    
  cfd3f0: add    x29, sp, #0x10                           
  cfd3f4: adrp   x20, #0x31cc000                          
  cfd3f8: ldrb   w8, [x20, #0x7d1]                        
  cfd3fc: mov    x19, x0                                  
  cfd400: tbnz   w8, #0, #0xcfd41c                        
  cfd404: adrp   x8, #0x2ff4000                           
  cfd408: ldr    x8, [x8, #0x9d0]                         
  cfd40c: ldr    w0, [x8]                                 
  cfd410: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd414: mov    w8, #1                                   
  cfd418: strb   w8, [x20, #0x7d1]                        
  cfd41c: adrp   x8, #0x3063000                           
  cfd420: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd424: ldr    x8, [x8]                                 
  cfd428: ldr    x8, [x8, #0xb8]                          
  cfd42c: ldr    x0, [x8, #0x80]                          
  cfd430: cbz    x0, #0xcfd448                            
  cfd434: ldp    x29, x30, [sp, #0x10]                    
  cfd438: mov    x1, x19                                  
  cfd43c: mov    x2, xzr                                  
  cfd440: ldp    x20, x19, [sp], #0x20                    
  cfd444: b      #0xca054c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp62
  cfd448: ldr    x0, [x19, #0x68]                         
  cfd44c: ldp    x29, x30, [sp, #0x10]                    
  cfd450: ldp    x20, x19, [sp], #0x20                    
  cfd454: ret                                             

===== LoginMediator$$get_chatData @ 0xcfcfa8 (112 bytes)
  cfcfa8: stp    x20, x19, [sp, #-0x20]!                  
  cfcfac: stp    x29, x30, [sp, #0x10]                    
  cfcfb0: add    x29, sp, #0x10                           
  cfcfb4: adrp   x20, #0x31cc000                          
  cfcfb8: ldrb   w8, [x20, #0x7c8]                        
  cfcfbc: mov    x19, x0                                  
  cfcfc0: tbnz   w8, #0, #0xcfcfdc                        
  cfcfc4: adrp   x8, #0x2fe6000                           
  cfcfc8: ldr    x8, [x8, #0xa0]                          
  cfcfcc: ldr    w0, [x8]                                 
  cfcfd0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcfd4: mov    w8, #1                                   
  cfcfd8: strb   w8, [x20, #0x7c8]                        
  cfcfdc: adrp   x8, #0x3063000                           
  cfcfe0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcfe4: ldr    x8, [x8]                                 
  cfcfe8: ldr    x8, [x8, #0xb8]                          
  cfcfec: ldr    x0, [x8, #0x38]                          
  cfcff0: cbz    x0, #0xcfd008                            
  cfcff4: ldp    x29, x30, [sp, #0x10]                    
  cfcff8: mov    x1, x19                                  
  cfcffc: mov    x2, xzr                                  
  cfd000: ldp    x20, x19, [sp], #0x20                    
  cfd004: b      #0xc9f8a4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp57
  cfd008: ldr    x0, [x19, #0x40]                         
  cfd00c: ldp    x29, x30, [sp, #0x10]                    
  cfd010: ldp    x20, x19, [sp], #0x20                    
  cfd014: ret                                             

===== LoginMediator$$get_childrenData @ 0xcfdee8 (112 bytes)
  cfdee8: stp    x20, x19, [sp, #-0x20]!                  
  cfdeec: stp    x29, x30, [sp, #0x10]                    
  cfdef0: add    x29, sp, #0x10                           
  cfdef4: adrp   x20, #0x31cc000                          
  cfdef8: ldrb   w8, [x20, #0x7e8]                        
  cfdefc: mov    x19, x0                                  
  cfdf00: tbnz   w8, #0, #0xcfdf1c                        
  cfdf04: adrp   x8, #0x3027000                           
  cfdf08: ldr    x8, [x8, #0x968]                         
  cfdf0c: ldr    w0, [x8]                                 
  cfdf10: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdf14: mov    w8, #1                                   
  cfdf18: strb   w8, [x20, #0x7e8]                        
  cfdf1c: adrp   x8, #0x3063000                           
  cfdf20: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdf24: ldr    x8, [x8]                                 
  cfdf28: ldr    x8, [x8, #0xb8]                          
  cfdf2c: ldr    x0, [x8, #0x138]                         
  cfdf30: cbz    x0, #0xcfdf48                            
  cfdf34: ldp    x29, x30, [sp, #0x10]                    
  cfdf38: mov    x1, x19                                  
  cfdf3c: mov    x2, xzr                                  
  cfdf40: ldp    x20, x19, [sp], #0x20                    
  cfdf44: b      #0xca2124                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp73
  cfdf48: ldr    x0, [x19, #0xc0]                         
  cfdf4c: ldp    x29, x30, [sp, #0x10]                    
  cfdf50: ldp    x20, x19, [sp], #0x20                    
  cfdf54: ret                                             

===== LoginMediator$$get_crystalOreData @ 0xcfe41c (112 bytes)
  cfe41c: stp    x20, x19, [sp, #-0x20]!                  
  cfe420: stp    x29, x30, [sp, #0x10]                    
  cfe424: add    x29, sp, #0x10                           
  cfe428: adrp   x20, #0x31cc000                          
  cfe42c: ldrb   w8, [x20, #0x7f3]                        
  cfe430: mov    x19, x0                                  
  cfe434: tbnz   w8, #0, #0xcfe450                        
  cfe438: adrp   x8, #0x3029000                           
  cfe43c: ldr    x8, [x8, #0x7b0]                         
  cfe440: ldr    w0, [x8]                                 
  cfe444: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe448: mov    w8, #1                                   
  cfe44c: strb   w8, [x20, #0x7f3]                        
  cfe450: adrp   x8, #0x3063000                           
  cfe454: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe458: ldr    x8, [x8]                                 
  cfe45c: ldr    x8, [x8, #0xb8]                          
  cfe460: ldr    x0, [x8, #0x190]                         
  cfe464: cbz    x0, #0xcfe47c                            
  cfe468: ldp    x29, x30, [sp, #0x10]                    
  cfe46c: mov    x1, x19                                  
  cfe470: mov    x2, xzr                                  
  cfe474: ldp    x20, x19, [sp], #0x20                    
  cfe478: b      #0xca3054                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp79
  cfe47c: ldr    x0, [x19, #0xf0]                         
  cfe480: ldp    x29, x30, [sp, #0x10]                    
  cfe484: ldp    x20, x19, [sp], #0x20                    
  cfe488: ret                                             

===== LoginMediator$$get_cursadesData @ 0xcfd6c4 (112 bytes)
  cfd6c4: stp    x20, x19, [sp, #-0x20]!                  
  cfd6c8: stp    x29, x30, [sp, #0x10]                    
  cfd6cc: add    x29, sp, #0x10                           
  cfd6d0: adrp   x20, #0x31cc000                          
  cfd6d4: ldrb   w8, [x20, #0x7d7]                        
  cfd6d8: mov    x19, x0                                  
  cfd6dc: tbnz   w8, #0, #0xcfd6f8                        
  cfd6e0: adrp   x8, #0x3051000                           
  cfd6e4: ldr    x8, [x8, #0x188]                         
  cfd6e8: ldr    w0, [x8]                                 
  cfd6ec: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd6f0: mov    w8, #1                                   
  cfd6f4: strb   w8, [x20, #0x7d7]                        
  cfd6f8: adrp   x8, #0x3063000                           
  cfd6fc: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd700: ldr    x8, [x8]                                 
  cfd704: ldr    x8, [x8, #0xb8]                          
  cfd708: ldr    x0, [x8, #0xb0]                          
  cfd70c: cbz    x0, #0xcfd724                            
  cfd710: ldp    x29, x30, [sp, #0x10]                    
  cfd714: mov    x1, x19                                  
  cfd718: mov    x2, xzr                                  
  cfd71c: ldp    x20, x19, [sp], #0x20                    
  cfd720: b      #0xca0ce4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp65
  cfd724: ldr    x0, [x19, #0x80]                         
  cfd728: ldp    x29, x30, [sp, #0x10]                    
  cfd72c: ldp    x20, x19, [sp], #0x20                    
  cfd730: ret                                             

===== LoginMediator$$get_friendData @ 0xcfda94 (112 bytes)
  cfda94: stp    x20, x19, [sp, #-0x20]!                  
  cfda98: stp    x29, x30, [sp, #0x10]                    
  cfda9c: add    x29, sp, #0x10                           
  cfdaa0: adrp   x20, #0x31cc000                          
  cfdaa4: ldrb   w8, [x20, #0x7df]                        
  cfdaa8: mov    x19, x0                                  
  cfdaac: tbnz   w8, #0, #0xcfdac8                        
  cfdab0: adrp   x8, #0x2fe7000                           
  cfdab4: ldr    x8, [x8, #0x770]                         
  cfdab8: ldr    w0, [x8]                                 
  cfdabc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdac0: mov    w8, #1                                   
  cfdac4: strb   w8, [x20, #0x7df]                        
  cfdac8: adrp   x8, #0x3063000                           
  cfdacc: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdad0: ldr    x8, [x8]                                 
  cfdad4: ldr    x8, [x8, #0xb8]                          
  cfdad8: ldr    x0, [x8, #0xf0]                          
  cfdadc: cbz    x0, #0xcfdaf4                            
  cfdae0: ldp    x29, x30, [sp, #0x10]                    
  cfdae4: mov    x1, x19                                  
  cfdae8: mov    x2, xzr                                  
  cfdaec: ldp    x20, x19, [sp], #0x20                    
  cfdaf0: b      #0xca1704                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp69
  cfdaf4: ldr    x0, [x19, #0xa0]                         
  cfdaf8: ldp    x29, x30, [sp, #0x10]                    
  cfdafc: ldp    x20, x19, [sp], #0x20                    
  cfdb00: ret                                             

===== LoginMediator$$get_geneData @ 0xcfdc7c (112 bytes)
  cfdc7c: stp    x20, x19, [sp, #-0x20]!                  
  cfdc80: stp    x29, x30, [sp, #0x10]                    
  cfdc84: add    x29, sp, #0x10                           
  cfdc88: adrp   x20, #0x31cc000                          
  cfdc8c: ldrb   w8, [x20, #0x7e3]                        
  cfdc90: mov    x19, x0                                  
  cfdc94: tbnz   w8, #0, #0xcfdcb0                        
  cfdc98: adrp   x8, #0x301b000                           
  cfdc9c: ldr    x8, [x8, #0xa10]                         
  cfdca0: ldr    w0, [x8]                                 
  cfdca4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdca8: mov    w8, #1                                   
  cfdcac: strb   w8, [x20, #0x7e3]                        
  cfdcb0: adrp   x8, #0x3063000                           
  cfdcb4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdcb8: ldr    x8, [x8]                                 
  cfdcbc: ldr    x8, [x8, #0xb8]                          
  cfdcc0: ldr    x0, [x8, #0x110]                         
  cfdcc4: cbz    x0, #0xcfdcdc                            
  cfdcc8: ldp    x29, x30, [sp, #0x10]                    
  cfdccc: mov    x1, x19                                  
  cfdcd0: mov    x2, xzr                                  
  cfdcd4: ldp    x20, x19, [sp], #0x20                    
  cfdcd8: b      #0xca1c14                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp71
  cfdcdc: ldr    x0, [x19, #0xb0]                         
  cfdce0: ldp    x29, x30, [sp, #0x10]                    
  cfdce4: ldp    x20, x19, [sp], #0x20                    
  cfdce8: ret                                             

===== LoginMediator$$get_guideData @ 0xcfd200 (112 bytes)
  cfd200: stp    x20, x19, [sp, #-0x20]!                  
  cfd204: stp    x29, x30, [sp, #0x10]                    
  cfd208: add    x29, sp, #0x10                           
  cfd20c: adrp   x20, #0x31cc000                          
  cfd210: ldrb   w8, [x20, #0x7cd]                        
  cfd214: mov    x19, x0                                  
  cfd218: tbnz   w8, #0, #0xcfd234                        
  cfd21c: adrp   x8, #0x3002000                           
  cfd220: ldr    x8, [x8, #0x220]                         
  cfd224: ldr    w0, [x8]                                 
  cfd228: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd22c: mov    w8, #1                                   
  cfd230: strb   w8, [x20, #0x7cd]                        
  cfd234: adrp   x8, #0x3063000                           
  cfd238: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd23c: ldr    x8, [x8]                                 
  cfd240: ldr    x8, [x8, #0xb8]                          
  cfd244: ldr    x0, [x8, #0x60]                          
  cfd248: cbz    x0, #0xcfd260                            
  cfd24c: ldp    x29, x30, [sp, #0x10]                    
  cfd250: mov    x1, x19                                  
  cfd254: mov    x2, xzr                                  
  cfd258: ldp    x20, x19, [sp], #0x20                    
  cfd25c: b      #0xca003c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp60
  cfd260: ldr    x0, [x19, #0x58]                         
  cfd264: ldp    x29, x30, [sp, #0x10]                    
  cfd268: ldp    x20, x19, [sp], #0x20                    
  cfd26c: ret                                             

===== LoginMediator$$get_guildBattleData @ 0xcfe234 (112 bytes)
  cfe234: stp    x20, x19, [sp, #-0x20]!                  
  cfe238: stp    x29, x30, [sp, #0x10]                    
  cfe23c: add    x29, sp, #0x10                           
  cfe240: adrp   x20, #0x31cc000                          
  cfe244: ldrb   w8, [x20, #0x7ef]                        
  cfe248: mov    x19, x0                                  
  cfe24c: tbnz   w8, #0, #0xcfe268                        
  cfe250: adrp   x8, #0x2fde000                           
  cfe254: ldr    x8, [x8, #0x338]                         
  cfe258: ldr    w0, [x8]                                 
  cfe25c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe260: mov    w8, #1                                   
  cfe264: strb   w8, [x20, #0x7ef]                        
  cfe268: adrp   x8, #0x3063000                           
  cfe26c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe270: ldr    x8, [x8]                                 
  cfe274: ldr    x8, [x8, #0xb8]                          
  cfe278: ldr    x0, [x8, #0x170]                         
  cfe27c: cbz    x0, #0xcfe294                            
  cfe280: ldp    x29, x30, [sp, #0x10]                    
  cfe284: mov    x1, x19                                  
  cfe288: mov    x2, xzr                                  
  cfe28c: ldp    x20, x19, [sp], #0x20                    
  cfe290: b      #0xca2b44                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp77
  cfe294: ldr    x0, [x19, #0xe0]                         
  cfe298: ldp    x29, x30, [sp, #0x10]                    
  cfe29c: ldp    x20, x19, [sp], #0x20                    
  cfe2a0: ret                                             

===== LoginMediator$$get_guildData @ 0xcfd09c (112 bytes)
  cfd09c: stp    x20, x19, [sp, #-0x20]!                  
  cfd0a0: stp    x29, x30, [sp, #0x10]                    
  cfd0a4: add    x29, sp, #0x10                           
  cfd0a8: adrp   x20, #0x31cc000                          
  cfd0ac: ldrb   w8, [x20, #0x7ca]                        
  cfd0b0: mov    x19, x0                                  
  cfd0b4: tbnz   w8, #0, #0xcfd0d0                        
  cfd0b8: adrp   x8, #0x2ff2000                           
  cfd0bc: ldr    x8, [x8, #0x5c0]                         
  cfd0c0: ldr    w0, [x8]                                 
  cfd0c4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd0c8: mov    w8, #1                                   
  cfd0cc: strb   w8, [x20, #0x7ca]                        
  cfd0d0: adrp   x8, #0x3063000                           
  cfd0d4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd0d8: ldr    x8, [x8]                                 
  cfd0dc: ldr    x8, [x8, #0xb8]                          
  cfd0e0: ldr    x0, [x8, #0x48]                          
  cfd0e4: cbz    x0, #0xcfd0fc                            
  cfd0e8: ldp    x29, x30, [sp, #0x10]                    
  cfd0ec: mov    x1, x19                                  
  cfd0f0: mov    x2, xzr                                  
  cfd0f4: ldp    x20, x19, [sp], #0x20                    
  cfd0f8: b      #0xc9fb2c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp58
  cfd0fc: ldr    x0, [x19, #0x48]                         
  cfd100: ldp    x29, x30, [sp, #0x10]                    
  cfd104: ldp    x20, x19, [sp], #0x20                    
  cfd108: ret                                             

===== LoginMediator$$get_mailData @ 0xcfd10c (112 bytes)
  cfd10c: stp    x20, x19, [sp, #-0x20]!                  
  cfd110: stp    x29, x30, [sp, #0x10]                    
  cfd114: add    x29, sp, #0x10                           
  cfd118: adrp   x20, #0x31cc000                          
  cfd11c: ldrb   w8, [x20, #0x7cb]                        
  cfd120: mov    x19, x0                                  
  cfd124: tbnz   w8, #0, #0xcfd140                        
  cfd128: adrp   x8, #0x301d000                           
  cfd12c: ldr    x8, [x8, #0xac8]                         
  cfd130: ldr    w0, [x8]                                 
  cfd134: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd138: mov    w8, #1                                   
  cfd13c: strb   w8, [x20, #0x7cb]                        
  cfd140: adrp   x8, #0x3063000                           
  cfd144: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd148: ldr    x8, [x8]                                 
  cfd14c: ldr    x8, [x8, #0xb8]                          
  cfd150: ldr    x0, [x8, #0x50]                          
  cfd154: cbz    x0, #0xcfd16c                            
  cfd158: ldp    x29, x30, [sp, #0x10]                    
  cfd15c: mov    x1, x19                                  
  cfd160: mov    x2, xzr                                  
  cfd164: ldp    x20, x19, [sp], #0x20                    
  cfd168: b      #0xc9fdb4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp59
  cfd16c: ldr    x0, [x19, #0x50]                         
  cfd170: ldp    x29, x30, [sp, #0x10]                    
  cfd174: ldp    x20, x19, [sp], #0x20                    
  cfd178: ret                                             

===== LoginMediator$$get_materialData @ 0xcfdb88 (112 bytes)
  cfdb88: stp    x20, x19, [sp, #-0x20]!                  
  cfdb8c: stp    x29, x30, [sp, #0x10]                    
  cfdb90: add    x29, sp, #0x10                           
  cfdb94: adrp   x20, #0x31cc000                          
  cfdb98: ldrb   w8, [x20, #0x7e1]                        
  cfdb9c: mov    x19, x0                                  
  cfdba0: tbnz   w8, #0, #0xcfdbbc                        
  cfdba4: adrp   x8, #0x3076000                           
  cfdba8: ldr    x8, [x8, #0x680]                         
  cfdbac: ldr    w0, [x8]                                 
  cfdbb0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdbb4: mov    w8, #1                                   
  cfdbb8: strb   w8, [x20, #0x7e1]                        
  cfdbbc: adrp   x8, #0x3063000                           
  cfdbc0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdbc4: ldr    x8, [x8]                                 
  cfdbc8: ldr    x8, [x8, #0xb8]                          
  cfdbcc: ldr    x0, [x8, #0x100]                         
  cfdbd0: cbz    x0, #0xcfdbe8                            
  cfdbd4: ldp    x29, x30, [sp, #0x10]                    
  cfdbd8: mov    x1, x19                                  
  cfdbdc: mov    x2, xzr                                  
  cfdbe0: ldp    x20, x19, [sp], #0x20                    
  cfdbe4: b      #0xca198c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp70
  cfdbe8: ldr    x0, [x19, #0xa8]                         
  cfdbec: ldp    x29, x30, [sp, #0x10]                    
  cfdbf0: ldp    x20, x19, [sp], #0x20                    
  cfdbf4: ret                                             

===== LoginMediator$$get_mechaData @ 0xcfddf4 (112 bytes)
  cfddf4: stp    x20, x19, [sp, #-0x20]!                  
  cfddf8: stp    x29, x30, [sp, #0x10]                    
  cfddfc: add    x29, sp, #0x10                           
  cfde00: adrp   x20, #0x31cc000                          
  cfde04: ldrb   w8, [x20, #0x7e6]                        
  cfde08: mov    x19, x0                                  
  cfde0c: tbnz   w8, #0, #0xcfde28                        
  cfde10: adrp   x8, #0x2fd9000                           
  cfde14: ldr    x8, [x8, #0x10]                          
  cfde18: ldr    w0, [x8]                                 
  cfde1c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfde20: mov    w8, #1                                   
  cfde24: strb   w8, [x20, #0x7e6]                        
  cfde28: adrp   x8, #0x3063000                           
  cfde2c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfde30: ldr    x8, [x8]                                 
  cfde34: ldr    x8, [x8, #0xb8]                          
  cfde38: ldr    x0, [x8, #0x128]                         
  cfde3c: cbz    x0, #0xcfde54                            
  cfde40: ldp    x29, x30, [sp, #0x10]                    
  cfde44: mov    x1, x19                                  
  cfde48: mov    x2, xzr                                  
  cfde4c: ldp    x20, x19, [sp], #0x20                    
  cfde50: b      #0xca1e9c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp72
  cfde54: ldr    x0, [x19, #0xb8]                         
  cfde58: ldp    x29, x30, [sp, #0x10]                    
  cfde5c: ldp    x20, x19, [sp], #0x20                    
  cfde60: ret                                             

===== LoginMediator$$get_netDispatcher @ 0xcfe964 (112 bytes)
  cfe964: stp    x20, x19, [sp, #-0x20]!                  
  cfe968: stp    x29, x30, [sp, #0x10]                    
  cfe96c: add    x29, sp, #0x10                           
  cfe970: adrp   x20, #0x31cc000                          
  cfe974: ldrb   w8, [x20, #0x7fe]                        
  cfe978: mov    x19, x0                                  
  cfe97c: tbnz   w8, #0, #0xcfe998                        
  cfe980: adrp   x8, #0x2ff4000                           
  cfe984: ldr    x8, [x8, #0x628]                         
  cfe988: ldr    w0, [x8]                                 
  cfe98c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe990: mov    w8, #1                                   
  cfe994: strb   w8, [x20, #0x7fe]                        
  cfe998: adrp   x8, #0x3063000                           
  cfe99c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe9a0: ldr    x8, [x8]                                 
  cfe9a4: ldr    x8, [x8, #0xb8]                          
  cfe9a8: ldr    x0, [x8, #0x1e8]                         
  cfe9ac: cbz    x0, #0xcfe9c4                            
  cfe9b0: ldp    x29, x30, [sp, #0x10]                    
  cfe9b4: mov    x1, x19                                  
  cfe9b8: mov    x2, xzr                                  
  cfe9bc: ldp    x20, x19, [sp], #0x20                    
  cfe9c0: b      #0xca3cfc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp84
  cfe9c4: ldr    x0, [x19, #0x118]                        
  cfe9c8: ldp    x29, x30, [sp, #0x10]                    
  cfe9cc: ldp    x20, x19, [sp], #0x20                    
  cfe9d0: ret                                             

===== LoginMediator$$get_noticeData @ 0xcfcdc0 (112 bytes)
  cfcdc0: stp    x20, x19, [sp, #-0x20]!                  
  cfcdc4: stp    x29, x30, [sp, #0x10]                    
  cfcdc8: add    x29, sp, #0x10                           
  cfcdcc: adrp   x20, #0x31cc000                          
  cfcdd0: ldrb   w8, [x20, #0x7c4]                        
  cfcdd4: mov    x19, x0                                  
  cfcdd8: tbnz   w8, #0, #0xcfcdf4                        
  cfcddc: adrp   x8, #0x3051000                           
  cfcde0: ldr    x8, [x8, #0xca0]                         
  cfcde4: ldr    w0, [x8]                                 
  cfcde8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcdec: mov    w8, #1                                   
  cfcdf0: strb   w8, [x20, #0x7c4]                        
  cfcdf4: adrp   x8, #0x3063000                           
  cfcdf8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcdfc: ldr    x8, [x8]                                 
  cfce00: ldr    x8, [x8, #0xb8]                          
  cfce04: ldr    x0, [x8, #0x18]                          
  cfce08: cbz    x0, #0xcfce20                            
  cfce0c: ldp    x29, x30, [sp, #0x10]                    
  cfce10: mov    x1, x19                                  
  cfce14: mov    x2, xzr                                  
  cfce18: ldp    x20, x19, [sp], #0x20                    
  cfce1c: b      #0xc9f394                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp55
  cfce20: ldr    x0, [x19, #0x30]                         
  cfce24: ldp    x29, x30, [sp, #0x10]                    
  cfce28: ldp    x20, x19, [sp], #0x20                    
  cfce2c: ret                                             

===== LoginMediator$$get_peakVsData @ 0xcfe328 (112 bytes)
  cfe328: stp    x20, x19, [sp, #-0x20]!                  
  cfe32c: stp    x29, x30, [sp, #0x10]                    
  cfe330: add    x29, sp, #0x10                           
  cfe334: adrp   x20, #0x31cc000                          
  cfe338: ldrb   w8, [x20, #0x7f1]                        
  cfe33c: mov    x19, x0                                  
  cfe340: tbnz   w8, #0, #0xcfe35c                        
  cfe344: adrp   x8, #0x3043000                           
  cfe348: ldr    x8, [x8, #0x770]                         
  cfe34c: ldr    w0, [x8]                                 
  cfe350: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe354: mov    w8, #1                                   
  cfe358: strb   w8, [x20, #0x7f1]                        
  cfe35c: adrp   x8, #0x3063000                           
  cfe360: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe364: ldr    x8, [x8]                                 
  cfe368: ldr    x8, [x8, #0xb8]                          
  cfe36c: ldr    x0, [x8, #0x180]                         
  cfe370: cbz    x0, #0xcfe388                            
  cfe374: ldp    x29, x30, [sp, #0x10]                    
  cfe378: mov    x1, x19                                  
  cfe37c: mov    x2, xzr                                  
  cfe380: ldp    x20, x19, [sp], #0x20                    
  cfe384: b      #0xca2dcc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp78
  cfe388: ldr    x0, [x19, #0xe8]                         
  cfe38c: ldp    x29, x30, [sp, #0x10]                    
  cfe390: ldp    x20, x19, [sp], #0x20                    
  cfe394: ret                                             

===== LoginMediator$$get_playerData @ 0xcfceb4 (112 bytes)
  cfceb4: stp    x20, x19, [sp, #-0x20]!                  
  cfceb8: stp    x29, x30, [sp, #0x10]                    
  cfcebc: add    x29, sp, #0x10                           
  cfcec0: adrp   x20, #0x31cc000                          
  cfcec4: ldrb   w8, [x20, #0x7c6]                        
  cfcec8: mov    x19, x0                                  
  cfcecc: tbnz   w8, #0, #0xcfcee8                        
  cfced0: adrp   x8, #0x306e000                           
  cfced4: ldr    x8, [x8, #0x260]                         
  cfced8: ldr    w0, [x8]                                 
  cfcedc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcee0: mov    w8, #1                                   
  cfcee4: strb   w8, [x20, #0x7c6]                        
  cfcee8: adrp   x8, #0x3063000                           
  cfceec: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcef0: ldr    x8, [x8]                                 
  cfcef4: ldr    x8, [x8, #0xb8]                          
  cfcef8: ldr    x0, [x8, #0x28]                          
  cfcefc: cbz    x0, #0xcfcf14                            
  cfcf00: ldp    x29, x30, [sp, #0x10]                    
  cfcf04: mov    x1, x19                                  
  cfcf08: mov    x2, xzr                                  
  cfcf0c: ldp    x20, x19, [sp], #0x20                    
  cfcf10: b      #0xc9f61c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp56
  cfcf14: ldr    x0, [x19, #0x38]                         
  cfcf18: ldp    x29, x30, [sp, #0x10]                    
  cfcf1c: ldp    x20, x19, [sp], #0x20                    
  cfcf20: ret                                             

===== LoginMediator$$get_pointMatch @ 0xcfd5d0 (112 bytes)
  cfd5d0: stp    x20, x19, [sp, #-0x20]!                  
  cfd5d4: stp    x29, x30, [sp, #0x10]                    
  cfd5d8: add    x29, sp, #0x10                           
  cfd5dc: adrp   x20, #0x31cc000                          
  cfd5e0: ldrb   w8, [x20, #0x7d5]                        
  cfd5e4: mov    x19, x0                                  
  cfd5e8: tbnz   w8, #0, #0xcfd604                        
  cfd5ec: adrp   x8, #0x304c000                           
  cfd5f0: ldr    x8, [x8, #0x6f8]                         
  cfd5f4: ldr    w0, [x8]                                 
  cfd5f8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd5fc: mov    w8, #1                                   
  cfd600: strb   w8, [x20, #0x7d5]                        
  cfd604: adrp   x8, #0x3063000                           
  cfd608: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd60c: ldr    x8, [x8]                                 
  cfd610: ldr    x8, [x8, #0xb8]                          
  cfd614: ldr    x0, [x8, #0xa0]                          
  cfd618: cbz    x0, #0xcfd630                            
  cfd61c: ldp    x29, x30, [sp, #0x10]                    
  cfd620: mov    x1, x19                                  
  cfd624: mov    x2, xzr                                  
  cfd628: ldp    x20, x19, [sp], #0x20                    
  cfd62c: b      #0xca0a5c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp64
  cfd630: ldr    x0, [x19, #0x78]                         
  cfd634: ldp    x29, x30, [sp, #0x10]                    
  cfd638: ldp    x20, x19, [sp], #0x20                    
  cfd63c: ret                                             

===== LoginMediator$$get_pvpData @ 0xcfe140 (112 bytes)
  cfe140: stp    x20, x19, [sp, #-0x20]!                  
  cfe144: stp    x29, x30, [sp, #0x10]                    
  cfe148: add    x29, sp, #0x10                           
  cfe14c: adrp   x20, #0x31cc000                          
  cfe150: ldrb   w8, [x20, #0x7ed]                        
  cfe154: mov    x19, x0                                  
  cfe158: tbnz   w8, #0, #0xcfe174                        
  cfe15c: adrp   x8, #0x3006000                           
  cfe160: ldr    x8, [x8, #0x5b0]                         
  cfe164: ldr    w0, [x8]                                 
  cfe168: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe16c: mov    w8, #1                                   
  cfe170: strb   w8, [x20, #0x7ed]                        
  cfe174: adrp   x8, #0x3063000                           
  cfe178: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe17c: ldr    x8, [x8]                                 
  cfe180: ldr    x8, [x8, #0xb8]                          
  cfe184: ldr    x0, [x8, #0x160]                         
  cfe188: cbz    x0, #0xcfe1a0                            
  cfe18c: ldp    x29, x30, [sp, #0x10]                    
  cfe190: mov    x1, x19                                  
  cfe194: mov    x2, xzr                                  
  cfe198: ldp    x20, x19, [sp], #0x20                    
  cfe19c: b      #0xca28bc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp76
  cfe1a0: ldr    x0, [x19, #0xd8]                         
  cfe1a4: ldp    x29, x30, [sp, #0x10]                    
  cfe1a8: ldp    x20, x19, [sp], #0x20                    
  cfe1ac: ret                                             

===== LoginMediator$$get_recruitData @ 0xcfe7ec (112 bytes)
  cfe7ec: stp    x20, x19, [sp, #-0x20]!                  
  cfe7f0: stp    x29, x30, [sp, #0x10]                    
  cfe7f4: add    x29, sp, #0x10                           
  cfe7f8: adrp   x20, #0x31cc000                          
  cfe7fc: ldrb   w8, [x20, #0x7fb]                        
  cfe800: mov    x19, x0                                  
  cfe804: tbnz   w8, #0, #0xcfe820                        
  cfe808: adrp   x8, #0x2fdc000                           
  cfe80c: ldr    x8, [x8, #0xa00]                         
  cfe810: ldr    w0, [x8]                                 
  cfe814: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe818: mov    w8, #1                                   
  cfe81c: strb   w8, [x20, #0x7fb]                        
  cfe820: adrp   x8, #0x3063000                           
  cfe824: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe828: ldr    x8, [x8]                                 
  cfe82c: ldr    x8, [x8, #0xb8]                          
  cfe830: ldr    x0, [x8, #0x1d0]                         
  cfe834: cbz    x0, #0xcfe84c                            
  cfe838: ldp    x29, x30, [sp, #0x10]                    
  cfe83c: mov    x1, x19                                  
  cfe840: mov    x2, xzr                                  
  cfe844: ldp    x20, x19, [sp], #0x20                    
  cfe848: b      #0xca3a74                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp83
  cfe84c: ldr    x0, [x19, #0x110]                        
  cfe850: ldp    x29, x30, [sp, #0x10]                    
  cfe854: ldp    x20, x19, [sp], #0x20                    
  cfe858: ret                                             

===== LoginMediator$$get_supplyData @ 0xcfd8ac (112 bytes)
  cfd8ac: stp    x20, x19, [sp, #-0x20]!                  
  cfd8b0: stp    x29, x30, [sp, #0x10]                    
  cfd8b4: add    x29, sp, #0x10                           
  cfd8b8: adrp   x20, #0x31cc000                          
  cfd8bc: ldrb   w8, [x20, #0x7db]                        
  cfd8c0: mov    x19, x0                                  
  cfd8c4: tbnz   w8, #0, #0xcfd8e0                        
  cfd8c8: adrp   x8, #0x3048000                           
  cfd8cc: ldr    x8, [x8, #0x958]                         
  cfd8d0: ldr    w0, [x8]                                 
  cfd8d4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd8d8: mov    w8, #1                                   
  cfd8dc: strb   w8, [x20, #0x7db]                        
  cfd8e0: adrp   x8, #0x3063000                           
  cfd8e4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd8e8: ldr    x8, [x8]                                 
  cfd8ec: ldr    x8, [x8, #0xb8]                          
  cfd8f0: ldr    x0, [x8, #0xd0]                          
  cfd8f4: cbz    x0, #0xcfd90c                            
  cfd8f8: ldp    x29, x30, [sp, #0x10]                    
  cfd8fc: mov    x1, x19                                  
  cfd900: mov    x2, xzr                                  
  cfd904: ldp    x20, x19, [sp], #0x20                    
  cfd908: b      #0xca11f4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp67
  cfd90c: ldr    x0, [x19, #0x90]                         
  cfd910: ldp    x29, x30, [sp, #0x10]                    
  cfd914: ldp    x20, x19, [sp], #0x20                    
  cfd918: ret                                             

===== LoginMediator$$get_tbData @ 0xcfe6f8 (112 bytes)
  cfe6f8: stp    x20, x19, [sp, #-0x20]!                  
  cfe6fc: stp    x29, x30, [sp, #0x10]                    
  cfe700: add    x29, sp, #0x10                           
  cfe704: adrp   x20, #0x31cc000                          
  cfe708: ldrb   w8, [x20, #0x7f9]                        
  cfe70c: mov    x19, x0                                  
  cfe710: tbnz   w8, #0, #0xcfe72c                        
  cfe714: adrp   x8, #0x3001000                           
  cfe718: ldr    x8, [x8, #0xce8]                         
  cfe71c: ldr    w0, [x8]                                 
  cfe720: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe724: mov    w8, #1                                   
  cfe728: strb   w8, [x20, #0x7f9]                        
  cfe72c: adrp   x8, #0x3063000                           
  cfe730: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe734: ldr    x8, [x8]                                 
  cfe738: ldr    x8, [x8, #0xb8]                          
  cfe73c: ldr    x0, [x8, #0x1c0]                         
  cfe740: cbz    x0, #0xcfe758                            
  cfe744: ldp    x29, x30, [sp, #0x10]                    
  cfe748: mov    x1, x19                                  
  cfe74c: mov    x2, xzr                                  
  cfe750: ldp    x20, x19, [sp], #0x20                    
  cfe754: b      #0xca37ec                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp82
  cfe758: ldr    x0, [x19, #0x108]                        
  cfe75c: ldp    x29, x30, [sp, #0x10]                    
  cfe760: ldp    x20, x19, [sp], #0x20                    
  cfe764: ret                                             

===== LoginMediator$$get_teamRaidData @ 0xcfd9a0 (112 bytes)
  cfd9a0: stp    x20, x19, [sp, #-0x20]!                  
  cfd9a4: stp    x29, x30, [sp, #0x10]                    
  cfd9a8: add    x29, sp, #0x10                           
  cfd9ac: adrp   x20, #0x31cc000                          
  cfd9b0: ldrb   w8, [x20, #0x7dd]                        
  cfd9b4: mov    x19, x0                                  
  cfd9b8: tbnz   w8, #0, #0xcfd9d4                        
  cfd9bc: adrp   x8, #0x306c000                           
  cfd9c0: ldr    x8, [x8, #0xf40]                         
  cfd9c4: ldr    w0, [x8]                                 
  cfd9c8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd9cc: mov    w8, #1                                   
  cfd9d0: strb   w8, [x20, #0x7dd]                        
  cfd9d4: adrp   x8, #0x3063000                           
  cfd9d8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd9dc: ldr    x8, [x8]                                 
  cfd9e0: ldr    x8, [x8, #0xb8]                          
  cfd9e4: ldr    x0, [x8, #0xe0]                          
  cfd9e8: cbz    x0, #0xcfda00                            
  cfd9ec: ldp    x29, x30, [sp, #0x10]                    
  cfd9f0: mov    x1, x19                                  
  cfd9f4: mov    x2, xzr                                  
  cfd9f8: ldp    x20, x19, [sp], #0x20                    
  cfd9fc: b      #0xca147c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp68
  cfda00: ldr    x0, [x19, #0x98]                         
  cfda04: ldp    x29, x30, [sp, #0x10]                    
  cfda08: ldp    x20, x19, [sp], #0x20                    
  cfda0c: ret                                             

===== LoginMediator$$get_towerUpdate @ 0xcfd7b8 (112 bytes)
  cfd7b8: stp    x20, x19, [sp, #-0x20]!                  
  cfd7bc: stp    x29, x30, [sp, #0x10]                    
  cfd7c0: add    x29, sp, #0x10                           
  cfd7c4: adrp   x20, #0x31cc000                          
  cfd7c8: ldrb   w8, [x20, #0x7d9]                        
  cfd7cc: mov    x19, x0                                  
  cfd7d0: tbnz   w8, #0, #0xcfd7ec                        
  cfd7d4: adrp   x8, #0x2fd5000                           
  cfd7d8: ldr    x8, [x8, #0x788]                         
  cfd7dc: ldr    w0, [x8]                                 
  cfd7e0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd7e4: mov    w8, #1                                   
  cfd7e8: strb   w8, [x20, #0x7d9]                        
  cfd7ec: adrp   x8, #0x3063000                           
  cfd7f0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd7f4: ldr    x8, [x8]                                 
  cfd7f8: ldr    x8, [x8, #0xb8]                          
  cfd7fc: ldr    x0, [x8, #0xc0]                          
  cfd800: cbz    x0, #0xcfd818                            
  cfd804: ldp    x29, x30, [sp, #0x10]                    
  cfd808: mov    x1, x19                                  
  cfd80c: mov    x2, xzr                                  
  cfd810: ldp    x20, x19, [sp], #0x20                    
  cfd814: b      #0xca0f6c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp66
  cfd818: ldr    x0, [x19, #0x88]                         
  cfd81c: ldp    x29, x30, [sp, #0x10]                    
  cfd820: ldp    x20, x19, [sp], #0x20                    
  cfd824: ret                                             

===== LoginMediator$$get_view @ 0xcfcccc (112 bytes)
  cfcccc: stp    x20, x19, [sp, #-0x20]!                  
  cfccd0: stp    x29, x30, [sp, #0x10]                    
  cfccd4: add    x29, sp, #0x10                           
  cfccd8: adrp   x20, #0x31cc000                          
  cfccdc: ldrb   w8, [x20, #0x7c2]                        
  cfcce0: mov    x19, x0                                  
  cfcce4: tbnz   w8, #0, #0xcfcd00                        
  cfcce8: adrp   x8, #0x2ff4000                           
  cfccec: ldr    x8, [x8, #0x5f8]                         
  cfccf0: ldr    w0, [x8]                                 
  cfccf4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfccf8: mov    w8, #1                                   
  cfccfc: strb   w8, [x20, #0x7c2]                        
  cfcd00: adrp   x8, #0x3063000                           
  cfcd04: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcd08: ldr    x8, [x8]                                 
  cfcd0c: ldr    x8, [x8, #0xb8]                          
  cfcd10: ldr    x0, [x8, #8]                             
  cfcd14: cbz    x0, #0xcfcd2c                            
  cfcd18: ldp    x29, x30, [sp, #0x10]                    
  cfcd1c: mov    x1, x19                                  
  cfcd20: mov    x2, xzr                                  
  cfcd24: ldp    x20, x19, [sp], #0x20                    
  cfcd28: b      #0xc9f10c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp54
  cfcd2c: ldr    x0, [x19, #0x28]                         
  cfcd30: ldp    x29, x30, [sp, #0x10]                    
  cfcd34: ldp    x20, x19, [sp], #0x20                    
  cfcd38: ret                                             

===== LoginMediator$$set_activeSevenData @ 0xcfe674 (132 bytes)
  cfe674: str    x21, [sp, #-0x30]!                       
  cfe678: stp    x20, x19, [sp, #0x10]                    
  cfe67c: stp    x29, x30, [sp, #0x20]                    
  cfe680: add    x29, sp, #0x20                           
  cfe684: adrp   x21, #0x31cc000                          
  cfe688: ldrb   w8, [x21, #0x7f8]                        
  cfe68c: mov    x19, x1                                  
  cfe690: mov    x20, x0                                  
  cfe694: tbnz   w8, #0, #0xcfe6b0                        
  cfe698: adrp   x8, #0x301e000                           
  cfe69c: ldr    x8, [x8, #0x208]                         
  cfe6a0: ldr    w0, [x8]                                 
  cfe6a4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe6a8: mov    w8, #1                                   
  cfe6ac: strb   w8, [x21, #0x7f8]                        
  cfe6b0: adrp   x8, #0x3063000                           
  cfe6b4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe6b8: ldr    x8, [x8]                                 
  cfe6bc: ldr    x8, [x8, #0xb8]                          
  cfe6c0: ldr    x0, [x8, #0x1b8]                         
  cfe6c4: cbz    x0, #0xcfe6e4                            
  cfe6c8: mov    x1, x20                                  
  cfe6cc: mov    x2, x19                                  
  cfe6d0: ldp    x29, x30, [sp, #0x20]                    
  cfe6d4: ldp    x20, x19, [sp, #0x10]                    
  cfe6d8: mov    x3, xzr                                  
  cfe6dc: ldr    x21, [sp], #0x30                         
  cfe6e0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe6e4: str    x19, [x20, #0x100]                       
  cfe6e8: ldp    x29, x30, [sp, #0x20]                    
  cfe6ec: ldp    x20, x19, [sp, #0x10]                    
  cfe6f0: ldr    x21, [sp], #0x30                         
  cfe6f4: ret                                             

===== LoginMediator$$set_activityData @ 0xcfd364 (132 bytes)
  cfd364: str    x21, [sp, #-0x30]!                       
  cfd368: stp    x20, x19, [sp, #0x10]                    
  cfd36c: stp    x29, x30, [sp, #0x20]                    
  cfd370: add    x29, sp, #0x20                           
  cfd374: adrp   x21, #0x31cc000                          
  cfd378: ldrb   w8, [x21, #0x7d0]                        
  cfd37c: mov    x19, x1                                  
  cfd380: mov    x20, x0                                  
  cfd384: tbnz   w8, #0, #0xcfd3a0                        
  cfd388: adrp   x8, #0x3001000                           
  cfd38c: ldr    x8, [x8, #0xa28]                         
  cfd390: ldr    w0, [x8]                                 
  cfd394: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd398: mov    w8, #1                                   
  cfd39c: strb   w8, [x21, #0x7d0]                        
  cfd3a0: adrp   x8, #0x3063000                           
  cfd3a4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd3a8: ldr    x8, [x8]                                 
  cfd3ac: ldr    x8, [x8, #0xb8]                          
  cfd3b0: ldr    x0, [x8, #0x78]                          
  cfd3b4: cbz    x0, #0xcfd3d4                            
  cfd3b8: mov    x1, x20                                  
  cfd3bc: mov    x2, x19                                  
  cfd3c0: ldp    x29, x30, [sp, #0x20]                    
  cfd3c4: ldp    x20, x19, [sp, #0x10]                    
  cfd3c8: mov    x3, xzr                                  
  cfd3cc: ldr    x21, [sp], #0x30                         
  cfd3d0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd3d4: str    x19, [x20, #0x60]                        
  cfd3d8: ldp    x29, x30, [sp, #0x20]                    
  cfd3dc: ldp    x20, x19, [sp, #0x10]                    
  cfd3e0: ldr    x21, [sp], #0x30                         
  cfd3e4: ret                                             

===== LoginMediator$$set_angelData @ 0xcfe0bc (132 bytes)
  cfe0bc: str    x21, [sp, #-0x30]!                       
  cfe0c0: stp    x20, x19, [sp, #0x10]                    
  cfe0c4: stp    x29, x30, [sp, #0x20]                    
  cfe0c8: add    x29, sp, #0x20                           
  cfe0cc: adrp   x21, #0x31cc000                          
  cfe0d0: ldrb   w8, [x21, #0x7ec]                        
  cfe0d4: mov    x19, x1                                  
  cfe0d8: mov    x20, x0                                  
  cfe0dc: tbnz   w8, #0, #0xcfe0f8                        
  cfe0e0: adrp   x8, #0x3021000                           
  cfe0e4: ldr    x8, [x8, #0xc50]                         
  cfe0e8: ldr    w0, [x8]                                 
  cfe0ec: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe0f0: mov    w8, #1                                   
  cfe0f4: strb   w8, [x21, #0x7ec]                        
  cfe0f8: adrp   x8, #0x3063000                           
  cfe0fc: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe100: ldr    x8, [x8]                                 
  cfe104: ldr    x8, [x8, #0xb8]                          
  cfe108: ldr    x0, [x8, #0x158]                         
  cfe10c: cbz    x0, #0xcfe12c                            
  cfe110: mov    x1, x20                                  
  cfe114: mov    x2, x19                                  
  cfe118: ldp    x29, x30, [sp, #0x20]                    
  cfe11c: ldp    x20, x19, [sp, #0x10]                    
  cfe120: mov    x3, xzr                                  
  cfe124: ldr    x21, [sp], #0x30                         
  cfe128: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe12c: str    x19, [x20, #0xd0]                        
  cfe130: ldp    x29, x30, [sp, #0x20]                    
  cfe134: ldp    x20, x19, [sp, #0x10]                    
  cfe138: ldr    x21, [sp], #0x30                         
  cfe13c: ret                                             

===== LoginMediator$$set_arenaData @ 0xcfd54c (132 bytes)
  cfd54c: str    x21, [sp, #-0x30]!                       
  cfd550: stp    x20, x19, [sp, #0x10]                    
  cfd554: stp    x29, x30, [sp, #0x20]                    
  cfd558: add    x29, sp, #0x20                           
  cfd55c: adrp   x21, #0x31cc000                          
  cfd560: ldrb   w8, [x21, #0x7d4]                        
  cfd564: mov    x19, x1                                  
  cfd568: mov    x20, x0                                  
  cfd56c: tbnz   w8, #0, #0xcfd588                        
  cfd570: adrp   x8, #0x3013000                           
  cfd574: ldr    x8, [x8, #0x160]                         
  cfd578: ldr    w0, [x8]                                 
  cfd57c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd580: mov    w8, #1                                   
  cfd584: strb   w8, [x21, #0x7d4]                        
  cfd588: adrp   x8, #0x3063000                           
  cfd58c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd590: ldr    x8, [x8]                                 
  cfd594: ldr    x8, [x8, #0xb8]                          
  cfd598: ldr    x0, [x8, #0x98]                          
  cfd59c: cbz    x0, #0xcfd5bc                            
  cfd5a0: mov    x1, x20                                  
  cfd5a4: mov    x2, x19                                  
  cfd5a8: ldp    x29, x30, [sp, #0x20]                    
  cfd5ac: ldp    x20, x19, [sp, #0x10]                    
  cfd5b0: mov    x3, xzr                                  
  cfd5b4: ldr    x21, [sp], #0x30                         
  cfd5b8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd5bc: str    x19, [x20, #0x70]                        
  cfd5c0: ldp    x29, x30, [sp, #0x20]                    
  cfd5c4: ldp    x20, x19, [sp, #0x10]                    
  cfd5c8: ldr    x21, [sp], #0x30                         
  cfd5cc: ret                                             

===== LoginMediator$$set_atSkillData @ 0xcfdf58 (132 bytes)
  cfdf58: str    x21, [sp, #-0x30]!                       
  cfdf5c: stp    x20, x19, [sp, #0x10]                    
  cfdf60: stp    x29, x30, [sp, #0x20]                    
  cfdf64: add    x29, sp, #0x20                           
  cfdf68: adrp   x21, #0x31cc000                          
  cfdf6c: ldrb   w8, [x21, #0x7e9]                        
  cfdf70: mov    x19, x1                                  
  cfdf74: mov    x20, x0                                  
  cfdf78: tbnz   w8, #0, #0xcfdf94                        
  cfdf7c: adrp   x8, #0x3079000                           
  cfdf80: ldr    x8, [x8, #0x170]                         
  cfdf84: ldr    w0, [x8]                                 
  cfdf88: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdf8c: mov    w8, #1                                   
  cfdf90: strb   w8, [x21, #0x7e9]                        
  cfdf94: adrp   x8, #0x3063000                           
  cfdf98: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdf9c: ldr    x8, [x8]                                 
  cfdfa0: ldr    x8, [x8, #0xb8]                          
  cfdfa4: ldr    x0, [x8, #0x140]                         
  cfdfa8: cbz    x0, #0xcfdfc8                            
  cfdfac: mov    x1, x20                                  
  cfdfb0: mov    x2, x19                                  
  cfdfb4: ldp    x29, x30, [sp, #0x20]                    
  cfdfb8: ldp    x20, x19, [sp, #0x10]                    
  cfdfbc: mov    x3, xzr                                  
  cfdfc0: ldr    x21, [sp], #0x30                         
  cfdfc4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfdfc8: str    x19, [x20, #0xc8]                        
  cfdfcc: ldp    x29, x30, [sp, #0x20]                    
  cfdfd0: ldp    x20, x19, [sp, #0x10]                    
  cfdfd4: ldr    x21, [sp], #0x30                         
  cfdfd8: ret                                             

===== LoginMediator$$set_bagData @ 0xcfe580 (132 bytes)
  cfe580: str    x21, [sp, #-0x30]!                       
  cfe584: stp    x20, x19, [sp, #0x10]                    
  cfe588: stp    x29, x30, [sp, #0x20]                    
  cfe58c: add    x29, sp, #0x20                           
  cfe590: adrp   x21, #0x31cc000                          
  cfe594: ldrb   w8, [x21, #0x7f6]                        
  cfe598: mov    x19, x1                                  
  cfe59c: mov    x20, x0                                  
  cfe5a0: tbnz   w8, #0, #0xcfe5bc                        
  cfe5a4: adrp   x8, #0x3040000                           
  cfe5a8: ldr    x8, [x8, #0x528]                         
  cfe5ac: ldr    w0, [x8]                                 
  cfe5b0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe5b4: mov    w8, #1                                   
  cfe5b8: strb   w8, [x21, #0x7f6]                        
  cfe5bc: adrp   x8, #0x3063000                           
  cfe5c0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe5c4: ldr    x8, [x8]                                 
  cfe5c8: ldr    x8, [x8, #0xb8]                          
  cfe5cc: ldr    x0, [x8, #0x1a8]                         
  cfe5d0: cbz    x0, #0xcfe5f0                            
  cfe5d4: mov    x1, x20                                  
  cfe5d8: mov    x2, x19                                  
  cfe5dc: ldp    x29, x30, [sp, #0x20]                    
  cfe5e0: ldp    x20, x19, [sp, #0x10]                    
  cfe5e4: mov    x3, xzr                                  
  cfe5e8: ldr    x21, [sp], #0x30                         
  cfe5ec: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe5f0: str    x19, [x20, #0xf8]                        
  cfe5f4: ldp    x29, x30, [sp, #0x20]                    
  cfe5f8: ldp    x20, x19, [sp, #0x10]                    
  cfe5fc: ldr    x21, [sp], #0x30                         
  cfe600: ret                                             

===== LoginMediator$$set_chapterData @ 0xcfd458 (132 bytes)
  cfd458: str    x21, [sp, #-0x30]!                       
  cfd45c: stp    x20, x19, [sp, #0x10]                    
  cfd460: stp    x29, x30, [sp, #0x20]                    
  cfd464: add    x29, sp, #0x20                           
  cfd468: adrp   x21, #0x31cc000                          
  cfd46c: ldrb   w8, [x21, #0x7d2]                        
  cfd470: mov    x19, x1                                  
  cfd474: mov    x20, x0                                  
  cfd478: tbnz   w8, #0, #0xcfd494                        
  cfd47c: adrp   x8, #0x2fbe000                           
  cfd480: ldr    x8, [x8, #0x270]                         
  cfd484: ldr    w0, [x8]                                 
  cfd488: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd48c: mov    w8, #1                                   
  cfd490: strb   w8, [x21, #0x7d2]                        
  cfd494: adrp   x8, #0x3063000                           
  cfd498: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd49c: ldr    x8, [x8]                                 
  cfd4a0: ldr    x8, [x8, #0xb8]                          
  cfd4a4: ldr    x0, [x8, #0x88]                          
  cfd4a8: cbz    x0, #0xcfd4c8                            
  cfd4ac: mov    x1, x20                                  
  cfd4b0: mov    x2, x19                                  
  cfd4b4: ldp    x29, x30, [sp, #0x20]                    
  cfd4b8: ldp    x20, x19, [sp, #0x10]                    
  cfd4bc: mov    x3, xzr                                  
  cfd4c0: ldr    x21, [sp], #0x30                         
  cfd4c4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd4c8: str    x19, [x20, #0x68]                        
  cfd4cc: ldp    x29, x30, [sp, #0x20]                    
  cfd4d0: ldp    x20, x19, [sp, #0x10]                    
  cfd4d4: ldr    x21, [sp], #0x30                         
  cfd4d8: ret                                             

===== LoginMediator$$set_chatData @ 0xcfcf24 (132 bytes)
  cfcf24: str    x21, [sp, #-0x30]!                       
  cfcf28: stp    x20, x19, [sp, #0x10]                    
  cfcf2c: stp    x29, x30, [sp, #0x20]                    
  cfcf30: add    x29, sp, #0x20                           
  cfcf34: adrp   x21, #0x31cc000                          
  cfcf38: ldrb   w8, [x21, #0x7c7]                        
  cfcf3c: mov    x19, x1                                  
  cfcf40: mov    x20, x0                                  
  cfcf44: tbnz   w8, #0, #0xcfcf60                        
  cfcf48: adrp   x8, #0x3079000                           
  cfcf4c: ldr    x8, [x8, #0xd30]                         
  cfcf50: ldr    w0, [x8]                                 
  cfcf54: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcf58: mov    w8, #1                                   
  cfcf5c: strb   w8, [x21, #0x7c7]                        
  cfcf60: adrp   x8, #0x3063000                           
  cfcf64: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcf68: ldr    x8, [x8]                                 
  cfcf6c: ldr    x8, [x8, #0xb8]                          
  cfcf70: ldr    x0, [x8, #0x30]                          
  cfcf74: cbz    x0, #0xcfcf94                            
  cfcf78: mov    x1, x20                                  
  cfcf7c: mov    x2, x19                                  
  cfcf80: ldp    x29, x30, [sp, #0x20]                    
  cfcf84: ldp    x20, x19, [sp, #0x10]                    
  cfcf88: mov    x3, xzr                                  
  cfcf8c: ldr    x21, [sp], #0x30                         
  cfcf90: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfcf94: str    x19, [x20, #0x40]                        
  cfcf98: ldp    x29, x30, [sp, #0x20]                    
  cfcf9c: ldp    x20, x19, [sp, #0x10]                    
  cfcfa0: ldr    x21, [sp], #0x30                         
  cfcfa4: ret                                             

===== LoginMediator$$set_childrenData @ 0xcfde64 (132 bytes)
  cfde64: str    x21, [sp, #-0x30]!                       
  cfde68: stp    x20, x19, [sp, #0x10]                    
  cfde6c: stp    x29, x30, [sp, #0x20]                    
  cfde70: add    x29, sp, #0x20                           
  cfde74: adrp   x21, #0x31cc000                          
  cfde78: ldrb   w8, [x21, #0x7e7]                        
  cfde7c: mov    x19, x1                                  
  cfde80: mov    x20, x0                                  
  cfde84: tbnz   w8, #0, #0xcfdea0                        
  cfde88: adrp   x8, #0x3039000                           
  cfde8c: ldr    x8, [x8, #0x970]                         
  cfde90: ldr    w0, [x8]                                 
  cfde94: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfde98: mov    w8, #1                                   
  cfde9c: strb   w8, [x21, #0x7e7]                        
  cfdea0: adrp   x8, #0x3063000                           
  cfdea4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdea8: ldr    x8, [x8]                                 
  cfdeac: ldr    x8, [x8, #0xb8]                          
  cfdeb0: ldr    x0, [x8, #0x130]                         
  cfdeb4: cbz    x0, #0xcfded4                            
  cfdeb8: mov    x1, x20                                  
  cfdebc: mov    x2, x19                                  
  cfdec0: ldp    x29, x30, [sp, #0x20]                    
  cfdec4: ldp    x20, x19, [sp, #0x10]                    
  cfdec8: mov    x3, xzr                                  
  cfdecc: ldr    x21, [sp], #0x30                         
  cfded0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfded4: str    x19, [x20, #0xc0]                        
  cfded8: ldp    x29, x30, [sp, #0x20]                    
  cfdedc: ldp    x20, x19, [sp, #0x10]                    
  cfdee0: ldr    x21, [sp], #0x30                         
  cfdee4: ret                                             

===== LoginMediator$$set_crystalOreData @ 0xcfe48c (132 bytes)
  cfe48c: str    x21, [sp, #-0x30]!                       
  cfe490: stp    x20, x19, [sp, #0x10]                    
  cfe494: stp    x29, x30, [sp, #0x20]                    
  cfe498: add    x29, sp, #0x20                           
  cfe49c: adrp   x21, #0x31cc000                          
  cfe4a0: ldrb   w8, [x21, #0x7f4]                        
  cfe4a4: mov    x19, x1                                  
  cfe4a8: mov    x20, x0                                  
  cfe4ac: tbnz   w8, #0, #0xcfe4c8                        
  cfe4b0: adrp   x8, #0x304b000                           
  cfe4b4: ldr    x8, [x8, #0x298]                         
  cfe4b8: ldr    w0, [x8]                                 
  cfe4bc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe4c0: mov    w8, #1                                   
  cfe4c4: strb   w8, [x21, #0x7f4]                        
  cfe4c8: adrp   x8, #0x3063000                           
  cfe4cc: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe4d0: ldr    x8, [x8]                                 
  cfe4d4: ldr    x8, [x8, #0xb8]                          
  cfe4d8: ldr    x0, [x8, #0x198]                         
  cfe4dc: cbz    x0, #0xcfe4fc                            
  cfe4e0: mov    x1, x20                                  
  cfe4e4: mov    x2, x19                                  
  cfe4e8: ldp    x29, x30, [sp, #0x20]                    
  cfe4ec: ldp    x20, x19, [sp, #0x10]                    
  cfe4f0: mov    x3, xzr                                  
  cfe4f4: ldr    x21, [sp], #0x30                         
  cfe4f8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe4fc: str    x19, [x20, #0xf0]                        
  cfe500: ldp    x29, x30, [sp, #0x20]                    
  cfe504: ldp    x20, x19, [sp, #0x10]                    
  cfe508: ldr    x21, [sp], #0x30                         
  cfe50c: ret                                             

===== LoginMediator$$set_cursadesData @ 0xcfd734 (132 bytes)
  cfd734: str    x21, [sp, #-0x30]!                       
  cfd738: stp    x20, x19, [sp, #0x10]                    
  cfd73c: stp    x29, x30, [sp, #0x20]                    
  cfd740: add    x29, sp, #0x20                           
  cfd744: adrp   x21, #0x31cc000                          
  cfd748: ldrb   w8, [x21, #0x7d8]                        
  cfd74c: mov    x19, x1                                  
  cfd750: mov    x20, x0                                  
  cfd754: tbnz   w8, #0, #0xcfd770                        
  cfd758: adrp   x8, #0x306f000                           
  cfd75c: ldr    x8, [x8, #0x9c8]                         
  cfd760: ldr    w0, [x8]                                 
  cfd764: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd768: mov    w8, #1                                   
  cfd76c: strb   w8, [x21, #0x7d8]                        
  cfd770: adrp   x8, #0x3063000                           
  cfd774: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd778: ldr    x8, [x8]                                 
  cfd77c: ldr    x8, [x8, #0xb8]                          
  cfd780: ldr    x0, [x8, #0xb8]                          
  cfd784: cbz    x0, #0xcfd7a4                            
  cfd788: mov    x1, x20                                  
  cfd78c: mov    x2, x19                                  
  cfd790: ldp    x29, x30, [sp, #0x20]                    
  cfd794: ldp    x20, x19, [sp, #0x10]                    
  cfd798: mov    x3, xzr                                  
  cfd79c: ldr    x21, [sp], #0x30                         
  cfd7a0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd7a4: str    x19, [x20, #0x80]                        
  cfd7a8: ldp    x29, x30, [sp, #0x20]                    
  cfd7ac: ldp    x20, x19, [sp, #0x10]                    
  cfd7b0: ldr    x21, [sp], #0x30                         
  cfd7b4: ret                                             

===== LoginMediator$$set_friendData @ 0xcfdb04 (132 bytes)
  cfdb04: str    x21, [sp, #-0x30]!                       
  cfdb08: stp    x20, x19, [sp, #0x10]                    
  cfdb0c: stp    x29, x30, [sp, #0x20]                    
  cfdb10: add    x29, sp, #0x20                           
  cfdb14: adrp   x21, #0x31cc000                          
  cfdb18: ldrb   w8, [x21, #0x7e0]                        
  cfdb1c: mov    x19, x1                                  
  cfdb20: mov    x20, x0                                  
  cfdb24: tbnz   w8, #0, #0xcfdb40                        
  cfdb28: adrp   x8, #0x3050000                           
  cfdb2c: ldr    x8, [x8, #0x908]                         
  cfdb30: ldr    w0, [x8]                                 
  cfdb34: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdb38: mov    w8, #1                                   
  cfdb3c: strb   w8, [x21, #0x7e0]                        
  cfdb40: adrp   x8, #0x3063000                           
  cfdb44: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdb48: ldr    x8, [x8]                                 
  cfdb4c: ldr    x8, [x8, #0xb8]                          
  cfdb50: ldr    x0, [x8, #0xf8]                          
  cfdb54: cbz    x0, #0xcfdb74                            
  cfdb58: mov    x1, x20                                  
  cfdb5c: mov    x2, x19                                  
  cfdb60: ldp    x29, x30, [sp, #0x20]                    
  cfdb64: ldp    x20, x19, [sp, #0x10]                    
  cfdb68: mov    x3, xzr                                  
  cfdb6c: ldr    x21, [sp], #0x30                         
  cfdb70: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfdb74: str    x19, [x20, #0xa0]                        
  cfdb78: ldp    x29, x30, [sp, #0x20]                    
  cfdb7c: ldp    x20, x19, [sp, #0x10]                    
  cfdb80: ldr    x21, [sp], #0x30                         
  cfdb84: ret                                             

===== LoginMediator$$set_geneData @ 0xcfdcec (132 bytes)
  cfdcec: str    x21, [sp, #-0x30]!                       
  cfdcf0: stp    x20, x19, [sp, #0x10]                    
  cfdcf4: stp    x29, x30, [sp, #0x20]                    
  cfdcf8: add    x29, sp, #0x20                           
  cfdcfc: adrp   x21, #0x31cc000                          
  cfdd00: ldrb   w8, [x21, #0x7e4]                        
  cfdd04: mov    x19, x1                                  
  cfdd08: mov    x20, x0                                  
  cfdd0c: tbnz   w8, #0, #0xcfdd28                        
  cfdd10: adrp   x8, #0x2fbf000                           
  cfdd14: ldr    x8, [x8, #0xb18]                         
  cfdd18: ldr    w0, [x8]                                 
  cfdd1c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdd20: mov    w8, #1                                   
  cfdd24: strb   w8, [x21, #0x7e4]                        
  cfdd28: adrp   x8, #0x3063000                           
  cfdd2c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdd30: ldr    x8, [x8]                                 
  cfdd34: ldr    x8, [x8, #0xb8]                          
  cfdd38: ldr    x0, [x8, #0x118]                         
  cfdd3c: cbz    x0, #0xcfdd5c                            
  cfdd40: mov    x1, x20                                  
  cfdd44: mov    x2, x19                                  
  cfdd48: ldp    x29, x30, [sp, #0x20]                    
  cfdd4c: ldp    x20, x19, [sp, #0x10]                    
  cfdd50: mov    x3, xzr                                  
  cfdd54: ldr    x21, [sp], #0x30                         
  cfdd58: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfdd5c: str    x19, [x20, #0xb0]                        
  cfdd60: ldp    x29, x30, [sp, #0x20]                    
  cfdd64: ldp    x20, x19, [sp, #0x10]                    
  cfdd68: ldr    x21, [sp], #0x30                         
  cfdd6c: ret                                             

===== LoginMediator$$set_guideData @ 0xcfd270 (132 bytes)
  cfd270: str    x21, [sp, #-0x30]!                       
  cfd274: stp    x20, x19, [sp, #0x10]                    
  cfd278: stp    x29, x30, [sp, #0x20]                    
  cfd27c: add    x29, sp, #0x20                           
  cfd280: adrp   x21, #0x31cc000                          
  cfd284: ldrb   w8, [x21, #0x7ce]                        
  cfd288: mov    x19, x1                                  
  cfd28c: mov    x20, x0                                  
  cfd290: tbnz   w8, #0, #0xcfd2ac                        
  cfd294: adrp   x8, #0x3009000                           
  cfd298: ldr    x8, [x8, #0x2c8]                         
  cfd29c: ldr    w0, [x8]                                 
  cfd2a0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd2a4: mov    w8, #1                                   
  cfd2a8: strb   w8, [x21, #0x7ce]                        
  cfd2ac: adrp   x8, #0x3063000                           
  cfd2b0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd2b4: ldr    x8, [x8]                                 
  cfd2b8: ldr    x8, [x8, #0xb8]                          
  cfd2bc: ldr    x0, [x8, #0x68]                          
  cfd2c0: cbz    x0, #0xcfd2e0                            
  cfd2c4: mov    x1, x20                                  
  cfd2c8: mov    x2, x19                                  
  cfd2cc: ldp    x29, x30, [sp, #0x20]                    
  cfd2d0: ldp    x20, x19, [sp, #0x10]                    
  cfd2d4: mov    x3, xzr                                  
  cfd2d8: ldr    x21, [sp], #0x30                         
  cfd2dc: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd2e0: str    x19, [x20, #0x58]                        
  cfd2e4: ldp    x29, x30, [sp, #0x20]                    
  cfd2e8: ldp    x20, x19, [sp, #0x10]                    
  cfd2ec: ldr    x21, [sp], #0x30                         
  cfd2f0: ret                                             

===== LoginMediator$$set_guildBattleData @ 0xcfe2a4 (132 bytes)
  cfe2a4: str    x21, [sp, #-0x30]!                       
  cfe2a8: stp    x20, x19, [sp, #0x10]                    
  cfe2ac: stp    x29, x30, [sp, #0x20]                    
  cfe2b0: add    x29, sp, #0x20                           
  cfe2b4: adrp   x21, #0x31cc000                          
  cfe2b8: ldrb   w8, [x21, #0x7f0]                        
  cfe2bc: mov    x19, x1                                  
  cfe2c0: mov    x20, x0                                  
  cfe2c4: tbnz   w8, #0, #0xcfe2e0                        
  cfe2c8: adrp   x8, #0x3000000                           
  cfe2cc: ldr    x8, [x8, #0x4e8]                         
  cfe2d0: ldr    w0, [x8]                                 
  cfe2d4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe2d8: mov    w8, #1                                   
  cfe2dc: strb   w8, [x21, #0x7f0]                        
  cfe2e0: adrp   x8, #0x3063000                           
  cfe2e4: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe2e8: ldr    x8, [x8]                                 
  cfe2ec: ldr    x8, [x8, #0xb8]                          
  cfe2f0: ldr    x0, [x8, #0x178]                         
  cfe2f4: cbz    x0, #0xcfe314                            
  cfe2f8: mov    x1, x20                                  
  cfe2fc: mov    x2, x19                                  
  cfe300: ldp    x29, x30, [sp, #0x20]                    
  cfe304: ldp    x20, x19, [sp, #0x10]                    
  cfe308: mov    x3, xzr                                  
  cfe30c: ldr    x21, [sp], #0x30                         
  cfe310: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe314: str    x19, [x20, #0xe0]                        
  cfe318: ldp    x29, x30, [sp, #0x20]                    
  cfe31c: ldp    x20, x19, [sp, #0x10]                    
  cfe320: ldr    x21, [sp], #0x30                         
  cfe324: ret                                             

===== LoginMediator$$set_guildData @ 0xcfd018 (132 bytes)
  cfd018: str    x21, [sp, #-0x30]!                       
  cfd01c: stp    x20, x19, [sp, #0x10]                    
  cfd020: stp    x29, x30, [sp, #0x20]                    
  cfd024: add    x29, sp, #0x20                           
  cfd028: adrp   x21, #0x31cc000                          
  cfd02c: ldrb   w8, [x21, #0x7c9]                        
  cfd030: mov    x19, x1                                  
  cfd034: mov    x20, x0                                  
  cfd038: tbnz   w8, #0, #0xcfd054                        
  cfd03c: adrp   x8, #0x3054000                           
  cfd040: ldr    x8, [x8, #0x7b8]                         
  cfd044: ldr    w0, [x8]                                 
  cfd048: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd04c: mov    w8, #1                                   
  cfd050: strb   w8, [x21, #0x7c9]                        
  cfd054: adrp   x8, #0x3063000                           
  cfd058: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd05c: ldr    x8, [x8]                                 
  cfd060: ldr    x8, [x8, #0xb8]                          
  cfd064: ldr    x0, [x8, #0x40]                          
  cfd068: cbz    x0, #0xcfd088                            
  cfd06c: mov    x1, x20                                  
  cfd070: mov    x2, x19                                  
  cfd074: ldp    x29, x30, [sp, #0x20]                    
  cfd078: ldp    x20, x19, [sp, #0x10]                    
  cfd07c: mov    x3, xzr                                  
  cfd080: ldr    x21, [sp], #0x30                         
  cfd084: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd088: str    x19, [x20, #0x48]                        
  cfd08c: ldp    x29, x30, [sp, #0x20]                    
  cfd090: ldp    x20, x19, [sp, #0x10]                    
  cfd094: ldr    x21, [sp], #0x30                         
  cfd098: ret                                             

===== LoginMediator$$set_mailData @ 0xcfd17c (132 bytes)
  cfd17c: str    x21, [sp, #-0x30]!                       
  cfd180: stp    x20, x19, [sp, #0x10]                    
  cfd184: stp    x29, x30, [sp, #0x20]                    
  cfd188: add    x29, sp, #0x20                           
  cfd18c: adrp   x21, #0x31cc000                          
  cfd190: ldrb   w8, [x21, #0x7cc]                        
  cfd194: mov    x19, x1                                  
  cfd198: mov    x20, x0                                  
  cfd19c: tbnz   w8, #0, #0xcfd1b8                        
  cfd1a0: adrp   x8, #0x2fe6000                           
  cfd1a4: ldr    x8, [x8, #0x420]                         
  cfd1a8: ldr    w0, [x8]                                 
  cfd1ac: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd1b0: mov    w8, #1                                   
  cfd1b4: strb   w8, [x21, #0x7cc]                        
  cfd1b8: adrp   x8, #0x3063000                           
  cfd1bc: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd1c0: ldr    x8, [x8]                                 
  cfd1c4: ldr    x8, [x8, #0xb8]                          
  cfd1c8: ldr    x0, [x8, #0x58]                          
  cfd1cc: cbz    x0, #0xcfd1ec                            
  cfd1d0: mov    x1, x20                                  
  cfd1d4: mov    x2, x19                                  
  cfd1d8: ldp    x29, x30, [sp, #0x20]                    
  cfd1dc: ldp    x20, x19, [sp, #0x10]                    
  cfd1e0: mov    x3, xzr                                  
  cfd1e4: ldr    x21, [sp], #0x30                         
  cfd1e8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd1ec: str    x19, [x20, #0x50]                        
  cfd1f0: ldp    x29, x30, [sp, #0x20]                    
  cfd1f4: ldp    x20, x19, [sp, #0x10]                    
  cfd1f8: ldr    x21, [sp], #0x30                         
  cfd1fc: ret                                             

===== LoginMediator$$set_materialData @ 0xcfdbf8 (132 bytes)
  cfdbf8: str    x21, [sp, #-0x30]!                       
  cfdbfc: stp    x20, x19, [sp, #0x10]                    
  cfdc00: stp    x29, x30, [sp, #0x20]                    
  cfdc04: add    x29, sp, #0x20                           
  cfdc08: adrp   x21, #0x31cc000                          
  cfdc0c: ldrb   w8, [x21, #0x7e2]                        
  cfdc10: mov    x19, x1                                  
  cfdc14: mov    x20, x0                                  
  cfdc18: tbnz   w8, #0, #0xcfdc34                        
  cfdc1c: adrp   x8, #0x306f000                           
  cfdc20: ldr    x8, [x8, #0x138]                         
  cfdc24: ldr    w0, [x8]                                 
  cfdc28: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdc2c: mov    w8, #1                                   
  cfdc30: strb   w8, [x21, #0x7e2]                        
  cfdc34: adrp   x8, #0x3063000                           
  cfdc38: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfdc3c: ldr    x8, [x8]                                 
  cfdc40: ldr    x8, [x8, #0xb8]                          
  cfdc44: ldr    x0, [x8, #0x108]                         
  cfdc48: cbz    x0, #0xcfdc68                            
  cfdc4c: mov    x1, x20                                  
  cfdc50: mov    x2, x19                                  
  cfdc54: ldp    x29, x30, [sp, #0x20]                    
  cfdc58: ldp    x20, x19, [sp, #0x10]                    
  cfdc5c: mov    x3, xzr                                  
  cfdc60: ldr    x21, [sp], #0x30                         
  cfdc64: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfdc68: str    x19, [x20, #0xa8]                        
  cfdc6c: ldp    x29, x30, [sp, #0x20]                    
  cfdc70: ldp    x20, x19, [sp, #0x10]                    
  cfdc74: ldr    x21, [sp], #0x30                         
  cfdc78: ret                                             

===== LoginMediator$$set_mechaData @ 0xcfdd70 (132 bytes)
  cfdd70: str    x21, [sp, #-0x30]!                       
  cfdd74: stp    x20, x19, [sp, #0x10]                    
  cfdd78: stp    x29, x30, [sp, #0x20]                    
  cfdd7c: add    x29, sp, #0x20                           
  cfdd80: adrp   x21, #0x31cc000                          
  cfdd84: ldrb   w8, [x21, #0x7e5]                        
  cfdd88: mov    x19, x1                                  
  cfdd8c: mov    x20, x0                                  
  cfdd90: tbnz   w8, #0, #0xcfddac                        
  cfdd94: adrp   x8, #0x3037000                           
  cfdd98: ldr    x8, [x8, #0xf68]                         
  cfdd9c: ldr    w0, [x8]                                 
  cfdda0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfdda4: mov    w8, #1                                   
  cfdda8: strb   w8, [x21, #0x7e5]                        
  cfddac: adrp   x8, #0x3063000                           
  cfddb0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfddb4: ldr    x8, [x8]                                 
  cfddb8: ldr    x8, [x8, #0xb8]                          
  cfddbc: ldr    x0, [x8, #0x120]                         
  cfddc0: cbz    x0, #0xcfdde0                            
  cfddc4: mov    x1, x20                                  
  cfddc8: mov    x2, x19                                  
  cfddcc: ldp    x29, x30, [sp, #0x20]                    
  cfddd0: ldp    x20, x19, [sp, #0x10]                    
  cfddd4: mov    x3, xzr                                  
  cfddd8: ldr    x21, [sp], #0x30                         
  cfdddc: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfdde0: str    x19, [x20, #0xb8]                        
  cfdde4: ldp    x29, x30, [sp, #0x20]                    
  cfdde8: ldp    x20, x19, [sp, #0x10]                    
  cfddec: ldr    x21, [sp], #0x30                         
  cfddf0: ret                                             

===== LoginMediator$$set_netDispatcher @ 0xcfe8e0 (132 bytes)
  cfe8e0: str    x21, [sp, #-0x30]!                       
  cfe8e4: stp    x20, x19, [sp, #0x10]                    
  cfe8e8: stp    x29, x30, [sp, #0x20]                    
  cfe8ec: add    x29, sp, #0x20                           
  cfe8f0: adrp   x21, #0x31cc000                          
  cfe8f4: ldrb   w8, [x21, #0x7fd]                        
  cfe8f8: mov    x19, x1                                  
  cfe8fc: mov    x20, x0                                  
  cfe900: tbnz   w8, #0, #0xcfe91c                        
  cfe904: adrp   x8, #0x2fd5000                           
  cfe908: ldr    x8, [x8, #0x278]                         
  cfe90c: ldr    w0, [x8]                                 
  cfe910: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe914: mov    w8, #1                                   
  cfe918: strb   w8, [x21, #0x7fd]                        
  cfe91c: adrp   x8, #0x3063000                           
  cfe920: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe924: ldr    x8, [x8]                                 
  cfe928: ldr    x8, [x8, #0xb8]                          
  cfe92c: ldr    x0, [x8, #0x1e0]                         
  cfe930: cbz    x0, #0xcfe950                            
  cfe934: mov    x1, x20                                  
  cfe938: mov    x2, x19                                  
  cfe93c: ldp    x29, x30, [sp, #0x20]                    
  cfe940: ldp    x20, x19, [sp, #0x10]                    
  cfe944: mov    x3, xzr                                  
  cfe948: ldr    x21, [sp], #0x30                         
  cfe94c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe950: str    x19, [x20, #0x118]                       
  cfe954: ldp    x29, x30, [sp, #0x20]                    
  cfe958: ldp    x20, x19, [sp, #0x10]                    
  cfe95c: ldr    x21, [sp], #0x30                         
  cfe960: ret                                             

===== LoginMediator$$set_noticeData @ 0xcfcd3c (132 bytes)
  cfcd3c: str    x21, [sp, #-0x30]!                       
  cfcd40: stp    x20, x19, [sp, #0x10]                    
  cfcd44: stp    x29, x30, [sp, #0x20]                    
  cfcd48: add    x29, sp, #0x20                           
  cfcd4c: adrp   x21, #0x31cc000                          
  cfcd50: ldrb   w8, [x21, #0x7c3]                        
  cfcd54: mov    x19, x1                                  
  cfcd58: mov    x20, x0                                  
  cfcd5c: tbnz   w8, #0, #0xcfcd78                        
  cfcd60: adrp   x8, #0x305c000                           
  cfcd64: ldr    x8, [x8, #0x958]                         
  cfcd68: ldr    w0, [x8]                                 
  cfcd6c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcd70: mov    w8, #1                                   
  cfcd74: strb   w8, [x21, #0x7c3]                        
  cfcd78: adrp   x8, #0x3063000                           
  cfcd7c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcd80: ldr    x8, [x8]                                 
  cfcd84: ldr    x8, [x8, #0xb8]                          
  cfcd88: ldr    x0, [x8, #0x10]                          
  cfcd8c: cbz    x0, #0xcfcdac                            
  cfcd90: mov    x1, x20                                  
  cfcd94: mov    x2, x19                                  
  cfcd98: ldp    x29, x30, [sp, #0x20]                    
  cfcd9c: ldp    x20, x19, [sp, #0x10]                    
  cfcda0: mov    x3, xzr                                  
  cfcda4: ldr    x21, [sp], #0x30                         
  cfcda8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfcdac: str    x19, [x20, #0x30]                        
  cfcdb0: ldp    x29, x30, [sp, #0x20]                    
  cfcdb4: ldp    x20, x19, [sp, #0x10]                    
  cfcdb8: ldr    x21, [sp], #0x30                         
  cfcdbc: ret                                             

===== LoginMediator$$set_peakVsData @ 0xcfe398 (132 bytes)
  cfe398: str    x21, [sp, #-0x30]!                       
  cfe39c: stp    x20, x19, [sp, #0x10]                    
  cfe3a0: stp    x29, x30, [sp, #0x20]                    
  cfe3a4: add    x29, sp, #0x20                           
  cfe3a8: adrp   x21, #0x31cc000                          
  cfe3ac: ldrb   w8, [x21, #0x7f2]                        
  cfe3b0: mov    x19, x1                                  
  cfe3b4: mov    x20, x0                                  
  cfe3b8: tbnz   w8, #0, #0xcfe3d4                        
  cfe3bc: adrp   x8, #0x2ff4000                           
  cfe3c0: ldr    x8, [x8, #0x4f0]                         
  cfe3c4: ldr    w0, [x8]                                 
  cfe3c8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe3cc: mov    w8, #1                                   
  cfe3d0: strb   w8, [x21, #0x7f2]                        
  cfe3d4: adrp   x8, #0x3063000                           
  cfe3d8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe3dc: ldr    x8, [x8]                                 
  cfe3e0: ldr    x8, [x8, #0xb8]                          
  cfe3e4: ldr    x0, [x8, #0x188]                         
  cfe3e8: cbz    x0, #0xcfe408                            
  cfe3ec: mov    x1, x20                                  
  cfe3f0: mov    x2, x19                                  
  cfe3f4: ldp    x29, x30, [sp, #0x20]                    
  cfe3f8: ldp    x20, x19, [sp, #0x10]                    
  cfe3fc: mov    x3, xzr                                  
  cfe400: ldr    x21, [sp], #0x30                         
  cfe404: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe408: str    x19, [x20, #0xe8]                        
  cfe40c: ldp    x29, x30, [sp, #0x20]                    
  cfe410: ldp    x20, x19, [sp, #0x10]                    
  cfe414: ldr    x21, [sp], #0x30                         
  cfe418: ret                                             

===== LoginMediator$$set_playerData @ 0xcfce30 (132 bytes)
  cfce30: str    x21, [sp, #-0x30]!                       
  cfce34: stp    x20, x19, [sp, #0x10]                    
  cfce38: stp    x29, x30, [sp, #0x20]                    
  cfce3c: add    x29, sp, #0x20                           
  cfce40: adrp   x21, #0x31cc000                          
  cfce44: ldrb   w8, [x21, #0x7c5]                        
  cfce48: mov    x19, x1                                  
  cfce4c: mov    x20, x0                                  
  cfce50: tbnz   w8, #0, #0xcfce6c                        
  cfce54: adrp   x8, #0x3073000                           
  cfce58: ldr    x8, [x8, #0x7b0]                         
  cfce5c: ldr    w0, [x8]                                 
  cfce60: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfce64: mov    w8, #1                                   
  cfce68: strb   w8, [x21, #0x7c5]                        
  cfce6c: adrp   x8, #0x3063000                           
  cfce70: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfce74: ldr    x8, [x8]                                 
  cfce78: ldr    x8, [x8, #0xb8]                          
  cfce7c: ldr    x0, [x8, #0x20]                          
  cfce80: cbz    x0, #0xcfcea0                            
  cfce84: mov    x1, x20                                  
  cfce88: mov    x2, x19                                  
  cfce8c: ldp    x29, x30, [sp, #0x20]                    
  cfce90: ldp    x20, x19, [sp, #0x10]                    
  cfce94: mov    x3, xzr                                  
  cfce98: ldr    x21, [sp], #0x30                         
  cfce9c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfcea0: str    x19, [x20, #0x38]                        
  cfcea4: ldp    x29, x30, [sp, #0x20]                    
  cfcea8: ldp    x20, x19, [sp, #0x10]                    
  cfceac: ldr    x21, [sp], #0x30                         
  cfceb0: ret                                             

===== LoginMediator$$set_pointMatch @ 0xcfd640 (132 bytes)
  cfd640: str    x21, [sp, #-0x30]!                       
  cfd644: stp    x20, x19, [sp, #0x10]                    
  cfd648: stp    x29, x30, [sp, #0x20]                    
  cfd64c: add    x29, sp, #0x20                           
  cfd650: adrp   x21, #0x31cc000                          
  cfd654: ldrb   w8, [x21, #0x7d6]                        
  cfd658: mov    x19, x1                                  
  cfd65c: mov    x20, x0                                  
  cfd660: tbnz   w8, #0, #0xcfd67c                        
  cfd664: adrp   x8, #0x3044000                           
  cfd668: ldr    x8, [x8, #0x348]                         
  cfd66c: ldr    w0, [x8]                                 
  cfd670: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd674: mov    w8, #1                                   
  cfd678: strb   w8, [x21, #0x7d6]                        
  cfd67c: adrp   x8, #0x3063000                           
  cfd680: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd684: ldr    x8, [x8]                                 
  cfd688: ldr    x8, [x8, #0xb8]                          
  cfd68c: ldr    x0, [x8, #0xa8]                          
  cfd690: cbz    x0, #0xcfd6b0                            
  cfd694: mov    x1, x20                                  
  cfd698: mov    x2, x19                                  
  cfd69c: ldp    x29, x30, [sp, #0x20]                    
  cfd6a0: ldp    x20, x19, [sp, #0x10]                    
  cfd6a4: mov    x3, xzr                                  
  cfd6a8: ldr    x21, [sp], #0x30                         
  cfd6ac: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd6b0: str    x19, [x20, #0x78]                        
  cfd6b4: ldp    x29, x30, [sp, #0x20]                    
  cfd6b8: ldp    x20, x19, [sp, #0x10]                    
  cfd6bc: ldr    x21, [sp], #0x30                         
  cfd6c0: ret                                             

===== LoginMediator$$set_pvpData @ 0xcfe1b0 (132 bytes)
  cfe1b0: str    x21, [sp, #-0x30]!                       
  cfe1b4: stp    x20, x19, [sp, #0x10]                    
  cfe1b8: stp    x29, x30, [sp, #0x20]                    
  cfe1bc: add    x29, sp, #0x20                           
  cfe1c0: adrp   x21, #0x31cc000                          
  cfe1c4: ldrb   w8, [x21, #0x7ee]                        
  cfe1c8: mov    x19, x1                                  
  cfe1cc: mov    x20, x0                                  
  cfe1d0: tbnz   w8, #0, #0xcfe1ec                        
  cfe1d4: adrp   x8, #0x2fec000                           
  cfe1d8: ldr    x8, [x8, #0xd40]                         
  cfe1dc: ldr    w0, [x8]                                 
  cfe1e0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe1e4: mov    w8, #1                                   
  cfe1e8: strb   w8, [x21, #0x7ee]                        
  cfe1ec: adrp   x8, #0x3063000                           
  cfe1f0: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe1f4: ldr    x8, [x8]                                 
  cfe1f8: ldr    x8, [x8, #0xb8]                          
  cfe1fc: ldr    x0, [x8, #0x168]                         
  cfe200: cbz    x0, #0xcfe220                            
  cfe204: mov    x1, x20                                  
  cfe208: mov    x2, x19                                  
  cfe20c: ldp    x29, x30, [sp, #0x20]                    
  cfe210: ldp    x20, x19, [sp, #0x10]                    
  cfe214: mov    x3, xzr                                  
  cfe218: ldr    x21, [sp], #0x30                         
  cfe21c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe220: str    x19, [x20, #0xd8]                        
  cfe224: ldp    x29, x30, [sp, #0x20]                    
  cfe228: ldp    x20, x19, [sp, #0x10]                    
  cfe22c: ldr    x21, [sp], #0x30                         
  cfe230: ret                                             

===== LoginMediator$$set_recruitData @ 0xcfe85c (132 bytes)
  cfe85c: str    x21, [sp, #-0x30]!                       
  cfe860: stp    x20, x19, [sp, #0x10]                    
  cfe864: stp    x29, x30, [sp, #0x20]                    
  cfe868: add    x29, sp, #0x20                           
  cfe86c: adrp   x21, #0x31cc000                          
  cfe870: ldrb   w8, [x21, #0x7fc]                        
  cfe874: mov    x19, x1                                  
  cfe878: mov    x20, x0                                  
  cfe87c: tbnz   w8, #0, #0xcfe898                        
  cfe880: adrp   x8, #0x2fc4000                           
  cfe884: ldr    x8, [x8, #0xa08]                         
  cfe888: ldr    w0, [x8]                                 
  cfe88c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe890: mov    w8, #1                                   
  cfe894: strb   w8, [x21, #0x7fc]                        
  cfe898: adrp   x8, #0x3063000                           
  cfe89c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe8a0: ldr    x8, [x8]                                 
  cfe8a4: ldr    x8, [x8, #0xb8]                          
  cfe8a8: ldr    x0, [x8, #0x1d8]                         
  cfe8ac: cbz    x0, #0xcfe8cc                            
  cfe8b0: mov    x1, x20                                  
  cfe8b4: mov    x2, x19                                  
  cfe8b8: ldp    x29, x30, [sp, #0x20]                    
  cfe8bc: ldp    x20, x19, [sp, #0x10]                    
  cfe8c0: mov    x3, xzr                                  
  cfe8c4: ldr    x21, [sp], #0x30                         
  cfe8c8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe8cc: str    x19, [x20, #0x110]                       
  cfe8d0: ldp    x29, x30, [sp, #0x20]                    
  cfe8d4: ldp    x20, x19, [sp, #0x10]                    
  cfe8d8: ldr    x21, [sp], #0x30                         
  cfe8dc: ret                                             

===== LoginMediator$$set_supplyData @ 0xcfd91c (132 bytes)
  cfd91c: str    x21, [sp, #-0x30]!                       
  cfd920: stp    x20, x19, [sp, #0x10]                    
  cfd924: stp    x29, x30, [sp, #0x20]                    
  cfd928: add    x29, sp, #0x20                           
  cfd92c: adrp   x21, #0x31cc000                          
  cfd930: ldrb   w8, [x21, #0x7dc]                        
  cfd934: mov    x19, x1                                  
  cfd938: mov    x20, x0                                  
  cfd93c: tbnz   w8, #0, #0xcfd958                        
  cfd940: adrp   x8, #0x301f000                           
  cfd944: ldr    x8, [x8, #0xc98]                         
  cfd948: ldr    w0, [x8]                                 
  cfd94c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd950: mov    w8, #1                                   
  cfd954: strb   w8, [x21, #0x7dc]                        
  cfd958: adrp   x8, #0x3063000                           
  cfd95c: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd960: ldr    x8, [x8]                                 
  cfd964: ldr    x8, [x8, #0xb8]                          
  cfd968: ldr    x0, [x8, #0xd8]                          
  cfd96c: cbz    x0, #0xcfd98c                            
  cfd970: mov    x1, x20                                  
  cfd974: mov    x2, x19                                  
  cfd978: ldp    x29, x30, [sp, #0x20]                    
  cfd97c: ldp    x20, x19, [sp, #0x10]                    
  cfd980: mov    x3, xzr                                  
  cfd984: ldr    x21, [sp], #0x30                         
  cfd988: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd98c: str    x19, [x20, #0x90]                        
  cfd990: ldp    x29, x30, [sp, #0x20]                    
  cfd994: ldp    x20, x19, [sp, #0x10]                    
  cfd998: ldr    x21, [sp], #0x30                         
  cfd99c: ret                                             

===== LoginMediator$$set_tbData @ 0xcfe768 (132 bytes)
  cfe768: str    x21, [sp, #-0x30]!                       
  cfe76c: stp    x20, x19, [sp, #0x10]                    
  cfe770: stp    x29, x30, [sp, #0x20]                    
  cfe774: add    x29, sp, #0x20                           
  cfe778: adrp   x21, #0x31cc000                          
  cfe77c: ldrb   w8, [x21, #0x7fa]                        
  cfe780: mov    x19, x1                                  
  cfe784: mov    x20, x0                                  
  cfe788: tbnz   w8, #0, #0xcfe7a4                        
  cfe78c: adrp   x8, #0x307a000                           
  cfe790: ldr    x8, [x8, #0x130]                         
  cfe794: ldr    w0, [x8]                                 
  cfe798: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfe79c: mov    w8, #1                                   
  cfe7a0: strb   w8, [x21, #0x7fa]                        
  cfe7a4: adrp   x8, #0x3063000                           
  cfe7a8: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfe7ac: ldr    x8, [x8]                                 
  cfe7b0: ldr    x8, [x8, #0xb8]                          
  cfe7b4: ldr    x0, [x8, #0x1c8]                         
  cfe7b8: cbz    x0, #0xcfe7d8                            
  cfe7bc: mov    x1, x20                                  
  cfe7c0: mov    x2, x19                                  
  cfe7c4: ldp    x29, x30, [sp, #0x20]                    
  cfe7c8: ldp    x20, x19, [sp, #0x10]                    
  cfe7cc: mov    x3, xzr                                  
  cfe7d0: ldr    x21, [sp], #0x30                         
  cfe7d4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfe7d8: str    x19, [x20, #0x108]                       
  cfe7dc: ldp    x29, x30, [sp, #0x20]                    
  cfe7e0: ldp    x20, x19, [sp, #0x10]                    
  cfe7e4: ldr    x21, [sp], #0x30                         
  cfe7e8: ret                                             

===== LoginMediator$$set_teamRaidData @ 0xcfda10 (132 bytes)
  cfda10: str    x21, [sp, #-0x30]!                       
  cfda14: stp    x20, x19, [sp, #0x10]                    
  cfda18: stp    x29, x30, [sp, #0x20]                    
  cfda1c: add    x29, sp, #0x20                           
  cfda20: adrp   x21, #0x31cc000                          
  cfda24: ldrb   w8, [x21, #0x7de]                        
  cfda28: mov    x19, x1                                  
  cfda2c: mov    x20, x0                                  
  cfda30: tbnz   w8, #0, #0xcfda4c                        
  cfda34: adrp   x8, #0x3030000                           
  cfda38: ldr    x8, [x8, #0x458]                         
  cfda3c: ldr    w0, [x8]                                 
  cfda40: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfda44: mov    w8, #1                                   
  cfda48: strb   w8, [x21, #0x7de]                        
  cfda4c: adrp   x8, #0x3063000                           
  cfda50: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfda54: ldr    x8, [x8]                                 
  cfda58: ldr    x8, [x8, #0xb8]                          
  cfda5c: ldr    x0, [x8, #0xe8]                          
  cfda60: cbz    x0, #0xcfda80                            
  cfda64: mov    x1, x20                                  
  cfda68: mov    x2, x19                                  
  cfda6c: ldp    x29, x30, [sp, #0x20]                    
  cfda70: ldp    x20, x19, [sp, #0x10]                    
  cfda74: mov    x3, xzr                                  
  cfda78: ldr    x21, [sp], #0x30                         
  cfda7c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfda80: str    x19, [x20, #0x98]                        
  cfda84: ldp    x29, x30, [sp, #0x20]                    
  cfda88: ldp    x20, x19, [sp, #0x10]                    
  cfda8c: ldr    x21, [sp], #0x30                         
  cfda90: ret                                             

===== LoginMediator$$set_towerUpdate @ 0xcfd828 (132 bytes)
  cfd828: str    x21, [sp, #-0x30]!                       
  cfd82c: stp    x20, x19, [sp, #0x10]                    
  cfd830: stp    x29, x30, [sp, #0x20]                    
  cfd834: add    x29, sp, #0x20                           
  cfd838: adrp   x21, #0x31cc000                          
  cfd83c: ldrb   w8, [x21, #0x7da]                        
  cfd840: mov    x19, x1                                  
  cfd844: mov    x20, x0                                  
  cfd848: tbnz   w8, #0, #0xcfd864                        
  cfd84c: adrp   x8, #0x2fe1000                           
  cfd850: ldr    x8, [x8, #0xdc8]                         
  cfd854: ldr    w0, [x8]                                 
  cfd858: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfd85c: mov    w8, #1                                   
  cfd860: strb   w8, [x21, #0x7da]                        
  cfd864: adrp   x8, #0x3063000                           
  cfd868: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfd86c: ldr    x8, [x8]                                 
  cfd870: ldr    x8, [x8, #0xb8]                          
  cfd874: ldr    x0, [x8, #0xc8]                          
  cfd878: cbz    x0, #0xcfd898                            
  cfd87c: mov    x1, x20                                  
  cfd880: mov    x2, x19                                  
  cfd884: ldp    x29, x30, [sp, #0x20]                    
  cfd888: ldp    x20, x19, [sp, #0x10]                    
  cfd88c: mov    x3, xzr                                  
  cfd890: ldr    x21, [sp], #0x30                         
  cfd894: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfd898: str    x19, [x20, #0x88]                        
  cfd89c: ldp    x29, x30, [sp, #0x20]                    
  cfd8a0: ldp    x20, x19, [sp, #0x10]                    
  cfd8a4: ldr    x21, [sp], #0x30                         
  cfd8a8: ret                                             

===== LoginMediator$$set_view @ 0xcfcc48 (132 bytes)
  cfcc48: str    x21, [sp, #-0x30]!                       
  cfcc4c: stp    x20, x19, [sp, #0x10]                    
  cfcc50: stp    x29, x30, [sp, #0x20]                    
  cfcc54: add    x29, sp, #0x20                           
  cfcc58: adrp   x21, #0x31cc000                          
  cfcc5c: ldrb   w8, [x21, #0x7c1]                        
  cfcc60: mov    x19, x1                                  
  cfcc64: mov    x20, x0                                  
  cfcc68: tbnz   w8, #0, #0xcfcc84                        
  cfcc6c: adrp   x8, #0x2fd7000                           
  cfcc70: ldr    x8, [x8, #0x4d0]                         
  cfcc74: ldr    w0, [x8]                                 
  cfcc78: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  cfcc7c: mov    w8, #1                                   
  cfcc80: strb   w8, [x21, #0x7c1]                        
  cfcc84: adrp   x8, #0x3063000                           
  cfcc88: ldr    x8, [x8, #0xf88]                         ; META LoginMediator_TypeInfo
  cfcc8c: ldr    x8, [x8]                                 
  cfcc90: ldr    x8, [x8, #0xb8]                          
  cfcc94: ldr    x0, [x8]                                 
  cfcc98: cbz    x0, #0xcfccb8                            
  cfcc9c: mov    x1, x20                                  
  cfcca0: mov    x2, x19                                  
  cfcca4: ldp    x29, x30, [sp, #0x20]                    
  cfcca8: ldp    x20, x19, [sp, #0x10]                    
  cfccac: mov    x3, xzr                                  
  cfccb0: ldr    x21, [sp], #0x30                         
  cfccb4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  cfccb8: str    x19, [x20, #0x28]                        
  cfccbc: ldp    x29, x30, [sp, #0x20]                    
  cfccc0: ldp    x20, x19, [sp, #0x10]                    
  cfccc4: ldr    x21, [sp], #0x30                         
  cfccc8: ret                                             

===== LoginMediator.<WaitInitData>d__143$$.ctor @ 0xd019e4 (44 bytes)
  d019e4: stp    x20, x19, [sp, #-0x20]!                  
  d019e8: stp    x29, x30, [sp, #0x10]                    
  d019ec: add    x29, sp, #0x10                           
  d019f0: mov    w19, w1                                  
  d019f4: mov    x1, xzr                                  
  d019f8: mov    x20, x0                                  
  d019fc: bl     #0x1ca54c0                               ; System.Object$$.ctor
  d01a00: str    w19, [x20, #0x10]                        
  d01a04: ldp    x29, x30, [sp, #0x10]                    
  d01a08: ldp    x20, x19, [sp], #0x20                    
  d01a0c: ret                                             

===== LoginMediator.<WaitInitData>d__143$$MoveNext @ 0xd02610 (468 bytes)
  d02610: str    d8, [sp, #-0x30]!                        
  d02614: str    x21, [sp, #8]                            
  d02618: stp    x20, x19, [sp, #0x10]                    
  d0261c: stp    x29, x30, [sp, #0x20]                    
  d02620: add    x29, sp, #0x20                           
  d02624: adrp   x19, #0x31cc000                          
  d02628: ldrb   w8, [x19, #0x815]                        
  d0262c: mov    x20, x0                                  
  d02630: tbnz   w8, #0, #0xd0264c                        
  d02634: adrp   x8, #0x3076000                           
  d02638: ldr    x8, [x8, #0x5d0]                         
  d0263c: ldr    w0, [x8]                                 
  d02640: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02644: mov    w8, #1                                   
  d02648: strb   w8, [x19, #0x815]                        
  d0264c: ldr    w8, [x20, #0x10]                         
  d02650: ldr    x19, [x20, #0x20]                        
  d02654: cmp    w8, #2                                   
  d02658: b.eq   #0xd026a8                                
  d0265c: cmp    w8, #1                                   
  d02660: b.eq   #0xd026b8                                
  d02664: cbnz   w8, #0xd027bc                            
  d02668: mov    w8, #-1                                  
  d0266c: str    w8, [x20, #0x10]                         
  d02670: cbnz   x19, #0xd0267c                           
  d02674: mov    x0, xzr                                  
  d02678: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d0267c: mov    x0, x19                                  
  d02680: mov    x1, xzr                                  
  d02684: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d02688: adrp   x8, #0x3026000                           
  d0268c: ldr    x8, [x8, #0xc80]                         ; MMETH Method$EventDispatcherExtension.Open<PreOpenView>()
  d02690: mov    x1, xzr                                  
  d02694: ldr    x2, [x8]                                 
  d02698: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  d0269c: str    wzr, [x20, #0x2c]                        
  d026a0: cbnz   x19, #0xd026cc                           
  d026a4: b      #0xd026c4                                
  d026a8: mov    w8, #-1                                  
  d026ac: str    w8, [x20, #0x10]                         
  d026b0: cbnz   x19, #0xd026f4                           
  d026b4: b      #0xd026ec                                
  d026b8: mov    w8, #-1                                  
  d026bc: str    w8, [x20, #0x10]                         
  d026c0: cbnz   x19, #0xd026cc                           
  d026c4: mov    x0, xzr                                  
  d026c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d026cc: mov    x0, x19                                  
  d026d0: bl     #0xcfceb4                                ; LoginMediator$$get_playerData
  d026d4: mov    x21, x0                                  
  d026d8: cbnz   x21, #0xd026e0                           
  d026dc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d026e0: ldrb   w8, [x21, #0x101]                        
  d026e4: cbz    w8, #0xd02784                            
  d026e8: cbnz   x19, #0xd026f4                           
  d026ec: mov    x0, xzr                                  
  d026f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d026f4: mov    x0, x19                                  
  d026f8: bl     #0xcfd200                                ; LoginMediator$$get_guideData
  d026fc: mov    x21, x0                                  
  d02700: cbnz   x21, #0xd02708                           
  d02704: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d02708: mov    x0, x21                                  
  d0270c: mov    x1, xzr                                  
  d02710: bl     #0xf5eea8                                ; GuideData$$get_initialized
  d02714: tbz    w0, #0, #0xd02750                        
  d02718: adrp   x8, #0x3033000                           
  d0271c: ldr    x8, [x8, #0x638]                         ; META UniCore.SceneMgr_TypeInfo
  d02720: ldr    x0, [x8]                                 
  d02724: ldrb   w8, [x0, #0x127]                         
  d02728: tbz    w8, #1, #0xd02738                        
  d0272c: ldr    w8, [x0, #0xd8]                          
  d02730: cbnz   w8, #0xd02738                            
  d02734: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d02738: adrp   x8, #0x2fc1000                           
  d0273c: ldr    x8, [x8, #0x1c0]                         ; STR "Lobby"
  d02740: mov    x1, xzr                                  
  d02744: ldr    x0, [x8]                                 
  d02748: bl     #0x143f988                               ; UniCore.SceneMgr$$SetNextMode
  d0274c: b      #0xd027bc                                
  d02750: ldr    s8, [x20, #0x2c]                         
  d02754: mov    x0, xzr                                  
  d02758: bl     #0x1c647ec                               ; UnityEngine.Time$$get_unscaledDeltaTime
  d0275c: ldr    s1, [x20, #0x28]                         
  d02760: fadd   s0, s8, s0                               
  d02764: str    s0, [x20, #0x2c]                         
  d02768: fcmp   s0, s1                                   
  d0276c: b.gt   #0xd027a4                                
  d02770: mov    w8, #2                                   
  d02774: str    xzr, [x20, #0x18]                        
  d02778: str    w8, [x20, #0x10]                         
  d0277c: mov    w0, #1                                   
  d02780: b      #0xd027c0                                
  d02784: ldr    s8, [x20, #0x2c]                         
  d02788: mov    x0, xzr                                  
  d0278c: bl     #0x1c647ec                               ; UnityEngine.Time$$get_unscaledDeltaTime
  d02790: ldr    s1, [x20, #0x28]                         
  d02794: fadd   s0, s8, s0                               
  d02798: str    s0, [x20, #0x2c]                         
  d0279c: fcmp   s0, s1                                   
  d027a0: b.le   #0xd027d4                                
  d027a4: cbnz   x19, #0xd027b0                           
  d027a8: mov    x0, xzr                                  
  d027ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d027b0: mov    x0, x19                                  
  d027b4: mov    x1, xzr                                  
  d027b8: bl     #0xd00408                                ; LoginMediator$$LoginFailed
  d027bc: mov    w0, wzr                                  
  d027c0: ldp    x29, x30, [sp, #0x20]                    
  d027c4: ldp    x20, x19, [sp, #0x10]                    
  d027c8: ldr    x21, [sp, #8]                            
  d027cc: ldr    d8, [sp], #0x30                          
  d027d0: ret                                             
  d027d4: mov    w0, #1                                   
  d027d8: str    xzr, [x20, #0x18]                        
  d027dc: str    w0, [x20, #0x10]                         
  d027e0: b      #0xd027c0                                

===== LoginMediator.<WaitInitData>d__143$$System.Collections.Generic.IEnumerator<System.Object>.get_Current @ 0xd027e4 (8 bytes)
  d027e4: ldr    x0, [x0, #0x18]                          
  d027e8: ret                                             

===== LoginMediator.<WaitInitData>d__143$$System.Collections.IEnumerator.Reset @ 0xd027ec (104 bytes)
  d027ec: str    x19, [sp, #-0x20]!                       
  d027f0: stp    x29, x30, [sp, #0x10]                    
  d027f4: add    x29, sp, #0x10                           
  d027f8: adrp   x19, #0x31cc000                          
  d027fc: ldrb   w8, [x19, #0x816]                        
  d02800: tbnz   w8, #0, #0xd0281c                        
  d02804: adrp   x8, #0x2fdd000                           
  d02808: ldr    x8, [x8, #0xbc8]                         
  d0280c: ldr    w0, [x8]                                 
  d02810: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02814: mov    w8, #1                                   
  d02818: strb   w8, [x19, #0x816]                        
  d0281c: adrp   x8, #0x2fe3000                           
  d02820: ldr    x8, [x8, #0xc20]                         ; META System.NotSupportedException_TypeInfo
  d02824: ldr    x0, [x8]                                 
  d02828: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d0282c: mov    x1, xzr                                  
  d02830: mov    x19, x0                                  
  d02834: bl     #0x174b020                               ; System.NotSupportedException$$.ctor
  d02838: adrp   x8, #0x2fcd000                           
  d0283c: ldr    x8, [x8, #0xc98]                         ; MMETH Method$LoginMediator.<WaitInitData>d__143.System.Collections.IEnumerator.Reset()
  d02840: mov    x0, x19                                  
  d02844: mov    x1, xzr                                  
  d02848: ldr    x2, [x8]                                 
  d0284c: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  d02850: bl     #0xc4ea5c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x6fc24

===== LoginMediator.<WaitInitData>d__143$$System.Collections.IEnumerator.get_Current @ 0xd02854 (8 bytes)
  d02854: ldr    x0, [x0, #0x18]                          
  d02858: ret                                             

===== LoginMediator.<WaitInitData>d__143$$System.IDisposable.Dispose @ 0xd0260c (4 bytes)
  d0260c: ret                                             

===== LoginMediator.<WaitLoginResult>d__142$$.ctor @ 0xd018ec (44 bytes)
  d018ec: stp    x20, x19, [sp, #-0x20]!                  
  d018f0: stp    x29, x30, [sp, #0x10]                    
  d018f4: add    x29, sp, #0x10                           
  d018f8: mov    w19, w1                                  
  d018fc: mov    x1, xzr                                  
  d01900: mov    x20, x0                                  
  d01904: bl     #0x1ca54c0                               ; System.Object$$.ctor
  d01908: str    w19, [x20, #0x10]                        
  d0190c: ldp    x29, x30, [sp, #0x10]                    
  d01910: ldp    x20, x19, [sp], #0x20                    
  d01914: ret                                             

===== LoginMediator.<WaitLoginResult>d__142$$MoveNext @ 0xd02860 (232 bytes)
  d02860: str    d8, [sp, #-0x30]!                        
  d02864: stp    x20, x19, [sp, #0x10]                    
  d02868: stp    x29, x30, [sp, #0x20]                    
  d0286c: add    x29, sp, #0x20                           
  d02870: adrp   x20, #0x31cc000                          
  d02874: ldrb   w8, [x20, #0x817]                        
  d02878: mov    x19, x0                                  
  d0287c: tbnz   w8, #0, #0xd02898                        
  d02880: adrp   x8, #0x2fd5000                           
  d02884: ldr    x8, [x8, #0xbe8]                         
  d02888: ldr    w0, [x8]                                 
  d0288c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02890: mov    w8, #1                                   
  d02894: strb   w8, [x20, #0x817]                        
  d02898: ldr    w8, [x19, #0x10]                         
  d0289c: ldr    x20, [x19, #0x20]                        
  d028a0: cmp    w8, #1                                   
  d028a4: b.eq   #0xd02914                                
  d028a8: cbnz   w8, #0xd02934                            
  d028ac: mov    w8, #-1                                  
  d028b0: str    w8, [x19, #0x10]                         
  d028b4: cbnz   x20, #0xd028c0                           
  d028b8: mov    x0, xzr                                  
  d028bc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d028c0: mov    x0, x20                                  
  d028c4: mov    x1, xzr                                  
  d028c8: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d028cc: adrp   x8, #0x3026000                           
  d028d0: ldr    x8, [x8, #0xc80]                         ; MMETH Method$EventDispatcherExtension.Open<PreOpenView>()
  d028d4: mov    x1, xzr                                  
  d028d8: ldr    x2, [x8]                                 
  d028dc: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  d028e0: adrp   x8, #0x301d000                           
  d028e4: ldr    s8, [x19, #0x28]                         
  d028e8: ldr    x8, [x8, #0xf08]                         ; META UnityEngine.WaitForSeconds_TypeInfo
  d028ec: ldr    x0, [x8]                                 
  d028f0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d028f4: mov    v0.16b, v8.16b                           
  d028f8: mov    x1, xzr                                  
  d028fc: mov    x20, x0                                  
  d02900: bl     #0x239e7ec                               ; UnityEngine.WaitForSeconds$$.ctor
  d02904: mov    w0, #1                                   
  d02908: str    x20, [x19, #0x18]                        
  d0290c: str    w0, [x19, #0x10]                         
  d02910: b      #0xd02938                                
  d02914: mov    w8, #-1                                  
  d02918: str    w8, [x19, #0x10]                         
  d0291c: cbnz   x20, #0xd02928                           
  d02920: mov    x0, xzr                                  
  d02924: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d02928: mov    x0, x20                                  
  d0292c: mov    x1, xzr                                  
  d02930: bl     #0xd00408                                ; LoginMediator$$LoginFailed
  d02934: mov    w0, wzr                                  
  d02938: ldp    x29, x30, [sp, #0x20]                    
  d0293c: ldp    x20, x19, [sp, #0x10]                    
  d02940: ldr    d8, [sp], #0x30                          
  d02944: ret                                             

===== LoginMediator.<WaitLoginResult>d__142$$System.Collections.Generic.IEnumerator<System.Object>.get_Current @ 0xd02948 (8 bytes)
  d02948: ldr    x0, [x0, #0x18]                          
  d0294c: ret                                             

===== LoginMediator.<WaitLoginResult>d__142$$System.Collections.IEnumerator.Reset @ 0xd02950 (104 bytes)
  d02950: str    x19, [sp, #-0x20]!                       
  d02954: stp    x29, x30, [sp, #0x10]                    
  d02958: add    x29, sp, #0x10                           
  d0295c: adrp   x19, #0x31cc000                          
  d02960: ldrb   w8, [x19, #0x818]                        
  d02964: tbnz   w8, #0, #0xd02980                        
  d02968: adrp   x8, #0x302f000                           
  d0296c: ldr    x8, [x8, #0x6f0]                         
  d02970: ldr    w0, [x8]                                 
  d02974: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d02978: mov    w8, #1                                   
  d0297c: strb   w8, [x19, #0x818]                        
  d02980: adrp   x8, #0x2fe3000                           
  d02984: ldr    x8, [x8, #0xc20]                         ; META System.NotSupportedException_TypeInfo
  d02988: ldr    x0, [x8]                                 
  d0298c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d02990: mov    x1, xzr                                  
  d02994: mov    x19, x0                                  
  d02998: bl     #0x174b020                               ; System.NotSupportedException$$.ctor
  d0299c: adrp   x8, #0x3028000                           
  d029a0: ldr    x8, [x8, #0xec0]                         ; MMETH Method$LoginMediator.<WaitLoginResult>d__142.System.Collections.IEnumerator.Reset()
  d029a4: mov    x0, x19                                  
  d029a8: mov    x1, xzr                                  
  d029ac: ldr    x2, [x8]                                 
  d029b0: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  d029b4: bl     #0xc4ea5c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x6fc24

===== LoginMediator.<WaitLoginResult>d__142$$System.Collections.IEnumerator.get_Current @ 0xd029b8 (8 bytes)
  d029b8: ldr    x0, [x0, #0x18]                          
  d029bc: ret                                             

===== LoginMediator.<WaitLoginResult>d__142$$System.IDisposable.Dispose @ 0xd0285c (4 bytes)
  d0285c: ret                                             

===== PlayerData$$InitData @ 0xe16694 (1948 bytes)
  e16694: sub    sp, sp, #0x50                            
  e16698: stp    x24, x23, [sp, #0x10]                    
  e1669c: stp    x22, x21, [sp, #0x20]                    
  e166a0: stp    x20, x19, [sp, #0x30]                    
  e166a4: stp    x29, x30, [sp, #0x40]                    
  e166a8: add    x29, sp, #0x40                           
  e166ac: adrp   x21, #0x31cd000                          
  e166b0: ldrb   w8, [x21, #0x168]                        
  e166b4: mov    x20, x1                                  
  e166b8: mov    x19, x0                                  
  e166bc: tbnz   w8, #0, #0xe166d8                        
  e166c0: adrp   x8, #0x3003000                           
  e166c4: ldr    x8, [x8, #0xe40]                         
  e166c8: ldr    w0, [x8]                                 
  e166cc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e166d0: mov    w8, #1                                   
  e166d4: strb   w8, [x21, #0x168]                        
  e166d8: adrp   x8, #0x3035000                           
  e166dc: ldr    x8, [x8, #0xf00]                         ; META PlayerData_TypeInfo
  e166e0: ldr    x8, [x8]                                 
  e166e4: ldr    x8, [x8, #0xb8]                          
  e166e8: ldr    x0, [x8, #0x70]                          
  e166ec: cbz    x0, #0xe16714                            
  e166f0: mov    x1, x19                                  
  e166f4: mov    x2, x20                                  
  e166f8: ldp    x29, x30, [sp, #0x40]                    
  e166fc: ldp    x20, x19, [sp, #0x30]                    
  e16700: ldp    x22, x21, [sp, #0x20]                    
  e16704: ldp    x24, x23, [sp, #0x10]                    
  e16708: mov    x3, xzr                                  
  e1670c: add    sp, sp, #0x50                            
  e16710: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e16714: mov    w8, #1                                   
  e16718: strb   w8, [x19, #0x138]                        
  e1671c: cbnz   x20, #0xe16728                           
  e16720: mov    x0, xzr                                  
  e16724: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16728: adrp   x10, #0x2ff0000                          
  e1672c: ldr    x8, [x20]                                
  e16730: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  e16734: ldrh   w9, [x8, #0x11e]                         
  e16738: ldr    x1, [x10]                                
  e1673c: cbz    x9, #0xe16768                            
  e16740: ldr    x11, [x8, #0xb0]                         
  e16744: mov    x10, xzr                                 
  e16748: add    x11, x11, #8                             
  e1674c: ldur   x12, [x11, #-8]                          
  e16750: cmp    x12, x1                                  
  e16754: b.eq   #0xe16778                                
  e16758: add    x10, x10, #1                             
  e1675c: cmp    x10, x9                                  
  e16760: add    x11, x11, #0x10                          
  e16764: b.lo   #0xe1674c                                
  e16768: mov    w2, #4                                   
  e1676c: mov    x0, x20                                  
  e16770: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e16774: b      #0xe16788                                
  e16778: ldr    w9, [x11]                                
  e1677c: add    w9, w9, #4                               
  e16780: add    x8, x8, w9, uxtw #4                      
  e16784: add    x0, x8, #0x128                           
  e16788: ldp    x8, x1, [x0]                             
  e1678c: mov    x0, x20                                  
  e16790: blr    x8                                       
  e16794: mov    x21, x0                                  
  e16798: cbz    x21, #0xe167d0                           
  e1679c: adrp   x8, #0x3005000                           
  e167a0: ldr    x8, [x8, #0x878]                         ; META msg.SCInitData_TypeInfo
  e167a4: ldr    x9, [x21]                                
  e167a8: ldr    x8, [x8]                                 
  e167ac: ldrb   w11, [x9, #0x120]                        
  e167b0: ldrb   w10, [x8, #0x120]                        
  e167b4: cmp    w11, w10                                 
  e167b8: b.lo   #0xe167d0                                
  e167bc: ldr    x9, [x9, #0xc8]                          
  e167c0: add    x9, x9, x10, lsl #3                      
  e167c4: ldur   x9, [x9, #-8]                            
  e167c8: cmp    x9, x8                                   
  e167cc: b.eq   #0xe16e28                                
  e167d0: mov    x0, xzr                                  
  e167d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e167d8: mov    x21, xzr                                 
  e167dc: mov    w23, #1                                  
  e167e0: mov    x0, x21                                  
  e167e4: mov    x1, xzr                                  
  e167e8: bl     #0x1c4c210                               ; msg.SCInitData$$get_human
  e167ec: mov    x20, x0                                  
  e167f0: cbz    x20, #0xe16808                           
  e167f4: mov    x0, x20                                  
  e167f8: mov    x1, xzr                                  
  e167fc: bl     #0x1cfad90                               ; msg.DHuman$$get_id
  e16800: str    x0, [x19, #0x10]                         
  e16804: b      #0xe16824                                
  e16808: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e1680c: mov    x0, xzr                                  
  e16810: mov    x1, xzr                                  
  e16814: bl     #0x1cfad90                               ; msg.DHuman$$get_id
  e16818: str    x0, [x19, #0x10]                         
  e1681c: mov    x0, xzr                                  
  e16820: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16824: mov    x0, x20                                  
  e16828: mov    x1, xzr                                  
  e1682c: bl     #0x1cfae64                               ; msg.DHuman$$get_showId
  e16830: str    x0, [x19, #0x18]                         
  e16834: mov    x0, xzr                                  
  e16838: bl     #0xeb3768                                ; SinaSDK$$Get
  e1683c: ldr    x24, [x19, #0x10]                        
  e16840: mov    x22, x0                                  
  e16844: cbnz   x22, #0xe1684c                           
  e16848: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e1684c: mov    x0, xzr                                  
  e16850: str    x24, [x22, #0x18]                        
  e16854: bl     #0xeb3768                                ; SinaSDK$$Get
  e16858: ldr    x24, [x19, #0x18]                        
  e1685c: mov    x22, x0                                  
  e16860: cbnz   x22, #0xe16868                           
  e16864: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16868: str    x24, [x22, #0x20]                        
  e1686c: cbz    w23, #0xe16878                           
  e16870: mov    x0, xzr                                  
  e16874: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16878: mov    x0, x21                                  
  e1687c: mov    x1, xzr                                  
  e16880: bl     #0x1c4c160                               ; msg.SCInitData$$get_createTime
  e16884: mov    x8, #0xf7cf                              
  e16888: movk   x8, #0xe353, lsl #16                     
  e1688c: movk   x8, #0x9ba5, lsl #32                     
  e16890: movk   x8, #0x20c4, lsl #48                     
  e16894: smulh  x8, x0, x8                               
  e16898: lsr    x9, x8, #0x3f                            
  e1689c: lsr    x8, x8, #7                               
  e168a0: add    w8, w8, w9                               
  e168a4: mov    x0, xzr                                  
  e168a8: str    w8, [x19, #0x13c]                        
  e168ac: bl     #0xeb3768                                ; SinaSDK$$Get
  e168b0: ldr    w22, [x19, #0x13c]                       
  e168b4: mov    x21, x0                                  
  e168b8: cbnz   x21, #0xe168c0                           
  e168bc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e168c0: str    w22, [x21, #0x28]                        
  e168c4: cbz    x20, #0xe1692c                           
  e168c8: mov    x0, x20                                  
  e168cc: mov    x1, xzr                                  
  e168d0: bl     #0x1cfaef8                               ; msg.DHuman$$get_name
  e168d4: str    x0, [x19, #0x20]                         
  e168d8: mov    x0, x20                                  
  e168dc: mov    x1, xzr                                  
  e168e0: bl     #0x1cfafa0                               ; msg.DHuman$$get_level
  e168e4: str    w0, [x19, #0x38]                         
  e168e8: mov    x0, x20                                  
  e168ec: mov    x1, xzr                                  
  e168f0: bl     #0x1cfbbb8                               ; msg.DHuman$$get_vipLevel
  e168f4: str    w0, [x19, #0x3c]                         
  e168f8: mov    x0, x20                                  
  e168fc: mov    x1, xzr                                  
  e16900: bl     #0x1cfc4d8                               ; msg.DHuman$$get_userExp
  e16904: str    x0, [x19, #0x40]                         
  e16908: mov    x0, x20                                  
  e1690c: mov    x1, xzr                                  
  e16910: bl     #0x1cfbd60                               ; msg.DHuman$$get_titleSn
  e16914: str    w0, [x19, #0x28]                         
  e16918: mov    x0, x20                                  
  e1691c: mov    x1, xzr                                  
  e16920: bl     #0x1cfc188                               ; msg.DHuman$$get_serverId
  e16924: str    w0, [x19, #0xe0]                         
  e16928: b      #0xe169c4                                
  e1692c: mov    x0, xzr                                  
  e16930: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16934: mov    x0, xzr                                  
  e16938: mov    x1, xzr                                  
  e1693c: bl     #0x1cfaef8                               ; msg.DHuman$$get_name
  e16940: str    x0, [x19, #0x20]                         
  e16944: mov    x0, xzr                                  
  e16948: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e1694c: mov    x0, xzr                                  
  e16950: mov    x1, xzr                                  
  e16954: bl     #0x1cfafa0                               ; msg.DHuman$$get_level
  e16958: str    w0, [x19, #0x38]                         
  e1695c: mov    x0, xzr                                  
  e16960: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16964: mov    x0, xzr                                  
  e16968: mov    x1, xzr                                  
  e1696c: bl     #0x1cfbbb8                               ; msg.DHuman$$get_vipLevel
  e16970: str    w0, [x19, #0x3c]                         
  e16974: mov    x0, xzr                                  
  e16978: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e1697c: mov    x0, xzr                                  
  e16980: mov    x1, xzr                                  
  e16984: bl     #0x1cfc4d8                               ; msg.DHuman$$get_userExp
  e16988: str    x0, [x19, #0x40]                         
  e1698c: mov    x0, xzr                                  
  e16990: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16994: mov    x0, xzr                                  
  e16998: mov    x1, xzr                                  
  e1699c: bl     #0x1cfbd60                               ; msg.DHuman$$get_titleSn
  e169a0: str    w0, [x19, #0x28]                         
  e169a4: mov    x0, xzr                                  
  e169a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e169ac: mov    x0, xzr                                  
  e169b0: mov    x1, xzr                                  
  e169b4: bl     #0x1cfc188                               ; msg.DHuman$$get_serverId
  e169b8: str    w0, [x19, #0xe0]                         
  e169bc: mov    x0, xzr                                  
  e169c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e169c4: mov    x0, x20                                  
  e169c8: mov    x1, xzr                                  
  e169cc: bl     #0x1cfebac                               ; msg.DHuman$$get_prop
  e169d0: mov    x21, x0                                  
  e169d4: cbnz   x21, #0xe169dc                           
  e169d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e169dc: mov    x0, x21                                  
  e169e0: mov    x1, xzr                                  
  e169e4: bl     #0x21892b4                               ; msg.DProp$$get_hpMax
  e169e8: str    w0, [x19, #0x48]                         
  e169ec: cbnz   x20, #0xe169f8                           
  e169f0: mov    x0, xzr                                  
  e169f4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e169f8: mov    x0, x20                                  
  e169fc: mov    x1, xzr                                  
  e16a00: bl     #0x1cfebac                               ; msg.DHuman$$get_prop
  e16a04: mov    x21, x0                                  
  e16a08: cbnz   x21, #0xe16a10                           
  e16a0c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16a10: mov    x0, x21                                  
  e16a14: mov    x1, xzr                                  
  e16a18: bl     #0x218945c                               ; msg.DProp$$get_atk
  e16a1c: str    w0, [x19, #0x4c]                         
  e16a20: cbnz   x20, #0xe16a2c                           
  e16a24: mov    x0, xzr                                  
  e16a28: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16a2c: mov    x0, x20                                  
  e16a30: mov    x1, xzr                                  
  e16a34: bl     #0x1cfebac                               ; msg.DHuman$$get_prop
  e16a38: mov    x21, x0                                  
  e16a3c: cbnz   x21, #0xe16a44                           
  e16a40: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16a44: mov    x0, x21                                  
  e16a48: mov    x1, xzr                                  
  e16a4c: bl     #0x2189530                               ; msg.DProp$$get_def
  e16a50: str    w0, [x19, #0x50]                         
  e16a54: cbz    x20, #0xe16b6c                           
  e16a58: mov    x0, x20                                  
  e16a5c: mov    x1, xzr                                  
  e16a60: bl     #0x1cfc25c                               ; msg.DHuman$$get_gold
  e16a64: str    x0, [x19, #0x58]                         
  e16a68: mov    x0, x20                                  
  e16a6c: mov    x1, xzr                                  
  e16a70: bl     #0x1cfc330                               ; msg.DHuman$$get_diamond
  e16a74: str    x0, [x19, #0x60]                         
  e16a78: mov    x0, x20                                  
  e16a7c: mov    x1, xzr                                  
  e16a80: bl     #0x1cfb3c4                               ; msg.DHuman$$get_actValue
  e16a84: str    x0, [x19, #0x68]                         
  e16a88: mov    x0, x20                                  
  e16a8c: mov    x1, xzr                                  
  e16a90: bl     #0x1cfc5ac                               ; msg.DHuman$$get_expedition
  e16a94: str    x0, [x19, #0x70]                         
  e16a98: mov    x0, x20                                  
  e16a9c: mov    x1, xzr                                  
  e16aa0: bl     #0x1cfc680                               ; msg.DHuman$$get_compete
  e16aa4: str    x0, [x19, #0x78]                         
  e16aa8: mov    x0, x20                                  
  e16aac: mov    x1, xzr                                  
  e16ab0: bl     #0x1cfb5d4                               ; msg.DHuman$$get_combat
  e16ab4: str    w0, [x19, #0x88]                         
  e16ab8: mov    x0, x20                                  
  e16abc: mov    x1, xzr                                  
  e16ac0: bl     #0x1cfc8fc                               ; msg.DHuman$$get_normalCard
  e16ac4: str    x0, [x19, #0x90]                         
  e16ac8: mov    x0, x20                                  
  e16acc: mov    x1, xzr                                  
  e16ad0: bl     #0x1cfc9d0                               ; msg.DHuman$$get_stone
  e16ad4: str    x0, [x19, #0x98]                         
  e16ad8: mov    x0, x20                                  
  e16adc: mov    x1, xzr                                  
  e16ae0: bl     #0x1cfc754                               ; msg.DHuman$$get_exploit
  e16ae4: str    x0, [x19, #0xa0]                         
  e16ae8: mov    x0, x20                                  
  e16aec: mov    x1, xzr                                  
  e16af0: bl     #0x1cfcdfc                               ; msg.DHuman$$get_EvolveStone
  e16af4: str    x0, [x19, #0x80]                         
  e16af8: mov    x0, x20                                  
  e16afc: mov    x1, xzr                                  
  e16b00: bl     #0x1cfc828                               ; msg.DHuman$$get_talent
  e16b04: str    x0, [x19, #0xa8]                         
  e16b08: mov    x0, x20                                  
  e16b0c: mov    x1, xzr                                  
  e16b10: bl     #0x1cfbfe0                               ; msg.DHuman$$get_talentLevel
  e16b14: str    w0, [x19, #0xb0]                         
  e16b18: mov    x0, x20                                  
  e16b1c: mov    x1, xzr                                  
  e16b20: bl     #0x1cfcaa4                               ; msg.DHuman$$get_hallowsUp
  e16b24: str    x0, [x19, #0xb8]                         
  e16b28: mov    x0, x20                                  
  e16b2c: mov    x1, xzr                                  
  e16b30: bl     #0x1cfcb78                               ; msg.DHuman$$get_hallowsPolish
  e16b34: str    x0, [x19, #0xc0]                         
  e16b38: mov    x0, x20                                  
  e16b3c: mov    x1, xzr                                  
  e16b40: bl     #0x1cfcc4c                               ; msg.DHuman$$get_angelUp
  e16b44: str    x0, [x19, #0xc8]                         
  e16b48: mov    x0, x20                                  
  e16b4c: mov    x1, xzr                                  
  e16b50: bl     #0x1cfc8fc                               ; msg.DHuman$$get_normalCard
  e16b54: str    x0, [x19, #0xd0]                         
  e16b58: mov    x0, x20                                  
  e16b5c: mov    x1, xzr                                  
  e16b60: bl     #0x1cfced4                               ; msg.DHuman$$get_driverShowSn
  e16b64: str    w0, [x19, #0xd8]                         
  e16b68: b      #0xe16d0c                                
  e16b6c: mov    x0, xzr                                  
  e16b70: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16b74: mov    x0, xzr                                  
  e16b78: mov    x1, xzr                                  
  e16b7c: bl     #0x1cfc25c                               ; msg.DHuman$$get_gold
  e16b80: str    x0, [x19, #0x58]                         
  e16b84: mov    x0, xzr                                  
  e16b88: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16b8c: mov    x0, xzr                                  
  e16b90: mov    x1, xzr                                  
  e16b94: bl     #0x1cfc330                               ; msg.DHuman$$get_diamond
  e16b98: str    x0, [x19, #0x60]                         
  e16b9c: mov    x0, xzr                                  
  e16ba0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16ba4: mov    x0, xzr                                  
  e16ba8: mov    x1, xzr                                  
  e16bac: bl     #0x1cfb3c4                               ; msg.DHuman$$get_actValue
  e16bb0: str    x0, [x19, #0x68]                         
  e16bb4: mov    x0, xzr                                  
  e16bb8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16bbc: mov    x0, xzr                                  
  e16bc0: mov    x1, xzr                                  
  e16bc4: bl     #0x1cfc5ac                               ; msg.DHuman$$get_expedition
  e16bc8: str    x0, [x19, #0x70]                         
  e16bcc: mov    x0, xzr                                  
  e16bd0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16bd4: mov    x0, xzr                                  
  e16bd8: mov    x1, xzr                                  
  e16bdc: bl     #0x1cfc680                               ; msg.DHuman$$get_compete
  e16be0: str    x0, [x19, #0x78]                         
  e16be4: mov    x0, xzr                                  
  e16be8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16bec: mov    x0, xzr                                  
  e16bf0: mov    x1, xzr                                  
  e16bf4: bl     #0x1cfb5d4                               ; msg.DHuman$$get_combat
  e16bf8: str    w0, [x19, #0x88]                         
  e16bfc: mov    x0, xzr                                  
  e16c00: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c04: mov    x0, xzr                                  
  e16c08: mov    x1, xzr                                  
  e16c0c: bl     #0x1cfc8fc                               ; msg.DHuman$$get_normalCard
  e16c10: str    x0, [x19, #0x90]                         
  e16c14: mov    x0, xzr                                  
  e16c18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c1c: mov    x0, xzr                                  
  e16c20: mov    x1, xzr                                  
  e16c24: bl     #0x1cfc9d0                               ; msg.DHuman$$get_stone
  e16c28: str    x0, [x19, #0x98]                         
  e16c2c: mov    x0, xzr                                  
  e16c30: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c34: mov    x0, xzr                                  
  e16c38: mov    x1, xzr                                  
  e16c3c: bl     #0x1cfc754                               ; msg.DHuman$$get_exploit
  e16c40: str    x0, [x19, #0xa0]                         
  e16c44: mov    x0, xzr                                  
  e16c48: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c4c: mov    x0, xzr                                  
  e16c50: mov    x1, xzr                                  
  e16c54: bl     #0x1cfcdfc                               ; msg.DHuman$$get_EvolveStone
  e16c58: str    x0, [x19, #0x80]                         
  e16c5c: mov    x0, xzr                                  
  e16c60: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c64: mov    x0, xzr                                  
  e16c68: mov    x1, xzr                                  
  e16c6c: bl     #0x1cfc828                               ; msg.DHuman$$get_talent
  e16c70: str    x0, [x19, #0xa8]                         
  e16c74: mov    x0, xzr                                  
  e16c78: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c7c: mov    x0, xzr                                  
  e16c80: mov    x1, xzr                                  
  e16c84: bl     #0x1cfbfe0                               ; msg.DHuman$$get_talentLevel
  e16c88: str    w0, [x19, #0xb0]                         
  e16c8c: mov    x0, xzr                                  
  e16c90: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16c94: mov    x0, xzr                                  
  e16c98: mov    x1, xzr                                  
  e16c9c: bl     #0x1cfcaa4                               ; msg.DHuman$$get_hallowsUp
  e16ca0: str    x0, [x19, #0xb8]                         
  e16ca4: mov    x0, xzr                                  
  e16ca8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16cac: mov    x0, xzr                                  
  e16cb0: mov    x1, xzr                                  
  e16cb4: bl     #0x1cfcb78                               ; msg.DHuman$$get_hallowsPolish
  e16cb8: str    x0, [x19, #0xc0]                         
  e16cbc: mov    x0, xzr                                  
  e16cc0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16cc4: mov    x0, xzr                                  
  e16cc8: mov    x1, xzr                                  
  e16ccc: bl     #0x1cfcc4c                               ; msg.DHuman$$get_angelUp
  e16cd0: str    x0, [x19, #0xc8]                         
  e16cd4: mov    x0, xzr                                  
  e16cd8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16cdc: mov    x0, xzr                                  
  e16ce0: mov    x1, xzr                                  
  e16ce4: bl     #0x1cfc8fc                               ; msg.DHuman$$get_normalCard
  e16ce8: str    x0, [x19, #0xd0]                         
  e16cec: mov    x0, xzr                                  
  e16cf0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16cf4: mov    x0, xzr                                  
  e16cf8: mov    x1, xzr                                  
  e16cfc: bl     #0x1cfced4                               ; msg.DHuman$$get_driverShowSn
  e16d00: str    w0, [x19, #0xd8]                         
  e16d04: mov    x0, xzr                                  
  e16d08: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16d0c: mov    x0, x20                                  
  e16d10: mov    x1, xzr                                  
  e16d14: bl     #0x1cfc188                               ; msg.DHuman$$get_serverId
  e16d18: str    w0, [x19, #0xdc]                         
  e16d1c: mov    x0, x19                                  
  e16d20: bl     #0xe15950                                ; PlayerData$$get_dispatcher
  e16d24: adrp   x8, #0x2ff5000                           
  e16d28: ldr    x8, [x8, #0xb08]                         ; META LobbyEvent_TypeInfo
  e16d2c: mov    x20, x0                                  
  e16d30: add    x1, sp, #0xc                             
  e16d34: ldr    x0, [x8]                                 
  e16d38: mov    w8, #0x16                                
  e16d3c: str    w8, [sp, #0xc]                           
  e16d40: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e16d44: mov    x21, x0                                  
  e16d48: cbnz   x20, #0xe16d54                           
  e16d4c: mov    x0, xzr                                  
  e16d50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e16d54: adrp   x10, #0x2fde000                          
  e16d58: ldr    x8, [x20]                                
  e16d5c: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  e16d60: ldrh   w9, [x8, #0x11e]                         
  e16d64: ldr    x1, [x10]                                
  e16d68: cbz    x9, #0xe16d94                            
  e16d6c: ldr    x11, [x8, #0xb0]                         
  e16d70: mov    x10, xzr                                 
  e16d74: add    x11, x11, #8                             
  e16d78: ldur   x12, [x11, #-8]                          
  e16d7c: cmp    x12, x1                                  
  e16d80: b.eq   #0xe16da4                                
  e16d84: add    x10, x10, #1                             
  e16d88: cmp    x10, x9                                  
  e16d8c: add    x11, x11, #0x10                          
  e16d90: b.lo   #0xe16d78                                
  e16d94: mov    x0, x20                                  
  e16d98: mov    w2, wzr                                  
  e16d9c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e16da0: b      #0xe16db0                                
  e16da4: ldr    w9, [x11]                                
  e16da8: add    x8, x8, x9, lsl #4                       
  e16dac: add    x0, x8, #0x128                           
  e16db0: ldp    x8, x2, [x0]                             
  e16db4: mov    x0, x20                                  
  e16db8: mov    x1, x21                                  
  e16dbc: blr    x8                                       
  e16dc0: mov    w8, #1                                   
  e16dc4: strb   w8, [x19, #0x101]                        
  e16dc8: adrp   x8, #0x3010000                           
  e16dcc: ldr    x8, [x8, #0x250]                         ; META msg.CSServerTime_TypeInfo
  e16dd0: ldr    x0, [x8]                                 
  e16dd4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e16dd8: mov    x1, xzr                                  
  e16ddc: mov    x19, x0                                  
  e16de0: bl     #0x213b4f4                               ; msg.CSServerTime$$.ctor
  e16de4: adrp   x8, #0x3077000                           
  e16de8: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  e16dec: ldr    x0, [x8]                                 
  e16df0: ldrb   w8, [x0, #0x127]                         
  e16df4: tbz    w8, #1, #0xe16e04                        
  e16df8: ldr    w8, [x0, #0xd8]                          
  e16dfc: cbnz   w8, #0xe16e04                            
  e16e00: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e16e04: mov    x0, x19                                  
  e16e08: mov    x1, xzr                                  
  e16e0c: bl     #0x1125f84                               ; ConnectAPI$$QueuePacket
  e16e10: ldp    x29, x30, [sp, #0x40]                    
  e16e14: ldp    x20, x19, [sp, #0x30]                    
  e16e18: ldp    x22, x21, [sp, #0x20]                    
  e16e1c: ldp    x24, x23, [sp, #0x10]                    
  e16e20: add    sp, sp, #0x50                            
  e16e24: ret                                             
  e16e28: mov    w23, wzr                                 
  e16e2c: b      #0xe167e0                                

===== PlayerData$$OnLoginResult @ 0xe19830 (412 bytes)
  e19830: str    x21, [sp, #-0x30]!                       
  e19834: stp    x20, x19, [sp, #0x10]                    
  e19838: stp    x29, x30, [sp, #0x20]                    
  e1983c: add    x29, sp, #0x20                           
  e19840: adrp   x21, #0x31cd000                          
  e19844: ldrb   w8, [x21, #0x16e]                        
  e19848: mov    x20, x1                                  
  e1984c: mov    x19, x0                                  
  e19850: tbnz   w8, #0, #0xe1986c                        
  e19854: adrp   x8, #0x2fec000                           
  e19858: ldr    x8, [x8, #0xd50]                         
  e1985c: ldr    w0, [x8]                                 
  e19860: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e19864: mov    w8, #1                                   
  e19868: strb   w8, [x21, #0x16e]                        
  e1986c: adrp   x8, #0x3035000                           
  e19870: ldr    x8, [x8, #0xf00]                         ; META PlayerData_TypeInfo
  e19874: ldr    x8, [x8]                                 
  e19878: ldr    x8, [x8, #0xb8]                          
  e1987c: ldr    x0, [x8, #0xa0]                          
  e19880: cbz    x0, #0xe198a0                            
  e19884: mov    x1, x19                                  
  e19888: mov    x2, x20                                  
  e1988c: ldp    x29, x30, [sp, #0x20]                    
  e19890: ldp    x20, x19, [sp, #0x10]                    
  e19894: mov    x3, xzr                                  
  e19898: ldr    x21, [sp], #0x30                         
  e1989c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e198a0: cbnz   x20, #0xe198ac                           
  e198a4: mov    x0, xzr                                  
  e198a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e198ac: adrp   x10, #0x2ff0000                          
  e198b0: ldr    x8, [x20]                                
  e198b4: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  e198b8: ldrh   w9, [x8, #0x11e]                         
  e198bc: ldr    x1, [x10]                                
  e198c0: cbz    x9, #0xe198ec                            
  e198c4: ldr    x11, [x8, #0xb0]                         
  e198c8: mov    x10, xzr                                 
  e198cc: add    x11, x11, #8                             
  e198d0: ldur   x12, [x11, #-8]                          
  e198d4: cmp    x12, x1                                  
  e198d8: b.eq   #0xe198fc                                
  e198dc: add    x10, x10, #1                             
  e198e0: cmp    x10, x9                                  
  e198e4: add    x11, x11, #0x10                          
  e198e8: b.lo   #0xe198d0                                
  e198ec: mov    w2, #4                                   
  e198f0: mov    x0, x20                                  
  e198f4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e198f8: b      #0xe1990c                                
  e198fc: ldr    w9, [x11]                                
  e19900: add    w9, w9, #4                               
  e19904: add    x8, x8, w9, uxtw #4                      
  e19908: add    x0, x8, #0x128                           
  e1990c: ldp    x8, x1, [x0]                             
  e19910: mov    x0, x20                                  
  e19914: blr    x8                                       
  e19918: mov    x20, x0                                  
  e1991c: cbz    x20, #0xe19954                           
  e19920: adrp   x8, #0x2fed000                           
  e19924: ldr    x8, [x8, #0xe58]                         ; META msg.SCLoginResult_TypeInfo
  e19928: ldr    x9, [x20]                                
  e1992c: ldr    x8, [x8]                                 
  e19930: ldrb   w11, [x9, #0x120]                        
  e19934: ldrb   w10, [x8, #0x120]                        
  e19938: cmp    w11, w10                                 
  e1993c: b.lo   #0xe19954                                
  e19940: ldr    x9, [x9, #0xc8]                          
  e19944: add    x9, x9, x10, lsl #3                      
  e19948: ldur   x9, [x9, #-8]                            
  e1994c: cmp    x9, x8                                   
  e19950: b.eq   #0xe199ac                                
  e19954: mov    x0, xzr                                  
  e19958: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e1995c: mov    x0, xzr                                  
  e19960: mov    x1, xzr                                  
  e19964: bl     #0x1b9c744                               ; msg.SCLoginResult$$get_showGiftCode
  e19968: cmp    w0, #1                                   
  e1996c: cset   w1, eq                                   
  e19970: mov    x0, x19                                  
  e19974: bl     #0xe15b28                                ; PlayerData$$set_showGiftCode
  e19978: mov    x0, xzr                                  
  e1997c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e19980: mov    x20, xzr                                 
  e19984: mov    x0, x20                                  
  e19988: mov    x1, xzr                                  
  e1998c: bl     #0x1b9c818                               ; msg.SCLoginResult$$get_showService
  e19990: cmp    w0, #1                                   
  e19994: mov    x0, x19                                  
  e19998: ldp    x29, x30, [sp, #0x20]                    
  e1999c: ldp    x20, x19, [sp, #0x10]                    
  e199a0: cset   w1, eq                                   
  e199a4: ldr    x21, [sp], #0x30                         
  e199a8: b      #0xe15c20                                ; PlayerData$$set_showService
  e199ac: mov    x0, x20                                  
  e199b0: mov    x1, xzr                                  
  e199b4: bl     #0x1b9c744                               ; msg.SCLoginResult$$get_showGiftCode
  e199b8: cmp    w0, #1                                   
  e199bc: cset   w1, eq                                   
  e199c0: mov    x0, x19                                  
  e199c4: bl     #0xe15b28                                ; PlayerData$$set_showGiftCode
  e199c8: b      #0xe19984                                

===== SinaSDK$$Get @ 0xeb3768 (80 bytes)
  eb3768: str    x19, [sp, #-0x20]!                       
  eb376c: stp    x29, x30, [sp, #0x10]                    
  eb3770: add    x29, sp, #0x10                           
  eb3774: adrp   x19, #0x31cd000                          
  eb3778: ldrb   w8, [x19, #0x6f7]                        
  eb377c: tbnz   w8, #0, #0xeb3798                        
  eb3780: adrp   x8, #0x3051000                           
  eb3784: ldr    x8, [x8, #0x4f0]                         
  eb3788: ldr    w0, [x8]                                 
  eb378c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  eb3790: mov    w8, #1                                   
  eb3794: strb   w8, [x19, #0x6f7]                        
  eb3798: adrp   x8, #0x3005000                           
  eb379c: ldr    x8, [x8, #0xe58]                         ; META SinaSDK_TypeInfo
  eb37a0: ldp    x29, x30, [sp, #0x10]                    
  eb37a4: ldr    x8, [x8]                                 
  eb37a8: ldr    x8, [x8, #0xb8]                          
  eb37ac: ldr    x0, [x8]                                 
  eb37b0: ldr    x19, [sp], #0x20                         
  eb37b4: ret                                             

===== SinaSDK$$SinaLogin @ 0xebb518 (280 bytes)
  ebb518: stp    x22, x21, [sp, #-0x30]!                  
  ebb51c: stp    x20, x19, [sp, #0x10]                    
  ebb520: stp    x29, x30, [sp, #0x20]                    
  ebb524: add    x29, sp, #0x20                           
  ebb528: adrp   x19, #0x31cd000                          
  ebb52c: ldrb   w8, [x19, #0x6f9]                        
  ebb530: mov    x22, x0                                  
  ebb534: tbnz   w8, #0, #0xebb550                        
  ebb538: adrp   x8, #0x3040000                           
  ebb53c: ldr    x8, [x8, #0xb18]                         
  ebb540: ldr    w0, [x8]                                 
  ebb544: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  ebb548: mov    w8, #1                                   
  ebb54c: strb   w8, [x19, #0x6f9]                        
  ebb550: bl     #0xebb428                                ; SinaSDK$$androidContext
  ebb554: adrp   x8, #0x305a000                           
  ebb558: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  ebb55c: mov    x19, x0                                  
  ebb560: mov    w1, #1                                   
  ebb564: ldr    x8, [x8]                                 
  ebb568: mov    x0, x8                                   
  ebb56c: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  ebb570: adrp   x8, #0x3042000                           
  ebb574: ldr    x8, [x8, #0xf10]                         ; META UnityEngine.AndroidJavaRunnable_TypeInfo
  ebb578: mov    x20, x0                                  
  ebb57c: ldr    x8, [x8]                                 
  ebb580: mov    x0, x8                                   
  ebb584: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  ebb588: adrp   x8, #0x2ff2000                           
  ebb58c: ldr    x8, [x8, #0xd88]                         ; MMETH Method$SinaSDK.<SinaLogin>b__35_0()
  ebb590: mov    x1, x22                                  
  ebb594: mov    x3, xzr                                  
  ebb598: mov    x21, x0                                  
  ebb59c: ldr    x2, [x8]                                 
  ebb5a0: bl     #0x1e6aeb0                               ; UnityEngine.AndroidJavaRunnable$$.ctor
  ebb5a4: cbz    x20, #0xebb5b0                           
  ebb5a8: cbnz   x21, #0xebb5bc                           
  ebb5ac: b      #0xebb5e0                                
  ebb5b0: mov    x0, xzr                                  
  ebb5b4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ebb5b8: cbz    x21, #0xebb5e0                           
  ebb5bc: ldr    x8, [x20]                                
  ebb5c0: mov    x0, x21                                  
  ebb5c4: ldr    x1, [x8, #0x40]                          
  ebb5c8: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  ebb5cc: cbnz   x0, #0xebb5e0                            
  ebb5d0: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  ebb5d4: mov    x1, xzr                                  
  ebb5d8: mov    x2, xzr                                  
  ebb5dc: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  ebb5e0: ldr    w8, [x20, #0x18]                         
  ebb5e4: cbnz   w8, #0xebb5f8                            
  ebb5e8: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  ebb5ec: mov    x1, xzr                                  
  ebb5f0: mov    x2, xzr                                  
  ebb5f4: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  ebb5f8: str    x21, [x20, #0x20]                        
  ebb5fc: cbnz   x19, #0xebb608                           
  ebb600: mov    x0, xzr                                  
  ebb604: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ebb608: adrp   x8, #0x3041000                           
  ebb60c: ldr    x8, [x8, #0x238]                         ; STR "runOnUiThread"
  ebb610: mov    x0, x19                                  
  ebb614: mov    x2, x20                                  
  ebb618: ldp    x29, x30, [sp, #0x20]                    
  ebb61c: ldr    x1, [x8]                                 
  ebb620: ldp    x20, x19, [sp, #0x10]                    
  ebb624: mov    x3, xzr                                  
  ebb628: ldp    x22, x21, [sp], #0x30                    
  ebb62c: b      #0x1e69738                               ; UnityEngine.AndroidJavaObject$$Call
