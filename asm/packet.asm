
===== BootMediator$$LoadLuaScripts @ 0xe926a8 (380 bytes)
  e926a8: stp    x22, x21, [sp, #-0x30]!                  
  e926ac: stp    x20, x19, [sp, #0x10]                    
  e926b0: stp    x29, x30, [sp, #0x20]                    
  e926b4: add    x29, sp, #0x20                           
  e926b8: adrp   x20, #0x31cd000                          
  e926bc: ldrb   w8, [x20, #0x573]                        
  e926c0: mov    x19, x0                                  
  e926c4: tbnz   w8, #0, #0xe926e0                        
  e926c8: adrp   x8, #0x3057000                           
  e926cc: ldr    x8, [x8, #0xd70]                         
  e926d0: ldr    w0, [x8]                                 
  e926d4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e926d8: mov    w8, #1                                   
  e926dc: strb   w8, [x20, #0x573]                        
  e926e0: adrp   x8, #0x3030000                           
  e926e4: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e926e8: ldr    x8, [x8]                                 
  e926ec: ldr    x8, [x8, #0xb8]                          
  e926f0: ldr    x0, [x8, #0x90]                          
  e926f4: cbz    x0, #0xe92710                            
  e926f8: mov    x1, x19                                  
  e926fc: ldp    x29, x30, [sp, #0x20]                    
  e92700: ldp    x20, x19, [sp, #0x10]                    
  e92704: mov    x2, xzr                                  
  e92708: ldp    x22, x21, [sp], #0x30                    
  e9270c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e92710: adrp   x8, #0x3053000                           
  e92714: ldr    x8, [x8, #0xc08]                         ; META XLua.LuaEnv_TypeInfo
  e92718: ldr    x0, [x8]                                 
  e9271c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e92720: mov    x1, xzr                                  
  e92724: mov    x19, x0                                  
  e92728: bl     #0x1927c4c                               ; XLua.LuaEnv$$.ctor
  e9272c: adrp   x22, #0x3046000                          
  e92730: ldr    x22, [x22, #0xfc8]                       ; META BootMediator.<>c_TypeInfo
  e92734: ldr    x0, [x22]                                
  e92738: ldrb   w8, [x0, #0x127]                         
  e9273c: tbz    w8, #1, #0xe92750                        
  e92740: ldr    w8, [x0, #0xd8]                          
  e92744: cbnz   w8, #0xe92750                            
  e92748: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e9274c: ldr    x0, [x22]                                
  e92750: ldr    x8, [x0, #0xb8]                          
  e92754: ldr    x20, [x8, #8]                            
  e92758: cbz    x20, #0xe92774                           
  e9275c: cbz    x19, #0xe927d0                           
  e92760: mov    x0, x19                                  
  e92764: mov    x1, x20                                  
  e92768: mov    x2, xzr                                  
  e9276c: bl     #0x192b428                               ; XLua.LuaEnv$$AddLoader
  e92770: b      #0xe927f0                                
  e92774: ldrb   w9, [x0, #0x127]                         
  e92778: tbz    w9, #1, #0xe92790                        
  e9277c: ldr    w9, [x0, #0xd8]                          
  e92780: cbnz   w9, #0xe92790                            
  e92784: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92788: ldr    x8, [x22]                                
  e9278c: ldr    x8, [x8, #0xb8]                          
  e92790: ldr    x21, [x8]                                
  e92794: adrp   x8, #0x3039000                           
  e92798: ldr    x8, [x8, #0x280]                         ; META XLua.LuaEnv.CustomLoader_TypeInfo
  e9279c: ldr    x0, [x8]                                 
  e927a0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e927a4: adrp   x8, #0x306b000                           
  e927a8: ldr    x8, [x8, #0xb70]                         ; MMETH Method$BootMediator.<>c.<LoadLuaScripts>b__21_0()
  e927ac: mov    x1, x21                                  
  e927b0: mov    x3, xzr                                  
  e927b4: mov    x20, x0                                  
  e927b8: ldr    x2, [x8]                                 
  e927bc: bl     #0x192ba94                               ; XLua.LuaEnv.CustomLoader$$.ctor
  e927c0: ldr    x8, [x22]                                
  e927c4: ldr    x8, [x8, #0xb8]                          
  e927c8: str    x20, [x8, #8]                            
  e927cc: cbnz   x19, #0xe92760                           
  e927d0: mov    x0, xzr                                  
  e927d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e927d8: mov    x0, x19                                  
  e927dc: mov    x1, x20                                  
  e927e0: mov    x2, xzr                                  
  e927e4: bl     #0x192b428                               ; XLua.LuaEnv$$AddLoader
  e927e8: mov    x0, xzr                                  
  e927ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e927f0: adrp   x8, #0x2fe4000                           
  e927f4: adrp   x9, #0x2fdc000                           
  e927f8: ldr    x8, [x8, #0x50]                          ; STR "require 'MainHotFix'"
  e927fc: ldr    x9, [x9, #0xd90]                         ; STR "chunk"
  e92800: mov    x0, x19                                  
  e92804: ldp    x29, x30, [sp, #0x20]                    
  e92808: ldr    x1, [x8]                                 
  e9280c: ldr    x2, [x9]                                 
  e92810: ldp    x20, x19, [sp, #0x10]                    
  e92814: mov    x3, xzr                                  
  e92818: mov    x4, xzr                                  
  e9281c: ldp    x22, x21, [sp], #0x30                    
  e92820: b      #0x19296d8                               ; XLua.LuaEnv$$DoString

===== ConnectAPI$$PacketReceived @ 0x11246ac (592 bytes)
 11246ac: str    x23, [sp, #-0x40]!                       
 11246b0: stp    x22, x21, [sp, #0x10]                    
 11246b4: stp    x20, x19, [sp, #0x20]                    
 11246b8: stp    x29, x30, [sp, #0x30]                    
 11246bc: add    x29, sp, #0x30                           
 11246c0: adrp   x22, #0x31ce000                          
 11246c4: ldrb   w8, [x22, #0xc89]                        
 11246c8: mov    x21, x2                                  
 11246cc: mov    x19, x1                                  
 11246d0: mov    x20, x0                                  
 11246d4: tbnz   w8, #0, #0x11246f0                       
 11246d8: adrp   x8, #0x2ffc000                           
 11246dc: ldr    x8, [x8, #0x9c8]                         
 11246e0: ldr    w0, [x8]                                 
 11246e4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 11246e8: mov    w8, #1                                   
 11246ec: strb   w8, [x22, #0xc89]                        
 11246f0: adrp   x22, #0x3077000                          
 11246f4: ldr    x22, [x22, #0xb80]                       ; META ConnectAPI_TypeInfo
 11246f8: ldr    x0, [x22]                                
 11246fc: ldrb   w8, [x0, #0x127]                         
 1124700: tbz    w8, #1, #0x1124714                       
 1124704: ldr    w8, [x0, #0xd8]                          
 1124708: cbnz   w8, #0x1124714                           
 112470c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 1124710: ldr    x0, [x22]                                
 1124714: ldr    x9, [x0, #0xb8]                          
 1124718: ldr    x8, [x9, #0x150]                         
 112471c: cbz    x8, #0x1124748                           
 1124720: mov    x1, x20                                  
 1124724: mov    x2, x19                                  
 1124728: mov    x3, x21                                  
 112472c: ldp    x29, x30, [sp, #0x30]                    
 1124730: ldp    x20, x19, [sp, #0x20]                    
 1124734: ldp    x22, x21, [sp, #0x10]                    
 1124738: mov    x0, x8                                   
 112473c: mov    x4, xzr                                  
 1124740: ldr    x23, [sp], #0x40                         
 1124744: b      #0xca6290                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp101
 1124748: ldrb   w8, [x0, #0x127]                         
 112474c: tbz    w8, #1, #0x1124764                       
 1124750: ldr    w8, [x0, #0xd8]                          
 1124754: cbnz   w8, #0x1124764                           
 1124758: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 112475c: ldr    x0, [x22]                                
 1124760: ldr    x9, [x0, #0xb8]                          
 1124764: ldr    x21, [x9, #0x68]                         
 1124768: cbz    x21, #0x11247c4                          
 112476c: ldrb   w8, [x0, #0x127]                         
 1124770: tbz    w8, #1, #0x112478c                       
 1124774: ldr    w8, [x0, #0xd8]                          
 1124778: cbnz   w8, #0x112478c                           
 112477c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 1124780: ldr    x8, [x22]                                
 1124784: ldr    x8, [x8, #0xb8]                          
 1124788: ldr    x21, [x8, #0x68]                         
 112478c: cbnz   x19, #0x1124798                          
 1124790: mov    x0, xzr                                  
 1124794: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 1124798: ldr    w22, [x19, #0x14]                        
 112479c: cbnz   x21, #0x11247a8                          
 11247a0: mov    x0, xzr                                  
 11247a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 11247a8: adrp   x8, #0x2fd1000                           
 11247ac: ldr    x8, [x8, #0x620]                         ; MMETH Method$System.Action<int>.Invoke()
 11247b0: mov    x0, x21                                  
 11247b4: mov    w1, w22                                  
 11247b8: ldr    x2, [x8]                                 
 11247bc: bl     #0x1f6dc38                               ; System.Action<int>$$Invoke
 11247c0: b      #0x11247c8                               
 11247c4: cbz    x19, #0x11248ec                          
 11247c8: mov    w23, wzr                                 
 11247cc: adrp   x8, #0x3071000                           
 11247d0: ldr    x22, [x19, #0x18]                        
 11247d4: ldr    x8, [x8, #0xc30]                         ; META System.IO.MemoryStream_TypeInfo
 11247d8: ldr    x0, [x8]                                 
 11247dc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 11247e0: adrp   x8, #0x2ffe000                           
 11247e4: ldr    x8, [x8, #0xe60]                         ; META byte[]_TypeInfo
 11247e8: mov    x21, x0                                  
 11247ec: mov    x0, x22                                  
 11247f0: ldr    x1, [x8]                                 
 11247f4: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
 11247f8: mov    x1, x0                                   
 11247fc: mov    x0, x21                                  
 1124800: mov    x2, xzr                                  
 1124804: bl     #0x18004b8                               ; System.IO.MemoryStream$$.ctor
 1124808: cbz    w23, #0x1124814                          
 112480c: mov    x0, xzr                                  
 1124810: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 1124814: ldr    w0, [x19, #0x14]                         
 1124818: mov    x1, x21                                  
 112481c: mov    x2, xzr                                  
 1124820: bl     #0x116142c                               ; msg.MsgParser$$Parse
 1124824: ldr    x21, [x20, #0x28]                        
 1124828: mov    x20, x0                                  
 112482c: cbz    w23, #0x1124838                          
 1124830: mov    x0, xzr                                  
 1124834: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 1124838: adrp   x9, #0x300b000                           
 112483c: ldr    w8, [x19, #0x14]                         
 1124840: ldr    x9, [x9, #0x800]                         ; META int_TypeInfo
 1124844: add    x1, sp, #0xc                             
 1124848: str    w8, [sp, #0xc]                           
 112484c: ldr    x0, [x9]                                 
 1124850: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 1124854: mov    x19, x0                                  
 1124858: cbnz   x21, #0x1124864                          
 112485c: mov    x0, xzr                                  
 1124860: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 1124864: adrp   x10, #0x2fde000                          
 1124868: ldr    x8, [x21]                                
 112486c: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
 1124870: ldrh   w9, [x8, #0x11e]                         
 1124874: ldr    x1, [x10]                                
 1124878: cbz    x9, #0x11248a4                           
 112487c: ldr    x11, [x8, #0xb0]                         
 1124880: mov    x10, xzr                                 
 1124884: add    x11, x11, #8                             
 1124888: ldur   x12, [x11, #-8]                          
 112488c: cmp    x12, x1                                  
 1124890: b.eq   #0x11248b4                               
 1124894: add    x10, x10, #1                             
 1124898: cmp    x10, x9                                  
 112489c: add    x11, x11, #0x10                          
 11248a0: b.lo   #0x1124888                               
 11248a4: mov    w2, #1                                   
 11248a8: mov    x0, x21                                  
 11248ac: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 11248b0: b      #0x11248c4                               
 11248b4: ldr    w9, [x11]                                
 11248b8: add    w9, w9, #1                               
 11248bc: add    x8, x8, w9, uxtw #4                      
 11248c0: add    x0, x8, #0x128                           
 11248c4: ldp    x8, x3, [x0]                             
 11248c8: mov    x0, x21                                  
 11248cc: mov    x1, x19                                  
 11248d0: mov    x2, x20                                  
 11248d4: blr    x8                                       
 11248d8: ldp    x29, x30, [sp, #0x30]                    
 11248dc: ldp    x20, x19, [sp, #0x20]                    
 11248e0: ldp    x22, x21, [sp, #0x10]                    
 11248e4: ldr    x23, [sp], #0x40                         
 11248e8: ret                                             
 11248ec: mov    x0, xzr                                  
 11248f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 11248f4: mov    w23, #1                                  
 11248f8: b      #0x11247cc                               

===== UniCore.GamePacket$$Decode @ 0x120cc04 (500 bytes)
 120cc04: str    x23, [sp, #-0x40]!                       
 120cc08: stp    x22, x21, [sp, #0x10]                    
 120cc0c: stp    x20, x19, [sp, #0x20]                    
 120cc10: stp    x29, x30, [sp, #0x30]                    
 120cc14: add    x29, sp, #0x30                           
 120cc18: adrp   x23, #0x31cf000                          
 120cc1c: ldrb   w8, [x23, #0x44d]                        
 120cc20: mov    w22, w3                                  
 120cc24: mov    w20, w2                                  
 120cc28: mov    x21, x1                                  
 120cc2c: mov    x19, x0                                  
 120cc30: tbnz   w8, #0, #0x120cc4c                       
 120cc34: adrp   x8, #0x2fe7000                           
 120cc38: ldr    x8, [x8, #0x400]                         
 120cc3c: ldr    w0, [x8]                                 
 120cc40: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 120cc44: mov    w8, #1                                   
 120cc48: strb   w8, [x23, #0x44d]                        
 120cc4c: adrp   x23, #0x3013000                          
 120cc50: ldr    x23, [x23, #0xdc8]                       ; META UniCore.GamePacket_TypeInfo
 120cc54: ldr    x0, [x23]                                
 120cc58: ldrb   w8, [x0, #0x127]                         
 120cc5c: tbz    w8, #1, #0x120cc70                       
 120cc60: ldr    w8, [x0, #0xd8]                          
 120cc64: cbnz   w8, #0x120cc70                           
 120cc68: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 120cc6c: ldr    x0, [x23]                                
 120cc70: ldr    x8, [x0, #0xb8]                          
 120cc74: ldr    x0, [x8, #0x28]                          
 120cc78: cbz    x0, #0x120cca4                           
 120cc7c: mov    x1, x19                                  
 120cc80: mov    x2, x21                                  
 120cc84: mov    w3, w20                                  
 120cc88: mov    w4, w22                                  
 120cc8c: ldp    x29, x30, [sp, #0x30]                    
 120cc90: ldp    x20, x19, [sp, #0x20]                    
 120cc94: ldp    x22, x21, [sp, #0x10]                    
 120cc98: mov    x5, xzr                                  
 120cc9c: ldr    x23, [sp], #0x40                         
 120cca0: b      #0xceab70                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp572
 120cca4: ldrb   w8, [x19, #0x20]                         
 120cca8: cbz    w8, #0x120ccb4                           
 120ccac: mov    w23, wzr                                 
 120ccb0: b      #0x120cd18                               
 120ccb4: subs   w22, w22, #4                             
 120ccb8: b.lt   #0x120cddc                               
 120ccbc: mov    w2, #4                                   
 120ccc0: mov    x0, x21                                  
 120ccc4: mov    w1, w20                                  
 120ccc8: mov    x3, xzr                                  
 120cccc: bl     #0x19b8ef8                               ; System.Array$$Reverse
 120ccd0: adrp   x8, #0x3050000                           
 120ccd4: ldr    x8, [x8, #0x200]                         ; META System.BitConverter_TypeInfo
 120ccd8: ldr    x0, [x8]                                 
 120ccdc: ldrb   w8, [x0, #0x127]                         
 120cce0: tbz    w8, #1, #0x120ccf0                       
 120cce4: ldr    w8, [x0, #0xd8]                          
 120cce8: cbnz   w8, #0x120ccf0                           
 120ccec: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 120ccf0: mov    x0, x21                                  
 120ccf4: mov    w1, w20                                  
 120ccf8: mov    x2, xzr                                  
 120ccfc: bl     #0x19bfeb0                               ; System.BitConverter$$ToInt32
 120cd00: mov    w8, #1                                   
 120cd04: add    w20, w20, #4                             
 120cd08: sub    w9, w0, #4                               
 120cd0c: mov    w23, #4                                  
 120cd10: strb   w8, [x19, #0x20]                         
 120cd14: str    w9, [x19, #0x10]                         
 120cd18: ldrb   w8, [x19, #0x21]                         
 120cd1c: cbnz   w8, #0x120cd88                           
 120cd20: subs   w22, w22, #4                             
 120cd24: b.lt   #0x120cde0                               
 120cd28: mov    w2, #4                                   
 120cd2c: mov    x0, x21                                  
 120cd30: mov    w1, w20                                  
 120cd34: mov    x3, xzr                                  
 120cd38: bl     #0x19b8ef8                               ; System.Array$$Reverse
 120cd3c: adrp   x8, #0x3050000                           
 120cd40: ldr    x8, [x8, #0x200]                         ; META System.BitConverter_TypeInfo
 120cd44: ldr    x0, [x8]                                 
 120cd48: ldrb   w8, [x0, #0x127]                         
 120cd4c: tbz    w8, #1, #0x120cd5c                       
 120cd50: ldr    w8, [x0, #0xd8]                          
 120cd54: cbnz   w8, #0x120cd5c                           
 120cd58: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 120cd5c: mov    x0, x21                                  
 120cd60: mov    w1, w20                                  
 120cd64: mov    x2, xzr                                  
 120cd68: bl     #0x19bfeb0                               ; System.BitConverter$$ToInt32
 120cd6c: ldr    w9, [x19, #0x10]                         
 120cd70: mov    w8, #1                                   
 120cd74: strb   w8, [x19, #0x21]                         
 120cd78: add    w23, w23, #4                             
 120cd7c: add    w20, w20, #4                             
 120cd80: sub    w8, w9, #4                               
 120cd84: stp    w8, w0, [x19, #0x10]                     
 120cd88: ldr    x8, [x19, #0x18]                         
 120cd8c: cbnz   x8, #0x120cde0                           
 120cd90: ldr    w1, [x19, #0x10]                         
 120cd94: cmp    w22, w1                                  
 120cd98: b.lt   #0x120cde0                               
 120cd9c: adrp   x8, #0x2ffe000                           
 120cda0: ldr    x8, [x8, #0xe60]                         ; META byte[]_TypeInfo
 120cda4: ldr    x0, [x8]                                 
 120cda8: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
 120cdac: ldr    w4, [x19, #0x10]                         
 120cdb0: mov    x22, x0                                  
 120cdb4: mov    x0, x21                                  
 120cdb8: mov    w1, w20                                  
 120cdbc: mov    x2, x22                                  
 120cdc0: mov    w3, wzr                                  
 120cdc4: mov    x5, xzr                                  
 120cdc8: bl     #0x19b6dc4                               ; System.Array$$Copy
 120cdcc: ldr    w8, [x19, #0x10]                         
 120cdd0: str    x22, [x19, #0x18]                        
 120cdd4: add    w23, w8, w23                             
 120cdd8: b      #0x120cde0                               
 120cddc: mov    w23, wzr                                 
 120cde0: ldp    x29, x30, [sp, #0x30]                    
 120cde4: ldp    x20, x19, [sp, #0x20]                    
 120cde8: ldp    x22, x21, [sp, #0x10]                    
 120cdec: mov    w0, w23                                  
 120cdf0: ldr    x23, [sp], #0x40                         
 120cdf4: ret                                             

===== UniCore.GamePacket$$Encode @ 0x120cdf8 (720 bytes)
 120cdf8: sub    sp, sp, #0x40                            
 120cdfc: stp    x22, x21, [sp, #0x10]                    
 120ce00: stp    x20, x19, [sp, #0x20]                    
 120ce04: stp    x29, x30, [sp, #0x30]                    
 120ce08: add    x29, sp, #0x30                           
 120ce0c: adrp   x20, #0x31cf000                          
 120ce10: ldrb   w8, [x20, #0x44e]                        
 120ce14: mov    x19, x0                                  
 120ce18: tbnz   w8, #0, #0x120ce34                       
 120ce1c: adrp   x8, #0x3046000                           
 120ce20: ldr    x8, [x8, #0x2e8]                         
 120ce24: ldr    w0, [x8]                                 
 120ce28: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 120ce2c: mov    w8, #1                                   
 120ce30: strb   w8, [x20, #0x44e]                        
 120ce34: adrp   x20, #0x3013000                          
 120ce38: ldr    x20, [x20, #0xdc8]                       ; META UniCore.GamePacket_TypeInfo
 120ce3c: ldr    x0, [x20]                                
 120ce40: ldrb   w8, [x0, #0x127]                         
 120ce44: tbz    w8, #1, #0x120ce58                       
 120ce48: ldr    w8, [x0, #0xd8]                          
 120ce4c: cbnz   w8, #0x120ce58                           
 120ce50: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 120ce54: ldr    x0, [x20]                                
 120ce58: ldr    x8, [x0, #0xb8]                          
 120ce5c: ldr    x0, [x8, #0x30]                          
 120ce60: cbz    x0, #0x120ce80                           
 120ce64: mov    x1, x19                                  
 120ce68: ldp    x29, x30, [sp, #0x30]                    
 120ce6c: ldp    x20, x19, [sp, #0x20]                    
 120ce70: ldp    x22, x21, [sp, #0x10]                    
 120ce74: mov    x2, xzr                                  
 120ce78: add    sp, sp, #0x40                            
 120ce7c: b      #0xcead54                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp573
 120ce80: ldr    x20, [x19, #0x18]                        
 120ce84: cbz    x20, #0x120cee4                          
 120ce88: adrp   x9, #0x2ff1000                           
 120ce8c: ldr    x9, [x9, #0x148]                         ; META Utils.msg_base_TypeInfo
 120ce90: ldr    x8, [x20]                                
 120ce94: ldr    x1, [x9]                                 
 120ce98: ldrb   w10, [x8, #0x120]                        
 120ce9c: ldrb   w9, [x1, #0x120]                         
 120cea0: cmp    w10, w9                                  
 120cea4: b.lo   #0x120cebc                               
 120cea8: ldr    x10, [x8, #0xc8]                         
 120ceac: add    x9, x10, x9, lsl #3                      
 120ceb0: ldur   x9, [x9, #-8]                            
 120ceb4: cmp    x9, x1                                   
 120ceb8: b.eq   #0x120cefc                               
 120cebc: ldr    x0, [x8, #0x40]                          
 120cec0: add    x8, sp, #8                               
 120cec4: bl     #0xc4c8c4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x6da8c
 120cec8: ldr    x0, [sp, #8]                             
 120cecc: bl     #0xc16b68                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d30
 120ced0: mov    x1, xzr                                  
 120ced4: mov    x2, xzr                                  
 120ced8: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
 120cedc: add    x0, sp, #8                               
 120cee0: bl     #0xc54bb4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x75d7c
 120cee4: ldp    x29, x30, [sp, #0x30]                    
 120cee8: ldp    x20, x19, [sp, #0x20]                    
 120ceec: ldp    x22, x21, [sp, #0x10]                    
 120cef0: mov    x0, xzr                                  
 120cef4: add    sp, sp, #0x40                            
 120cef8: ret                                             
 120cefc: mov    w8, #8                                   
 120cf00: str    w8, [x19, #0x10]                         
 120cf04: adrp   x8, #0x3071000                           
 120cf08: ldr    x8, [x8, #0xc30]                         ; META System.IO.MemoryStream_TypeInfo
 120cf0c: ldr    x0, [x8]                                 
 120cf10: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 120cf14: mov    x1, xzr                                  
 120cf18: mov    x21, x0                                  
 120cf1c: bl     #0x18003ac                               ; System.IO.MemoryStream$$.ctor
 120cf20: ldrsw  x22, [x19, #0x10]                        
 120cf24: cbnz   x21, #0x120cf30                          
 120cf28: mov    x0, xzr                                  
 120cf2c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 120cf30: ldr    x8, [x21]                                
 120cf34: mov    x0, x21                                  
 120cf38: mov    x1, x22                                  
 120cf3c: mov    w2, wzr                                  
 120cf40: ldr    x9, [x8, #0x2a8]                         
 120cf44: ldr    x3, [x8, #0x2b0]                         
 120cf48: blr    x9                                       
 120cf4c: adrp   x8, #0x3040000                           
 120cf50: ldr    x8, [x8, #0x438]                         ; MMETH Method$ProtoBuf.Serializer.Serialize<msg_base>()
 120cf54: mov    x0, x21                                  
 120cf58: mov    x1, x20                                  
 120cf5c: ldr    x2, [x8]                                 
 120cf60: bl     #0x12a9418                               ; ProtoBuf.Serializer$$Serialize<msg_base>
 120cf64: cbnz   x21, #0x120cf70                          
 120cf68: mov    x0, xzr                                  
 120cf6c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 120cf70: ldr    x8, [x21]                                
 120cf74: mov    x0, x21                                  
 120cf78: ldp    x9, x1, [x8, #0x1c8]                     
 120cf7c: blr    x9                                       
 120cf80: cmp    x0, #0                                   
 120cf84: b.le   #0x120cfa4                               
 120cf88: ldr    x8, [x21]                                
 120cf8c: mov    x0, x21                                  
 120cf90: ldp    x9, x1, [x8, #0x1c8]                     
 120cf94: blr    x9                                       
 120cf98: mov    x1, x0                                   
 120cf9c: str    w1, [x19, #0x10]                         
 120cfa0: b      #0x120cfa8                               
 120cfa4: ldr    w1, [x19, #0x10]                         
 120cfa8: ldr    x8, [x21]                                
 120cfac: mov    x0, x21                                  
 120cfb0: ldr    x9, [x8, #0x318]                         
 120cfb4: ldr    x2, [x8, #0x320]                         
 120cfb8: blr    x9                                       
 120cfbc: ldr    x8, [x21]                                
 120cfc0: mov    x0, x21                                  
 120cfc4: mov    x1, xzr                                  
 120cfc8: mov    w2, wzr                                  
 120cfcc: ldr    x9, [x8, #0x2a8]                         
 120cfd0: ldr    x3, [x8, #0x2b0]                         
 120cfd4: blr    x9                                       
 120cfd8: adrp   x8, #0x3050000                           
 120cfdc: ldr    x8, [x8, #0x200]                         ; META System.BitConverter_TypeInfo
 120cfe0: ldr    w19, [x19, #0x10]                        
 120cfe4: ldr    x0, [x8]                                 
 120cfe8: ldrb   w8, [x0, #0x127]                         
 120cfec: tbz    w8, #1, #0x120cffc                       
 120cff0: ldr    w8, [x0, #0xd8]                          
 120cff4: cbnz   w8, #0x120cffc                           
 120cff8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 120cffc: mov    w0, w19                                  
 120d000: mov    x1, xzr                                  
 120d004: bl     #0x19bfa38                               ; System.BitConverter$$GetBytes
 120d008: mov    w2, #4                                   
 120d00c: mov    w1, wzr                                  
 120d010: mov    x3, xzr                                  
 120d014: mov    x19, x0                                  
 120d018: bl     #0x19b8ef8                               ; System.Array$$Reverse
 120d01c: ldr    x8, [x21]                                
 120d020: mov    w3, #4                                   
 120d024: mov    x0, x21                                  
 120d028: mov    x1, x19                                  
 120d02c: ldr    x9, [x8, #0x2d8]                         
 120d030: ldr    x4, [x8, #0x2e0]                         
 120d034: mov    w2, wzr                                  
 120d038: blr    x9                                       
 120d03c: ldr    x8, [x20]                                
 120d040: mov    x0, x20                                  
 120d044: ldp    x9, x1, [x8, #0x178]                     
 120d048: blr    x9                                       
 120d04c: mov    x1, xzr                                  
 120d050: bl     #0x19bfa38                               ; System.BitConverter$$GetBytes
 120d054: mov    w2, #4                                   
 120d058: mov    w1, wzr                                  
 120d05c: mov    x3, xzr                                  
 120d060: mov    x19, x0                                  
 120d064: bl     #0x19b8ef8                               ; System.Array$$Reverse
 120d068: ldr    x8, [x21]                                
 120d06c: mov    w3, #4                                   
 120d070: mov    x0, x21                                  
 120d074: mov    x1, x19                                  
 120d078: ldr    x9, [x8, #0x2d8]                         
 120d07c: ldr    x4, [x8, #0x2e0]                         
 120d080: mov    w2, wzr                                  
 120d084: blr    x9                                       
 120d088: ldr    x8, [x21]                                
 120d08c: mov    x0, x21                                  
 120d090: ldp    x29, x30, [sp, #0x30]                    
 120d094: ldp    x20, x19, [sp, #0x20]                    
 120d098: ldr    x2, [x8, #0x2f8]                         
 120d09c: ldr    x1, [x8, #0x300]                         
 120d0a0: ldp    x22, x21, [sp, #0x10]                    
 120d0a4: add    sp, sp, #0x40                            
 120d0a8: br     x2                                       
 120d0ac: b      #0x120d0b0                               
 120d0b0: mov    x19, x0                                  
 120d0b4: add    x0, sp, #8                               
 120d0b8: bl     #0xc54bb4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x75d7c
 120d0bc: mov    x0, x19                                  
 120d0c0: bl     #0xa056e0                                
 120d0c4: bl     #0xb37d00                                ; ? near 0xb37cac+0x54
