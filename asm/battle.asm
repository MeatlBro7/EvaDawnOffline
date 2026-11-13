
===== BaseMode$$AddPlayer @ 0xd6fb78 (1056 bytes)
  d6fb78: sub    sp, sp, #0x40                            
  d6fb7c: stp    x22, x21, [sp, #0x10]                    
  d6fb80: stp    x20, x19, [sp, #0x20]                    
  d6fb84: stp    x29, x30, [sp, #0x30]                    
  d6fb88: add    x29, sp, #0x30                           
  d6fb8c: adrp   x21, #0x31cc000                          
  d6fb90: ldrb   w8, [x21, #0xbaa]                        
  d6fb94: mov    x19, x1                                  
  d6fb98: mov    x20, x0                                  
  d6fb9c: tbnz   w8, #0, #0xd6fbb8                        
  d6fba0: adrp   x8, #0x3068000                           
  d6fba4: ldr    x8, [x8, #0xc80]                         
  d6fba8: ldr    w0, [x8]                                 
  d6fbac: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d6fbb0: mov    w8, #1                                   
  d6fbb4: strb   w8, [x21, #0xbaa]                        
  d6fbb8: adrp   x8, #0x3036000                           
  d6fbbc: ldr    x8, [x8, #0x560]                         ; META BaseMode_TypeInfo
  d6fbc0: ldr    x8, [x8]                                 
  d6fbc4: ldr    x8, [x8, #0xb8]                          
  d6fbc8: ldr    x0, [x8, #0x78]                          
  d6fbcc: cbz    x0, #0xd6fbf0                            
  d6fbd0: mov    x1, x20                                  
  d6fbd4: mov    x2, x19                                  
  d6fbd8: ldp    x29, x30, [sp, #0x30]                    
  d6fbdc: ldp    x20, x19, [sp, #0x20]                    
  d6fbe0: ldp    x22, x21, [sp, #0x10]                    
  d6fbe4: mov    x3, xzr                                  
  d6fbe8: add    sp, sp, #0x40                            
  d6fbec: b      #0xca84d4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp116
  d6fbf0: mov    x0, x20                                  
  d6fbf4: bl     #0xd6eea0                                ; BaseMode$$get_playerData
  d6fbf8: mov    x20, x0                                  
  d6fbfc: cbnz   x20, #0xd6fc04                           
  d6fc00: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fc04: ldr    x20, [x20, #0x10]                        
  d6fc08: cbnz   x19, #0xd6fc14                           
  d6fc0c: mov    x0, xzr                                  
  d6fc10: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fc14: mov    x0, x19                                  
  d6fc18: mov    x1, xzr                                  
  d6fc1c: bl     #0x1151db4                               ; msg.DUnionHuman$$get_humanId
  d6fc20: cmp    x20, x0                                  
  d6fc24: b.ne   #0xd6fd78                                
  d6fc28: adrp   x8, #0x2ff2000                           
  d6fc2c: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  d6fc30: ldr    x0, [x8]                                 
  d6fc34: ldrb   w8, [x0, #0x127]                         
  d6fc38: tbz    w8, #1, #0xd6fc48                        
  d6fc3c: ldr    w8, [x0, #0xd8]                          
  d6fc40: cbnz   w8, #0xd6fc48                            
  d6fc44: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d6fc48: mov    x0, xzr                                  
  d6fc4c: bl     #0xd17714                                ; MainPlayer$$Get
  d6fc50: mov    x20, x0                                  
  d6fc54: cbnz   x20, #0xd6fc5c                           
  d6fc58: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fc5c: ldr    x8, [x20]                                
  d6fc60: mov    x0, x20                                  
  d6fc64: ldp    x9, x1, [x8, #0x168]                     
  d6fc68: blr    x9                                       
  d6fc6c: mov    x0, xzr                                  
  d6fc70: bl     #0xd17714                                ; MainPlayer$$Get
  d6fc74: mov    x20, x0                                  
  d6fc78: cbnz   x19, #0xd6fc84                           
  d6fc7c: mov    x0, xzr                                  
  d6fc80: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fc84: mov    x0, x19                                  
  d6fc88: mov    x1, xzr                                  
  d6fc8c: bl     #0x1151db4                               ; msg.DUnionHuman$$get_humanId
  d6fc90: mov    x21, x0                                  
  d6fc94: cbnz   x20, #0xd6fca0                           
  d6fc98: mov    x0, xzr                                  
  d6fc9c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fca0: mov    x0, x20                                  
  d6fca4: mov    x1, x21                                  
  d6fca8: mov    x2, xzr                                  
  d6fcac: bl     #0xe0f200                                ; Player$$set_serverId
  d6fcb0: mov    x0, xzr                                  
  d6fcb4: bl     #0xd17714                                ; MainPlayer$$Get
  d6fcb8: mov    x20, x0                                  
  d6fcbc: cbnz   x19, #0xd6fcc8                           
  d6fcc0: mov    x0, xzr                                  
  d6fcc4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fcc8: mov    x0, x19                                  
  d6fccc: mov    x1, xzr                                  
  d6fcd0: bl     #0x1151ef0                               ; msg.DUnionHuman$$get_generalSn
  d6fcd4: mov    w21, w0                                  
  d6fcd8: cbnz   x20, #0xd6fce4                           
  d6fcdc: mov    x0, xzr                                  
  d6fce0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fce4: mov    w2, #0x426c                              
  d6fce8: mov    x0, x20                                  
  d6fcec: mov    w1, w21                                  
  d6fcf0: mov    x3, xzr                                  
  d6fcf4: bl     #0xe118cc                                ; Player$$SetPropFromConfig
  d6fcf8: mov    x0, xzr                                  
  d6fcfc: bl     #0xd17714                                ; MainPlayer$$Get
  d6fd00: mov    x20, x0                                  
  d6fd04: cbnz   x19, #0xd6fd10                           
  d6fd08: mov    x0, xzr                                  
  d6fd0c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fd10: mov    x0, x19                                  
  d6fd14: mov    x1, xzr                                  
  d6fd18: bl     #0x115237c                               ; msg.DUnionHuman$$get_generalWeaponSn
  d6fd1c: mov    w2, w0                                   
  d6fd20: mov    w1, #0xe                                 
  d6fd24: mov    x0, x20                                  
  d6fd28: mov    x3, xzr                                  
  d6fd2c: bl     #0x11953b4                               ; GameTagExtension$$SetTag
  d6fd30: mov    x0, xzr                                  
  d6fd34: bl     #0xd17714                                ; MainPlayer$$Get
  d6fd38: mov    x20, x0                                  
  d6fd3c: cbnz   x19, #0xd6fd48                           
  d6fd40: mov    x0, xzr                                  
  d6fd44: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fd48: mov    x0, x19                                  
  d6fd4c: mov    x1, xzr                                  
  d6fd50: bl     #0x1152100                               ; msg.DUnionHuman$$get_generalStar
  d6fd54: mov    w2, w0                                   
  d6fd58: mov    w1, #0x2b                                
  d6fd5c: mov    x0, x20                                  
  d6fd60: mov    x3, xzr                                  
  d6fd64: bl     #0x11953b4                               ; GameTagExtension$$SetTag
  d6fd68: mov    x0, xzr                                  
  d6fd6c: bl     #0xd17714                                ; MainPlayer$$Get
  d6fd70: mov    x20, x0                                  
  d6fd74: b      #0xd6ff80                                
  d6fd78: cbnz   x19, #0xd6fd84                           
  d6fd7c: mov    x0, xzr                                  
  d6fd80: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fd84: mov    x0, x19                                  
  d6fd88: mov    x1, xzr                                  
  d6fd8c: bl     #0x1151ef0                               ; msg.DUnionHuman$$get_generalSn
  d6fd90: adrp   x8, #0x3024000                           
  d6fd94: ldr    x8, [x8, #0x458]                         ; META ConfMechaInfo_TypeInfo
  d6fd98: mov    w20, w0                                  
  d6fd9c: ldr    x8, [x8]                                 
  d6fda0: ldrb   w9, [x8, #0x127]                         
  d6fda4: tbz    w9, #1, #0xd6fdb8                        
  d6fda8: ldr    w9, [x8, #0xd8]                          
  d6fdac: cbnz   w9, #0xd6fdb8                            
  d6fdb0: mov    x0, x8                                   
  d6fdb4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d6fdb8: mov    w0, w20                                  
  d6fdbc: mov    x1, xzr                                  
  d6fdc0: bl     #0x16593f0                               ; ConfMechaInfo$$Get
  d6fdc4: cbnz   x0, #0xd6feb4                            
  d6fdc8: adrp   x20, #0x3042000                          
  d6fdcc: ldr    x20, [x20, #0xb88]                       ; META GameLog_TypeInfo
  d6fdd0: ldr    x0, [x20]                                
  d6fdd4: ldrb   w8, [x0, #0x127]                         
  d6fdd8: tbz    w8, #1, #0xd6fdec                        
  d6fddc: ldr    w8, [x0, #0xd8]                          
  d6fde0: cbnz   w8, #0xd6fdec                            
  d6fde4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d6fde8: ldr    x0, [x20]                                
  d6fdec: ldr    x8, [x0, #0xb8]                          
  d6fdf0: ldr    x20, [x8]                                
  d6fdf4: cbnz   x19, #0xd6fe00                           
  d6fdf8: mov    x0, xzr                                  
  d6fdfc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fe00: mov    x0, x19                                  
  d6fe04: mov    x1, xzr                                  
  d6fe08: bl     #0x1151ef0                               ; msg.DUnionHuman$$get_generalSn
  d6fe0c: adrp   x8, #0x300b000                           
  d6fe10: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
  d6fe14: str    w0, [sp, #0xc]                           
  d6fe18: add    x1, sp, #0xc                             
  d6fe1c: ldr    x8, [x8]                                 
  d6fe20: mov    x0, x8                                   
  d6fe24: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  d6fe28: adrp   x8, #0x3009000                           
  d6fe2c: ldr    x8, [x8, #0x768]                         ; STR "basemode 找不到机甲ID :"
  d6fe30: mov    x1, x0                                   
  d6fe34: mov    x2, xzr                                  
  d6fe38: ldr    x8, [x8]                                 
  d6fe3c: mov    x0, x8                                   
  d6fe40: bl     #0x1c75688                               ; System.String$$Concat
  d6fe44: adrp   x8, #0x2fc7000                           
  d6fe48: ldr    x8, [x8, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  d6fe4c: mov    x21, x0                                  
  d6fe50: ldr    x8, [x8]                                 
  d6fe54: mov    x0, x8                                   
  d6fe58: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  d6fe5c: mov    x22, x0                                  
  d6fe60: cbnz   x20, #0xd6fe6c                           
  d6fe64: mov    x0, xzr                                  
  d6fe68: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fe6c: mov    x0, x20                                  
  d6fe70: mov    x1, x21                                  
  d6fe74: mov    x2, x22                                  
  d6fe78: mov    x3, xzr                                  
  d6fe7c: bl     #0x1423464                               ; UniCore.Logger$$Error
  d6fe80: mov    x0, xzr                                  
  d6fe84: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fe88: mov    x0, xzr                                  
  d6fe8c: mov    x1, xzr                                  
  d6fe90: bl     #0x16583a8                               ; ConfMechaInfo$$get_id
  d6fe94: mov    w20, w0                                  
  d6fe98: cbnz   x19, #0xd6fea4                           
  d6fe9c: mov    x0, xzr                                  
  d6fea0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6fea4: mov    x0, x19                                  
  d6fea8: mov    w1, w20                                  
  d6feac: mov    x2, xzr                                  
  d6feb0: bl     #0x1152740                               ; msg.DUnionHuman$$set_generalSn
  d6feb4: adrp   x8, #0x2fc7000                           
  d6feb8: ldr    x8, [x8, #0xec8]                         ; META TeammateMgr_TypeInfo
  d6febc: ldr    x0, [x8]                                 
  d6fec0: ldrb   w8, [x0, #0x127]                         
  d6fec4: tbz    w8, #1, #0xd6fed4                        
  d6fec8: ldr    w8, [x0, #0xd8]                          
  d6fecc: cbnz   w8, #0xd6fed4                            
  d6fed0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d6fed4: mov    x0, xzr                                  
  d6fed8: bl     #0x106888c                               ; TeammateMgr$$Get
  d6fedc: mov    x20, x0                                  
  d6fee0: cbnz   x19, #0xd6feec                           
  d6fee4: mov    x0, xzr                                  
  d6fee8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6feec: mov    x0, x19                                  
  d6fef0: mov    x1, xzr                                  
  d6fef4: bl     #0x1151ef0                               ; msg.DUnionHuman$$get_generalSn
  d6fef8: mov    w21, w0                                  
  d6fefc: cbnz   x20, #0xd6ff08                           
  d6ff00: mov    x0, xzr                                  
  d6ff04: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6ff08: mov    x0, x20                                  
  d6ff0c: mov    w1, w21                                  
  d6ff10: mov    x2, xzr                                  
  d6ff14: bl     #0x10696a4                               ; TeammateMgr$$AddDataFromTable
  d6ff18: mov    x20, x0                                  
  d6ff1c: cbnz   x19, #0xd6ff28                           
  d6ff20: mov    x0, xzr                                  
  d6ff24: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6ff28: mov    x0, x19                                  
  d6ff2c: mov    x1, xzr                                  
  d6ff30: bl     #0x1151db4                               ; msg.DUnionHuman$$get_humanId
  d6ff34: mov    x21, x0                                  
  d6ff38: cbnz   x20, #0xd6ff44                           
  d6ff3c: mov    x0, xzr                                  
  d6ff40: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6ff44: mov    x0, x20                                  
  d6ff48: mov    x1, x21                                  
  d6ff4c: mov    x2, xzr                                  
  d6ff50: bl     #0xe0f200                                ; Player$$set_serverId
  d6ff54: cbnz   x19, #0xd6ff60                           
  d6ff58: mov    x0, xzr                                  
  d6ff5c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d6ff60: mov    x0, x19                                  
  d6ff64: mov    x1, xzr                                  
  d6ff68: bl     #0x1152100                               ; msg.DUnionHuman$$get_generalStar
  d6ff6c: mov    w2, w0                                   
  d6ff70: mov    w1, #0x2b                                
  d6ff74: mov    x0, x20                                  
  d6ff78: mov    x3, xzr                                  
  d6ff7c: bl     #0x11953b4                               ; GameTagExtension$$SetTag
  d6ff80: mov    x0, x20                                  
  d6ff84: ldp    x29, x30, [sp, #0x30]                    
  d6ff88: ldp    x20, x19, [sp, #0x20]                    
  d6ff8c: ldp    x22, x21, [sp, #0x10]                    
  d6ff90: add    sp, sp, #0x40                            
  d6ff94: ret                                             

===== BaseMode$$OnAddPlayer @ 0xd713e4 (524 bytes)
  d713e4: str    x21, [sp, #-0x30]!                       
  d713e8: stp    x20, x19, [sp, #0x10]                    
  d713ec: stp    x29, x30, [sp, #0x20]                    
  d713f0: add    x29, sp, #0x20                           
  d713f4: adrp   x21, #0x31cc000                          
  d713f8: ldrb   w8, [x21, #0xbac]                        
  d713fc: mov    x20, x1                                  
  d71400: mov    x19, x0                                  
  d71404: tbnz   w8, #0, #0xd71420                        
  d71408: adrp   x8, #0x300f000                           
  d7140c: ldr    x8, [x8, #0x870]                         
  d71410: ldr    w0, [x8]                                 
  d71414: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d71418: mov    w8, #1                                   
  d7141c: strb   w8, [x21, #0xbac]                        
  d71420: adrp   x8, #0x3036000                           
  d71424: ldr    x8, [x8, #0x560]                         ; META BaseMode_TypeInfo
  d71428: ldr    x8, [x8]                                 
  d7142c: ldr    x8, [x8, #0xb8]                          
  d71430: ldr    x0, [x8, #0x88]                          
  d71434: cbz    x0, #0xd71454                            
  d71438: mov    x1, x19                                  
  d7143c: mov    x2, x20                                  
  d71440: ldp    x29, x30, [sp, #0x20]                    
  d71444: ldp    x20, x19, [sp, #0x10]                    
  d71448: mov    x3, xzr                                  
  d7144c: ldr    x21, [sp], #0x30                         
  d71450: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d71454: ldrb   w8, [x19, #0x50]                         
  d71458: cbz    w8, #0xd715e0                            
  d7145c: cbnz   x20, #0xd71468                           
  d71460: mov    x0, xzr                                  
  d71464: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71468: adrp   x10, #0x2ff0000                          
  d7146c: ldr    x8, [x20]                                
  d71470: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d71474: ldrh   w9, [x8, #0x11e]                         
  d71478: ldr    x1, [x10]                                
  d7147c: cbz    x9, #0xd714a8                            
  d71480: ldr    x11, [x8, #0xb0]                         
  d71484: mov    x10, xzr                                 
  d71488: add    x11, x11, #8                             
  d7148c: ldur   x12, [x11, #-8]                          
  d71490: cmp    x12, x1                                  
  d71494: b.eq   #0xd714b8                                
  d71498: add    x10, x10, #1                             
  d7149c: cmp    x10, x9                                  
  d714a0: add    x11, x11, #0x10                          
  d714a4: b.lo   #0xd7148c                                
  d714a8: mov    w2, #4                                   
  d714ac: mov    x0, x20                                  
  d714b0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d714b4: b      #0xd714c8                                
  d714b8: ldr    w9, [x11]                                
  d714bc: add    w9, w9, #4                               
  d714c0: add    x8, x8, w9, uxtw #4                      
  d714c4: add    x0, x8, #0x128                           
  d714c8: ldp    x8, x1, [x0]                             
  d714cc: mov    x0, x20                                  
  d714d0: blr    x8                                       
  d714d4: cbz    x0, #0xd715e0                            
  d714d8: adrp   x8, #0x3079000                           
  d714dc: ldr    x8, [x8, #0x298]                         ; META Player_TypeInfo
  d714e0: ldr    x9, [x0]                                 
  d714e4: ldr    x8, [x8]                                 
  d714e8: ldrb   w11, [x9, #0x120]                        
  d714ec: ldrb   w10, [x8, #0x120]                        
  d714f0: cmp    w11, w10                                 
  d714f4: b.lo   #0xd715e0                                
  d714f8: ldr    x9, [x9, #0xc8]                          
  d714fc: add    x9, x9, x10, lsl #3                      
  d71500: ldur   x9, [x9, #-8]                            
  d71504: cmp    x9, x8                                   
  d71508: csel   x20, x0, xzr, eq                         
  d7150c: cbz    x20, #0xd715e0                           
  d71510: adrp   x8, #0x2ff2000                           
  d71514: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  d71518: ldr    x9, [x20]                                
  d7151c: ldr    x8, [x8]                                 
  d71520: ldrb   w11, [x9, #0x120]                        
  d71524: ldrb   w10, [x8, #0x120]                        
  d71528: cmp    w11, w10                                 
  d7152c: b.lo   #0xd71544                                
  d71530: ldr    x9, [x9, #0xc8]                          
  d71534: add    x9, x9, x10, lsl #3                      
  d71538: ldur   x9, [x9, #-8]                            
  d7153c: cmp    x9, x8                                   
  d71540: b.eq   #0xd715e0                                
  d71544: adrp   x8, #0x2fc7000                           
  d71548: ldr    x8, [x8, #0xec8]                         ; META TeammateMgr_TypeInfo
  d7154c: ldr    x0, [x8]                                 
  d71550: ldrb   w8, [x0, #0x127]                         
  d71554: tbz    w8, #1, #0xd71564                        
  d71558: ldr    w8, [x0, #0xd8]                          
  d7155c: cbnz   w8, #0xd71564                            
  d71560: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d71564: mov    x0, xzr                                  
  d71568: bl     #0x106888c                               ; TeammateMgr$$Get
  d7156c: mov    x21, x0                                  
  d71570: cbnz   x21, #0xd71578                           
  d71574: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71578: fmov   s0, #3.00000000                          
  d7157c: fmov   s1, #5.00000000                          
  d71580: mov    x0, x21                                  
  d71584: mov    x1, x20                                  
  d71588: mov    x2, xzr                                  
  d7158c: mov    x3, xzr                                  
  d71590: bl     #0x106904c                               ; TeammateMgr$$InitScenePositionSingle
  d71594: mov    x0, x20                                  
  d71598: mov    x1, xzr                                  
  d7159c: bl     #0x10bacd4                               ; Entity$$get_gameObject
  d715a0: ldrb   w21, [x19, #0x51]                        
  d715a4: mov    x19, x0                                  
  d715a8: cbnz   x19, #0xd715b0                           
  d715ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d715b0: cmp    w21, #0                                  
  d715b4: cset   w1, eq                                   
  d715b8: mov    x0, x19                                  
  d715bc: mov    x2, xzr                                  
  d715c0: bl     #0x1bd6548                               ; UnityEngine.GameObject$$SetActive
  d715c4: mov    x0, x20                                  
  d715c8: ldp    x29, x30, [sp, #0x20]                    
  d715cc: ldp    x20, x19, [sp, #0x10]                    
  d715d0: mov    w1, #1                                   
  d715d4: mov    x2, xzr                                  
  d715d8: ldr    x21, [sp], #0x30                         
  d715dc: b      #0xe11f0c                                ; Player$$AutoFight
  d715e0: ldp    x29, x30, [sp, #0x20]                    
  d715e4: ldp    x20, x19, [sp, #0x10]                    
  d715e8: ldr    x21, [sp], #0x30                         
  d715ec: ret                                             

===== BaseMode$$OnLevelLoaded @ 0xd71cec (756 bytes)
  d71cec: sub    sp, sp, #0x70                            
  d71cf0: str    x25, [sp, #0x20]                         
  d71cf4: stp    x24, x23, [sp, #0x30]                    
  d71cf8: stp    x22, x21, [sp, #0x40]                    
  d71cfc: stp    x20, x19, [sp, #0x50]                    
  d71d00: stp    x29, x30, [sp, #0x60]                    
  d71d04: add    x29, sp, #0x60                           
  d71d08: adrp   x20, #0x31cc000                          
  d71d0c: ldrb   w8, [x20, #0xbb3]                        
  d71d10: mov    x19, x0                                  
  d71d14: tbnz   w8, #0, #0xd71d30                        
  d71d18: adrp   x8, #0x2fde000                           
  d71d1c: ldr    x8, [x8, #0x2d8]                         
  d71d20: ldr    w0, [x8]                                 
  d71d24: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d71d28: mov    w8, #1                                   
  d71d2c: strb   w8, [x20, #0xbb3]                        
  d71d30: adrp   x8, #0x3036000                           
  d71d34: ldr    x8, [x8, #0x560]                         ; META BaseMode_TypeInfo
  d71d38: stp    xzr, xzr, [sp, #0x10]                    
  d71d3c: str    xzr, [sp, #8]                            
  d71d40: ldr    x8, [x8]                                 
  d71d44: ldr    x8, [x8, #0xb8]                          
  d71d48: ldr    x0, [x8, #0xc0]                          
  d71d4c: cbz    x0, #0xd71d60                            
  d71d50: mov    x1, x19                                  
  d71d54: mov    x2, xzr                                  
  d71d58: bl     #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d71d5c: b      #0xd71fc0                                
  d71d60: adrp   x8, #0x2fd3000                           
  d71d64: ldr    x8, [x8, #0x7b8]                         ; META msg.CSStageEnter_TypeInfo
  d71d68: ldr    x0, [x8]                                 
  d71d6c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d71d70: mov    x1, xzr                                  
  d71d74: mov    x20, x0                                  
  d71d78: bl     #0x213d42c                               ; msg.CSStageEnter$$.ctor
  d71d7c: adrp   x8, #0x3077000                           
  d71d80: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  d71d84: ldr    x0, [x8]                                 
  d71d88: ldrb   w8, [x0, #0x127]                         
  d71d8c: tbz    w8, #1, #0xd71d9c                        
  d71d90: ldr    w8, [x0, #0xd8]                          
  d71d94: cbnz   w8, #0xd71d9c                            
  d71d98: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d71d9c: mov    x0, x20                                  
  d71da0: mov    x1, xzr                                  
  d71da4: bl     #0x1125f84                               ; ConnectAPI$$QueuePacket
  d71da8: adrp   x8, #0x3064000                           
  d71dac: ldr    x8, [x8, #0x4b8]                         ; META msg.CSUnionBattleLog_TypeInfo
  d71db0: ldr    x0, [x8]                                 
  d71db4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  d71db8: mov    x1, xzr                                  
  d71dbc: mov    x20, x0                                  
  d71dc0: bl     #0x20586c0                               ; msg.CSUnionBattleLog$$.ctor
  d71dc4: mov    x0, x20                                  
  d71dc8: mov    x1, xzr                                  
  d71dcc: bl     #0x1125f84                               ; ConnectAPI$$QueuePacket
  d71dd0: adrp   x8, #0x2ff2000                           
  d71dd4: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  d71dd8: ldr    x0, [x8]                                 
  d71ddc: ldrb   w8, [x0, #0x127]                         
  d71de0: tbz    w8, #1, #0xd71df0                        
  d71de4: ldr    w8, [x0, #0xd8]                          
  d71de8: cbnz   w8, #0xd71df0                            
  d71dec: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d71df0: mov    x0, xzr                                  
  d71df4: bl     #0xd17714                                ; MainPlayer$$Get
  d71df8: mov    x20, x0                                  
  d71dfc: cbnz   x20, #0xd71e04                           
  d71e00: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71e04: mov    w1, #1                                   
  d71e08: mov    x0, x20                                  
  d71e0c: mov    x2, xzr                                  
  d71e10: mov    w22, #1                                  
  d71e14: bl     #0xd18734                                ; MainPlayer$$InitScenePosition
  d71e18: ldrb   w8, [x19, #0x41]                         
  d71e1c: cbz    w8, #0xd71fb4                            
  d71e20: adrp   x8, #0x2fc7000                           
  d71e24: ldr    x8, [x8, #0xec8]                         ; META TeammateMgr_TypeInfo
  d71e28: ldr    x0, [x8]                                 
  d71e2c: ldrb   w8, [x0, #0x127]                         
  d71e30: tbz    w8, #1, #0xd71e40                        
  d71e34: ldr    w8, [x0, #0xd8]                          
  d71e38: cbnz   w8, #0xd71e40                            
  d71e3c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d71e40: mov    x0, xzr                                  
  d71e44: bl     #0x106888c                               ; TeammateMgr$$Get
  d71e48: mov    x20, x0                                  
  d71e4c: cbnz   x20, #0xd71e54                           
  d71e50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71e54: fmov   s0, #3.00000000                          
  d71e58: fmov   s1, #5.00000000                          
  d71e5c: mov    x0, x20                                  
  d71e60: mov    x1, xzr                                  
  d71e64: bl     #0x1068e5c                               ; TeammateMgr$$InitScenePosition
  d71e68: ldr    x20, [x19, #0x48]                        
  d71e6c: cbnz   x20, #0xd71e78                           
  d71e70: mov    x0, xzr                                  
  d71e74: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71e78: adrp   x8, #0x2fd0000                           
  d71e7c: ldr    x8, [x8, #0xe10]                         ; MMETH Method$System.Collections.Generic.Dictionary<long, Player>.get_Keys()
  d71e80: mov    x0, x20                                  
  d71e84: ldr    x1, [x8]                                 
  d71e88: bl     #0x2181b00                               ; System.Collections.Generic.Dictionary<long, object>$$get_Keys
  d71e8c: mov    x20, x0                                  
  d71e90: cbnz   x20, #0xd71e98                           
  d71e94: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71e98: adrp   x8, #0x3031000                           
  d71e9c: ldr    x8, [x8, #0x940]                         ; MMETH Method$System.Collections.Generic.Dictionary.KeyCollection<long, Player>.GetEnumerator()
  d71ea0: mov    x0, x20                                  
  d71ea4: ldr    x1, [x8]                                 
  d71ea8: add    x8, sp, #8                               
  d71eac: bl     #0x1c2b158                               ; System.Collections.Generic.Dictionary.KeyCollection<long, object>$$GetEnumerator
  d71eb0: adrp   x23, #0x3004000                          
  d71eb4: adrp   x24, #0x3009000                          
  d71eb8: adrp   x25, #0x3018000                          
  d71ebc: ldr    x23, [x23, #0x940]                       ; MMETH Method$System.Collections.Generic.Dictionary.KeyCollection.Enumerator<long, Player>.MoveNext()
  d71ec0: ldr    x24, [x24, #0x708]                       ; MMETH Method$System.Collections.Generic.Dictionary.KeyCollection.Enumerator<long, Player>.get_Current()
  d71ec4: ldr    x25, [x25, #0xaa8]                       ; MMETH Method$System.Collections.Generic.Dictionary<long, Player>.get_Item()
  d71ec8: ldr    x1, [x23]                                
  d71ecc: add    x0, sp, #8                               
  d71ed0: bl     #0x1566f44                               ; ? near System.Xml.Serialization.XmlCustomFormatter$$.cctor+0x134d4
  d71ed4: tbz    w0, #0, #0xd71f50                        
  d71ed8: ldr    x1, [x24]                                
  d71edc: add    x0, sp, #8                               
  d71ee0: bl     #0x1567100                               ; ? near System.Xml.Serialization.XmlCustomFormatter$$.cctor+0x13690
  d71ee4: mov    x20, x0                                  
  d71ee8: mov    x0, x19                                  
  d71eec: bl     #0xd6eea0                                ; BaseMode$$get_playerData
  d71ef0: mov    x21, x0                                  
  d71ef4: cbnz   x21, #0xd71f00                           
  d71ef8: mov    x0, xzr                                  
  d71efc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71f00: ldr    x8, [x21, #0x10]                         
  d71f04: cmp    x20, x8                                  
  d71f08: b.eq   #0xd71ec8                                
  d71f0c: ldr    x21, [x19, #0x48]                        
  d71f10: cbnz   x21, #0xd71f1c                           
  d71f14: mov    x0, xzr                                  
  d71f18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71f1c: ldr    x2, [x25]                                
  d71f20: mov    x0, x21                                  
  d71f24: mov    x1, x20                                  
  d71f28: bl     #0x2181ce0                               ; System.Collections.Generic.Dictionary<long, object>$$get_Item
  d71f2c: mov    x20, x0                                  
  d71f30: cbnz   x20, #0xd71f3c                           
  d71f34: mov    x0, xzr                                  
  d71f38: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d71f3c: mov    w1, #1                                   
  d71f40: mov    x0, x20                                  
  d71f44: mov    x2, xzr                                  
  d71f48: bl     #0xe11f0c                                ; Player$$AutoFight
  d71f4c: b      #0xd71ec8                                
  d71f50: adrp   x8, #0x2ff8000                           
  d71f54: ldr    x8, [x8, #0x798]                         ; MMETH Method$System.Collections.Generic.Dictionary.KeyCollection.Enumerator<long, Player>.Dispose()
  d71f58: add    x0, sp, #8                               
  d71f5c: ldr    x1, [x8]                                 
  d71f60: bl     #0x1566f40                               ; ? near System.Xml.Serialization.XmlCustomFormatter$$.cctor+0x134d0
  d71f64: b      #0xd71fb4                                
  d71f68: b      #0xd71f78                                
  d71f6c: b      #0xd71f78                                
  d71f70: b      #0xd71f78                                
  d71f74: b      #0xd71f78                                
  d71f78: cmp    w1, #1                                   
  d71f7c: b.ne   #0xd71fdc                                
  d71f80: bl     #0xa05f60                                
  d71f84: ldr    x20, [x0]                                
  d71f88: bl     #0xa057f0                                
  d71f8c: adrp   x8, #0x2ff8000                           
  d71f90: ldr    x8, [x8, #0x798]                         ; MMETH Method$System.Collections.Generic.Dictionary.KeyCollection.Enumerator<long, Player>.Dispose()
  d71f94: add    x0, sp, #8                               
  d71f98: ldr    x1, [x8]                                 
  d71f9c: bl     #0x1566f40                               ; ? near System.Xml.Serialization.XmlCustomFormatter$$.cctor+0x134d0
  d71fa0: cbz    x20, #0xd71fb4                           
  d71fa4: mov    x0, x20                                  
  d71fa8: mov    x1, xzr                                  
  d71fac: mov    x2, xzr                                  
  d71fb0: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  d71fb4: mov    x0, x19                                  
  d71fb8: strb   w22, [x19, #0x50]                        
  d71fbc: bl     #0xd71fe0                                ; BaseMode$$InitCameraAndLight
  d71fc0: ldp    x29, x30, [sp, #0x60]                    
  d71fc4: ldp    x20, x19, [sp, #0x50]                    
  d71fc8: ldp    x22, x21, [sp, #0x40]                    
  d71fcc: ldp    x24, x23, [sp, #0x30]                    
  d71fd0: ldr    x25, [sp, #0x20]                         
  d71fd4: add    sp, sp, #0x70                            
  d71fd8: ret                                             
  d71fdc: bl     #0xa056e0                                

===== BattleMode$$InitScene @ 0xeee798 (548 bytes)
  eee798: str    x21, [sp, #-0x30]!                       
  eee79c: stp    x20, x19, [sp, #0x10]                    
  eee7a0: stp    x29, x30, [sp, #0x20]                    
  eee7a4: add    x29, sp, #0x20                           
  eee7a8: adrp   x20, #0x31cd000                          
  eee7ac: ldrb   w8, [x20, #0x8a2]                        
  eee7b0: mov    x19, x0                                  
  eee7b4: tbnz   w8, #0, #0xeee7d0                        
  eee7b8: adrp   x8, #0x3059000                           
  eee7bc: ldr    x8, [x8, #0x9d0]                         
  eee7c0: ldr    w0, [x8]                                 
  eee7c4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  eee7c8: mov    w8, #1                                   
  eee7cc: strb   w8, [x20, #0x8a2]                        
  eee7d0: adrp   x8, #0x2fe5000                           
  eee7d4: ldr    x8, [x8, #0x350]                         ; META BattleMode_TypeInfo
  eee7d8: ldr    x8, [x8]                                 
  eee7dc: ldr    x8, [x8, #0xb8]                          
  eee7e0: ldr    x0, [x8, #0x90]                          
  eee7e4: cbz    x0, #0xeee800                            
  eee7e8: mov    x1, x19                                  
  eee7ec: ldp    x29, x30, [sp, #0x20]                    
  eee7f0: ldp    x20, x19, [sp, #0x10]                    
  eee7f4: mov    x2, xzr                                  
  eee7f8: ldr    x21, [sp], #0x30                         
  eee7fc: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  eee800: mov    x0, x19                                  
  eee804: bl     #0xeee9bc                                ; BattleMode$$InitCameraAndLight
  eee808: adrp   x8, #0x2fd3000                           
  eee80c: ldr    x8, [x8, #0x7b8]                         ; META msg.CSStageEnter_TypeInfo
  eee810: ldr    x0, [x8]                                 
  eee814: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  eee818: mov    x1, xzr                                  
  eee81c: mov    x20, x0                                  
  eee820: bl     #0x213d42c                               ; msg.CSStageEnter$$.ctor
  eee824: adrp   x8, #0x3077000                           
  eee828: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  eee82c: ldr    x0, [x8]                                 
  eee830: ldrb   w8, [x0, #0x127]                         
  eee834: tbz    w8, #1, #0xeee844                        
  eee838: ldr    w8, [x0, #0xd8]                          
  eee83c: cbnz   w8, #0xeee844                            
  eee840: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  eee844: mov    x0, x20                                  
  eee848: mov    x1, xzr                                  
  eee84c: bl     #0x1125f84                               ; ConnectAPI$$QueuePacket
  eee850: mov    x0, x19                                  
  eee854: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  eee858: adrp   x8, #0x303d000                           
  eee85c: ldr    x8, [x8, #0xd58]                         ; META GameplayEvent_TypeInfo
  eee860: mov    x19, x0                                  
  eee864: add    x1, sp, #0xc                             
  eee868: ldr    x0, [x8]                                 
  eee86c: mov    w8, #8                                   
  eee870: str    w8, [sp, #0xc]                           
  eee874: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  eee878: mov    x20, x0                                  
  eee87c: cbnz   x19, #0xeee888                           
  eee880: mov    x0, xzr                                  
  eee884: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  eee888: adrp   x10, #0x2fde000                          
  eee88c: ldr    x8, [x19]                                
  eee890: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  eee894: ldrh   w9, [x8, #0x11e]                         
  eee898: ldr    x1, [x10]                                
  eee89c: cbz    x9, #0xeee8c8                            
  eee8a0: ldr    x11, [x8, #0xb0]                         
  eee8a4: mov    x10, xzr                                 
  eee8a8: add    x11, x11, #8                             
  eee8ac: ldur   x12, [x11, #-8]                          
  eee8b0: cmp    x12, x1                                  
  eee8b4: b.eq   #0xeee8d8                                
  eee8b8: add    x10, x10, #1                             
  eee8bc: cmp    x10, x9                                  
  eee8c0: add    x11, x11, #0x10                          
  eee8c4: b.lo   #0xeee8ac                                
  eee8c8: mov    x0, x19                                  
  eee8cc: mov    w2, wzr                                  
  eee8d0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  eee8d4: b      #0xeee8e4                                
  eee8d8: ldr    w9, [x11]                                
  eee8dc: add    x8, x8, x9, lsl #4                       
  eee8e0: add    x0, x8, #0x128                           
  eee8e4: ldp    x8, x2, [x0]                             
  eee8e8: mov    x0, x19                                  
  eee8ec: mov    x1, x20                                  
  eee8f0: blr    x8                                       
  eee8f4: adrp   x21, #0x300b000                          
  eee8f8: ldr    x21, [x21, #0x870]                       ; META LevelData_TypeInfo
  eee8fc: ldr    x0, [x21]                                
  eee900: ldrb   w8, [x0, #0x127]                         
  eee904: tbz    w8, #1, #0xeee918                        
  eee908: ldr    w8, [x0, #0xd8]                          
  eee90c: cbnz   w8, #0xeee918                            
  eee910: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  eee914: ldr    x0, [x21]                                
  eee918: adrp   x8, #0x2ff8000                           
  eee91c: ldr    x8, [x8, #0xb60]                         ; META InstanceMode_TypeInfo
  eee920: ldr    x9, [x0, #0xb8]                          
  eee924: ldr    x0, [x8]                                 
  eee928: add    x1, x9, #4                               
  eee92c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  eee930: mov    x20, x0                                  
  eee934: cbnz   x20, #0xeee93c                           
  eee938: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  eee93c: ldr    x8, [x20]                                
  eee940: mov    x0, x20                                  
  eee944: ldp    x9, x1, [x8, #0x158]                     
  eee948: blr    x9                                       
  eee94c: mov    x19, x0                                  
  eee950: cbnz   x20, #0xeee95c                           
  eee954: mov    x0, xzr                                  
  eee958: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  eee95c: mov    x0, x20                                  
  eee960: bl     #0xc25a5c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46c24
  eee964: ldr    x8, [x21]                                
  eee968: ldr    w9, [x0]                                 
  eee96c: ldr    x8, [x8, #0xb8]                          
  eee970: str    w9, [x8, #4]                             
  eee974: adrp   x8, #0x2fc5000                           
  eee978: ldr    x8, [x8, #0xcc0]                         ; META AppsFlyer_TypeInfo
  eee97c: ldr    x0, [x8]                                 
  eee980: ldrb   w8, [x0, #0x127]                         
  eee984: tbz    w8, #1, #0xeee994                        
  eee988: ldr    w8, [x0, #0xd8]                          
  eee98c: cbnz   w8, #0xeee994                            
  eee990: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  eee994: adrp   x8, #0x3041000                           
  eee998: ldr    x8, [x8, #0xbe8]                         ; STR "mission_begin"
  eee99c: mov    x1, x19                                  
  eee9a0: mov    x2, xzr                                  
  eee9a4: ldr    x0, [x8]                                 
  eee9a8: bl     #0x23bd170                               ; AppsFlyer$$trackEvent
  eee9ac: ldp    x29, x30, [sp, #0x20]                    
  eee9b0: ldp    x20, x19, [sp, #0x10]                    
  eee9b4: ldr    x21, [sp], #0x30                         
  eee9b8: ret                                             

===== BattleMode$$OnSceneLoaded @ 0xeef558 (192 bytes)
  eef558: stp    x20, x19, [sp, #-0x20]!                  
  eef55c: stp    x29, x30, [sp, #0x10]                    
  eef560: add    x29, sp, #0x10                           
  eef564: adrp   x20, #0x31cd000                          
  eef568: ldrb   w8, [x20, #0x8a5]                        
  eef56c: mov    x19, x0                                  
  eef570: tbnz   w8, #0, #0xeef58c                        
  eef574: adrp   x8, #0x3002000                           
  eef578: ldr    x8, [x8, #0x1a8]                         
  eef57c: ldr    w0, [x8]                                 
  eef580: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  eef584: mov    w8, #1                                   
  eef588: strb   w8, [x20, #0x8a5]                        
  eef58c: adrp   x8, #0x2fe5000                           
  eef590: ldr    x8, [x8, #0x350]                         ; META BattleMode_TypeInfo
  eef594: ldr    x8, [x8]                                 
  eef598: ldr    x8, [x8, #0xb8]                          
  eef59c: ldr    x0, [x8, #0xa8]                          
  eef5a0: cbz    x0, #0xeef5b8                            
  eef5a4: ldp    x29, x30, [sp, #0x10]                    
  eef5a8: mov    x1, x19                                  
  eef5ac: mov    x2, xzr                                  
  eef5b0: ldp    x20, x19, [sp], #0x20                    
  eef5b4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  eef5b8: mov    x0, x19                                  
  eef5bc: bl     #0xeef618                                ; BattleMode$$PlayBgm
  eef5c0: adrp   x8, #0x2fec000                           
  eef5c4: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  eef5c8: ldr    x0, [x8]                                 
  eef5cc: ldrb   w8, [x0, #0x127]                         
  eef5d0: tbz    w8, #1, #0xeef5e0                        
  eef5d4: ldr    w8, [x0, #0xd8]                          
  eef5d8: cbnz   w8, #0xeef5e0                            
  eef5dc: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  eef5e0: mov    x0, xzr                                  
  eef5e4: bl     #0x1342e08                               ; UniCore.AssetLoader$$EndProgress
  eef5e8: adrp   x8, #0x3033000                           
  eef5ec: ldr    x8, [x8, #0x638]                         ; META UniCore.SceneMgr_TypeInfo
  eef5f0: ldr    x0, [x8]                                 
  eef5f4: ldrb   w8, [x0, #0x127]                         
  eef5f8: tbz    w8, #1, #0xeef608                        
  eef5fc: ldr    w8, [x0, #0xd8]                          
  eef600: cbnz   w8, #0xeef608                            
  eef604: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  eef608: ldp    x29, x30, [sp, #0x10]                    
  eef60c: mov    x0, xzr                                  
  eef610: ldp    x20, x19, [sp], #0x20                    
  eef614: b      #0x143ff24                               ; UniCore.SceneMgr$$NotifySceneLoaded

===== BattleMode.<WaitForLoaded>d__37$$MoveNext @ 0xef0818 (728 bytes)
  ef0818: stp    x22, x21, [sp, #-0x30]!                  
  ef081c: stp    x20, x19, [sp, #0x10]                    
  ef0820: stp    x29, x30, [sp, #0x20]                    
  ef0824: add    x29, sp, #0x20                           
  ef0828: adrp   x20, #0x31cd000                          
  ef082c: ldrb   w8, [x20, #0x8b3]                        
  ef0830: mov    x19, x0                                  
  ef0834: tbnz   w8, #0, #0xef0850                        
  ef0838: adrp   x8, #0x305c000                           
  ef083c: ldr    x8, [x8, #0x3a8]                         
  ef0840: ldr    w0, [x8]                                 
  ef0844: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  ef0848: mov    w8, #1                                   
  ef084c: strb   w8, [x20, #0x8b3]                        
  ef0850: ldr    w8, [x19, #0x10]                         
  ef0854: cmp    w8, #4                                   
  ef0858: b.hi   #0xef0adc                                
  ef085c: adrp   x9, #0x253c000                           
  ef0860: add    x9, x9, #0xc08                           
  ef0864: ldrsw  x8, [x9, x8, lsl #2]                     
  ef0868: ldr    x20, [x19, #0x20]                        
  ef086c: add    x8, x8, x9                               
  ef0870: br     x8                                       
  ef0874: mov    w8, #-1                                  
  ef0878: str    w8, [x19, #0x10]                         
  ef087c: adrp   x8, #0x2fec000                           
  ef0880: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  ef0884: ldr    x0, [x8]                                 
  ef0888: ldrb   w8, [x0, #0x127]                         
  ef088c: tbz    w8, #1, #0xef089c                        
  ef0890: ldr    w8, [x0, #0xd8]                          
  ef0894: cbnz   w8, #0xef089c                            
  ef0898: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  ef089c: mov    x0, xzr                                  
  ef08a0: bl     #0x13485f0                               ; UniCore.AssetLoader$$BeginProgress
  ef08a4: tbz    w0, #0, #0xef0adc                        
  ef08a8: mov    x0, xzr                                  
  ef08ac: bl     #0xf1d744                                ; SceneLoading$$Get
  ef08b0: mov    x21, x0                                  
  ef08b4: cbnz   x21, #0xef08bc                           
  ef08b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef08bc: mov    w1, #1                                   
  ef08c0: mov    x0, x21                                  
  ef08c4: mov    x2, xzr                                  
  ef08c8: mov    w22, #1                                  
  ef08cc: bl     #0xf1d794                                ; SceneLoading$$Show
  ef08d0: cbnz   x20, #0xef08dc                           
  ef08d4: mov    x0, xzr                                  
  ef08d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef08dc: strb   w22, [x20, #0x10]                        
  ef08e0: b      #0xef08ec                                
  ef08e4: mov    w8, #-1                                  
  ef08e8: str    w8, [x19, #0x10]                         
  ef08ec: adrp   x8, #0x2fec000                           
  ef08f0: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  ef08f4: ldr    x0, [x8]                                 
  ef08f8: ldrb   w8, [x0, #0x127]                         
  ef08fc: tbz    w8, #1, #0xef090c                        
  ef0900: ldr    w8, [x0, #0xd8]                          
  ef0904: cbnz   w8, #0xef090c                            
  ef0908: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  ef090c: mov    x0, xzr                                  
  ef0910: bl     #0x134871c                               ; UniCore.AssetLoader$$CurrentProgress
  ef0914: fmov   s1, #1.00000000                          
  ef0918: fcmp   s0, s1                                   
  ef091c: str    xzr, [x19, #0x18]                        
  ef0920: b.mi   #0xef0aa8                                
  ef0924: mov    w8, #2                                   
  ef0928: b      #0xef0a88                                
  ef092c: mov    w8, #-1                                  
  ef0930: str    w8, [x19, #0x10]                         
  ef0934: adrp   x8, #0x3055000                           
  ef0938: ldr    x8, [x8, #0xb0]                          ; META UnityEngine.WaitForEndOfFrame_TypeInfo
  ef093c: ldr    x0, [x8]                                 
  ef0940: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  ef0944: mov    x1, xzr                                  
  ef0948: mov    x20, x0                                  
  ef094c: bl     #0x239e7dc                               ; UnityEngine.WaitForEndOfFrame$$.ctor
  ef0950: str    x20, [x19, #0x18]                        
  ef0954: mov    w8, #3                                   
  ef0958: b      #0xef0a88                                
  ef095c: mov    w8, #-1                                  
  ef0960: str    w8, [x19, #0x10]                         
  ef0964: adrp   x8, #0x2fec000                           
  ef0968: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  ef096c: ldr    x0, [x8]                                 
  ef0970: ldrb   w8, [x0, #0x127]                         
  ef0974: tbz    w8, #1, #0xef0984                        
  ef0978: ldr    w8, [x0, #0xd8]                          
  ef097c: cbnz   w8, #0xef0984                            
  ef0980: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  ef0984: mov    x0, xzr                                  
  ef0988: bl     #0x1342e08                               ; UniCore.AssetLoader$$EndProgress
  ef098c: mov    x0, xzr                                  
  ef0990: bl     #0xf1d744                                ; SceneLoading$$Get
  ef0994: mov    x21, x0                                  
  ef0998: cbnz   x21, #0xef09a0                           
  ef099c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef09a0: mov    w8, #1                                   
  ef09a4: str    w8, [x21, #0x58]                         
  ef09a8: cbnz   x20, #0xef09b4                           
  ef09ac: mov    x0, xzr                                  
  ef09b0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef09b4: ldr    x8, [x20]                                
  ef09b8: mov    x0, x20                                  
  ef09bc: ldp    x9, x1, [x8, #0x198]                     
  ef09c0: blr    x9                                       
  ef09c4: mov    x0, xzr                                  
  ef09c8: bl     #0x13485f0                               ; UniCore.AssetLoader$$BeginProgress
  ef09cc: tbz    w0, #0, #0xef0aa0                        
  ef09d0: adrp   x22, #0x2fdb000                          
  ef09d4: ldr    x22, [x22, #0x280]                       ; META BattleMode.<>c_TypeInfo
  ef09d8: ldr    x0, [x22]                                
  ef09dc: ldrb   w8, [x0, #0x127]                         
  ef09e0: tbz    w8, #1, #0xef09f4                        
  ef09e4: ldr    w8, [x0, #0xd8]                          
  ef09e8: cbnz   w8, #0xef09f4                            
  ef09ec: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  ef09f0: ldr    x0, [x22]                                
  ef09f4: ldr    x8, [x0, #0xb8]                          
  ef09f8: ldr    x20, [x8, #8]                            
  ef09fc: cbnz   x20, #0xef0a60                           
  ef0a00: ldrb   w9, [x0, #0x127]                         
  ef0a04: tbz    w9, #1, #0xef0a1c                        
  ef0a08: ldr    w9, [x0, #0xd8]                          
  ef0a0c: cbnz   w9, #0xef0a1c                            
  ef0a10: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  ef0a14: ldr    x8, [x22]                                
  ef0a18: ldr    x8, [x8, #0xb8]                          
  ef0a1c: ldr    x21, [x8]                                
  ef0a20: adrp   x8, #0x302d000                           
  ef0a24: ldr    x8, [x8, #0x1b8]                         ; META System.Func<bool>_TypeInfo
  ef0a28: ldr    x0, [x8]                                 
  ef0a2c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  ef0a30: adrp   x8, #0x302b000                           
  ef0a34: adrp   x9, #0x302c000                           
  ef0a38: ldr    x8, [x8, #0xd68]                         ; MMETH Method$BattleMode.<>c.<WaitForLoaded>b__37_0()
  ef0a3c: ldr    x9, [x9, #0xad8]                         ; MMETH Method$System.Func<bool>..ctor()
  ef0a40: mov    x1, x21                                  
  ef0a44: mov    x20, x0                                  
  ef0a48: ldr    x2, [x8]                                 
  ef0a4c: ldr    x3, [x9]                                 
  ef0a50: bl     #0x223d948                               ; System.Func<bool>$$.ctor
  ef0a54: ldr    x8, [x22]                                
  ef0a58: ldr    x8, [x8, #0xb8]                          
  ef0a5c: str    x20, [x8, #8]                            
  ef0a60: adrp   x8, #0x3068000                           
  ef0a64: ldr    x8, [x8, #0x7f8]                         ; META UnityEngine.WaitWhile_TypeInfo
  ef0a68: ldr    x0, [x8]                                 
  ef0a6c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  ef0a70: mov    x1, x20                                  
  ef0a74: mov    x2, xzr                                  
  ef0a78: mov    x21, x0                                  
  ef0a7c: bl     #0x239e964                               ; UnityEngine.WaitWhile$$.ctor
  ef0a80: str    x21, [x19, #0x18]                        
  ef0a84: mov    w8, #4                                   
  ef0a88: str    w8, [x19, #0x10]                         
  ef0a8c: mov    w0, #1                                   
  ef0a90: b      #0xef0ae0                                
  ef0a94: mov    w8, #-1                                  
  ef0a98: str    w8, [x19, #0x10]                         
  ef0a9c: cbz    x20, #0xef0ab4                           
  ef0aa0: strb   wzr, [x20, #0x10]                        
  ef0aa4: b      #0xef0acc                                
  ef0aa8: mov    w0, #1                                   
  ef0aac: str    w0, [x19, #0x10]                         
  ef0ab0: b      #0xef0ae0                                
  ef0ab4: mov    x0, xzr                                  
  ef0ab8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef0abc: mov    w8, #0x10                                
  ef0ac0: mov    x0, xzr                                  
  ef0ac4: strb   wzr, [x8]                                
  ef0ac8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  ef0acc: ldr    x8, [x20]                                
  ef0ad0: mov    x0, x20                                  
  ef0ad4: ldp    x9, x1, [x8, #0x1c8]                     
  ef0ad8: blr    x9                                       
  ef0adc: mov    w0, wzr                                  
  ef0ae0: ldp    x29, x30, [sp, #0x20]                    
  ef0ae4: ldp    x20, x19, [sp, #0x10]                    
  ef0ae8: ldp    x22, x21, [sp], #0x30                    
  ef0aec: ret                                             

===== GuildBattlePVEMode$$OnLevelLoaded @ 0xf7cd0c (252 bytes)
  f7cd0c: stp    x20, x19, [sp, #-0x20]!                  
  f7cd10: stp    x29, x30, [sp, #0x10]                    
  f7cd14: add    x29, sp, #0x10                           
  f7cd18: adrp   x20, #0x31cd000                          
  f7cd1c: ldrb   w8, [x20, #0xe3f]                        
  f7cd20: mov    x19, x0                                  
  f7cd24: tbnz   w8, #0, #0xf7cd40                        
  f7cd28: adrp   x8, #0x2fda000                           
  f7cd2c: ldr    x8, [x8, #0x7c0]                         
  f7cd30: ldr    w0, [x8]                                 
  f7cd34: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f7cd38: mov    w8, #1                                   
  f7cd3c: strb   w8, [x20, #0xe3f]                        
  f7cd40: adrp   x8, #0x3007000                           
  f7cd44: ldr    x8, [x8, #0x1f8]                         ; META GuildBattlePVEMode_TypeInfo
  f7cd48: ldr    x8, [x8]                                 
  f7cd4c: ldr    x8, [x8, #0xb8]                          
  f7cd50: ldr    x0, [x8, #0x48]                          
  f7cd54: cbz    x0, #0xf7cd6c                            
  f7cd58: ldp    x29, x30, [sp, #0x10]                    
  f7cd5c: mov    x1, x19                                  
  f7cd60: mov    x2, xzr                                  
  f7cd64: ldp    x20, x19, [sp], #0x20                    
  f7cd68: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  f7cd6c: adrp   x8, #0x2ff2000                           
  f7cd70: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  f7cd74: ldr    x0, [x8]                                 
  f7cd78: ldrb   w8, [x0, #0x127]                         
  f7cd7c: tbz    w8, #1, #0xf7cd8c                        
  f7cd80: ldr    w8, [x0, #0xd8]                          
  f7cd84: cbnz   w8, #0xf7cd8c                            
  f7cd88: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f7cd8c: mov    x0, xzr                                  
  f7cd90: bl     #0xd17714                                ; MainPlayer$$Get
  f7cd94: mov    x20, x0                                  
  f7cd98: cbnz   x20, #0xf7cda0                           
  f7cd9c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7cda0: mov    w1, #1                                   
  f7cda4: mov    x0, x20                                  
  f7cda8: mov    x2, xzr                                  
  f7cdac: bl     #0xd18734                                ; MainPlayer$$InitScenePosition
  f7cdb0: adrp   x8, #0x305e000                           
  f7cdb4: ldr    x8, [x8, #0x4a0]                         ; META OpponentMgr_TypeInfo
  f7cdb8: ldr    x0, [x8]                                 
  f7cdbc: ldrb   w8, [x0, #0x127]                         
  f7cdc0: tbz    w8, #1, #0xf7cdd0                        
  f7cdc4: ldr    w8, [x0, #0xd8]                          
  f7cdc8: cbnz   w8, #0xf7cdd0                            
  f7cdcc: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f7cdd0: mov    x0, xzr                                  
  f7cdd4: bl     #0xe53744                                ; OpponentMgr$$Get
  f7cdd8: mov    x20, x0                                  
  f7cddc: cbnz   x20, #0xf7cde4                           
  f7cde0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7cde4: mov    w1, #1                                   
  f7cde8: mov    x0, x20                                  
  f7cdec: mov    x2, xzr                                  
  f7cdf0: bl     #0xe64b74                                ; OpponentMgr$$InitScenePosition
  f7cdf4: ldp    x29, x30, [sp, #0x10]                    
  f7cdf8: mov    x0, x19                                  
  f7cdfc: mov    x1, xzr                                  
  f7ce00: ldp    x20, x19, [sp], #0x20                    
  f7ce04: b      #0xeee798                                ; BattleMode$$InitScene

===== GuildBattlePVEMode$$OnSceneLoaded @ 0xf7ce08 (1036 bytes)
  f7ce08: sub    sp, sp, #0x50                            
  f7ce0c: stp    x24, x23, [sp, #0x10]                    
  f7ce10: stp    x22, x21, [sp, #0x20]                    
  f7ce14: stp    x20, x19, [sp, #0x30]                    
  f7ce18: stp    x29, x30, [sp, #0x40]                    
  f7ce1c: add    x29, sp, #0x40                           
  f7ce20: adrp   x20, #0x31cd000                          
  f7ce24: ldrb   w8, [x20, #0xe40]                        
  f7ce28: mov    x19, x0                                  
  f7ce2c: tbnz   w8, #0, #0xf7ce48                        
  f7ce30: adrp   x8, #0x2fdf000                           
  f7ce34: ldr    x8, [x8, #0x498]                         
  f7ce38: ldr    w0, [x8]                                 
  f7ce3c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f7ce40: mov    w8, #1                                   
  f7ce44: strb   w8, [x20, #0xe40]                        
  f7ce48: adrp   x8, #0x3007000                           
  f7ce4c: ldr    x8, [x8, #0x1f8]                         ; META GuildBattlePVEMode_TypeInfo
  f7ce50: ldr    x8, [x8]                                 
  f7ce54: ldr    x8, [x8, #0xb8]                          
  f7ce58: ldr    x0, [x8, #0x50]                          
  f7ce5c: cbz    x0, #0xf7ce80                            
  f7ce60: mov    x1, x19                                  
  f7ce64: ldp    x29, x30, [sp, #0x40]                    
  f7ce68: ldp    x20, x19, [sp, #0x30]                    
  f7ce6c: ldp    x22, x21, [sp, #0x20]                    
  f7ce70: ldp    x24, x23, [sp, #0x10]                    
  f7ce74: mov    x2, xzr                                  
  f7ce78: add    sp, sp, #0x50                            
  f7ce7c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  f7ce80: mov    x0, x19                                  
  f7ce84: mov    x1, xzr                                  
  f7ce88: bl     #0xeef558                                ; BattleMode$$OnSceneLoaded
  f7ce8c: mov    x0, x19                                  
  f7ce90: mov    x1, xzr                                  
  f7ce94: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  f7ce98: adrp   x24, #0x303d000                          
  f7ce9c: ldr    x24, [x24, #0xd58]                       ; META GameplayEvent_TypeInfo
  f7cea0: mov    x20, x0                                  
  f7cea4: mov    w8, #0xa                                 
  f7cea8: add    x1, sp, #0xc                             
  f7ceac: ldr    x0, [x24]                                
  f7ceb0: str    w8, [sp, #0xc]                           
  f7ceb4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f7ceb8: adrp   x8, #0x2ff2000                           
  f7cebc: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  f7cec0: mov    x21, x0                                  
  f7cec4: ldr    x8, [x8]                                 
  f7cec8: ldrb   w9, [x8, #0x127]                         
  f7cecc: tbz    w9, #1, #0xf7cee0                        
  f7ced0: ldr    w9, [x8, #0xd8]                          
  f7ced4: cbnz   w9, #0xf7cee0                            
  f7ced8: mov    x0, x8                                   
  f7cedc: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f7cee0: mov    x0, xzr                                  
  f7cee4: bl     #0xd17714                                ; MainPlayer$$Get
  f7cee8: mov    x22, x0                                  
  f7ceec: cbnz   x20, #0xf7cef8                           
  f7cef0: mov    x0, xzr                                  
  f7cef4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7cef8: adrp   x23, #0x2fde000                          
  f7cefc: ldr    x8, [x20]                                
  f7cf00: ldr    x23, [x23, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  f7cf04: ldrh   w9, [x8, #0x11e]                         
  f7cf08: ldr    x1, [x23]                                
  f7cf0c: cbz    x9, #0xf7cf38                            
  f7cf10: ldr    x11, [x8, #0xb0]                         
  f7cf14: mov    x10, xzr                                 
  f7cf18: add    x11, x11, #8                             
  f7cf1c: ldur   x12, [x11, #-8]                          
  f7cf20: cmp    x12, x1                                  
  f7cf24: b.eq   #0xf7cf48                                
  f7cf28: add    x10, x10, #1                             
  f7cf2c: cmp    x10, x9                                  
  f7cf30: add    x11, x11, #0x10                          
  f7cf34: b.lo   #0xf7cf1c                                
  f7cf38: mov    w2, #1                                   
  f7cf3c: mov    x0, x20                                  
  f7cf40: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f7cf44: b      #0xf7cf58                                
  f7cf48: ldr    w9, [x11]                                
  f7cf4c: add    w9, w9, #1                               
  f7cf50: add    x8, x8, w9, uxtw #4                      
  f7cf54: add    x0, x8, #0x128                           
  f7cf58: ldp    x8, x3, [x0]                             
  f7cf5c: mov    x0, x20                                  
  f7cf60: mov    x1, x21                                  
  f7cf64: mov    x2, x22                                  
  f7cf68: blr    x8                                       
  f7cf6c: mov    x0, x19                                  
  f7cf70: mov    x1, xzr                                  
  f7cf74: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  f7cf78: mov    x20, x0                                  
  f7cf7c: ldr    x0, [x24]                                
  f7cf80: mov    w8, #0xb                                 
  f7cf84: add    x1, sp, #8                               
  f7cf88: str    w8, [sp, #8]                             
  f7cf8c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f7cf90: mov    x21, x0                                  
  f7cf94: mov    x0, xzr                                  
  f7cf98: bl     #0xd17714                                ; MainPlayer$$Get
  f7cf9c: mov    x22, x0                                  
  f7cfa0: cbnz   x20, #0xf7cfac                           
  f7cfa4: mov    x0, xzr                                  
  f7cfa8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7cfac: ldr    x8, [x20]                                
  f7cfb0: ldr    x1, [x23]                                
  f7cfb4: ldrh   w9, [x8, #0x11e]                         
  f7cfb8: cbz    x9, #0xf7cfe4                            
  f7cfbc: ldr    x11, [x8, #0xb0]                         
  f7cfc0: mov    x10, xzr                                 
  f7cfc4: add    x11, x11, #8                             
  f7cfc8: ldur   x12, [x11, #-8]                          
  f7cfcc: cmp    x12, x1                                  
  f7cfd0: b.eq   #0xf7cff4                                
  f7cfd4: add    x10, x10, #1                             
  f7cfd8: cmp    x10, x9                                  
  f7cfdc: add    x11, x11, #0x10                          
  f7cfe0: b.lo   #0xf7cfc8                                
  f7cfe4: mov    w2, #1                                   
  f7cfe8: mov    x0, x20                                  
  f7cfec: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f7cff0: b      #0xf7d004                                
  f7cff4: ldr    w9, [x11]                                
  f7cff8: add    w9, w9, #1                               
  f7cffc: add    x8, x8, w9, uxtw #4                      
  f7d000: add    x0, x8, #0x128                           
  f7d004: ldp    x8, x3, [x0]                             
  f7d008: mov    x0, x20                                  
  f7d00c: mov    x1, x21                                  
  f7d010: mov    x2, x22                                  
  f7d014: blr    x8                                       
  f7d018: mov    x0, x19                                  
  f7d01c: mov    x1, xzr                                  
  f7d020: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  f7d024: mov    x20, x0                                  
  f7d028: ldr    x0, [x24]                                
  f7d02c: mov    w8, #0xa                                 
  f7d030: add    x1, sp, #4                               
  f7d034: str    w8, [sp, #4]                             
  f7d038: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f7d03c: adrp   x8, #0x305e000                           
  f7d040: ldr    x8, [x8, #0x4a0]                         ; META OpponentMgr_TypeInfo
  f7d044: mov    x21, x0                                  
  f7d048: ldr    x8, [x8]                                 
  f7d04c: ldrb   w9, [x8, #0x127]                         
  f7d050: tbz    w9, #1, #0xf7d064                        
  f7d054: ldr    w9, [x8, #0xd8]                          
  f7d058: cbnz   w9, #0xf7d064                            
  f7d05c: mov    x0, x8                                   
  f7d060: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f7d064: mov    x0, xzr                                  
  f7d068: bl     #0xe53744                                ; OpponentMgr$$Get
  f7d06c: mov    x22, x0                                  
  f7d070: cbnz   x22, #0xf7d078                           
  f7d074: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d078: mov    x0, x22                                  
  f7d07c: mov    x1, xzr                                  
  f7d080: bl     #0xe65664                                ; OpponentMgr$$GetPlayer
  f7d084: mov    x22, x0                                  
  f7d088: cbnz   x20, #0xf7d094                           
  f7d08c: mov    x0, xzr                                  
  f7d090: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d094: ldr    x8, [x20]                                
  f7d098: ldr    x1, [x23]                                
  f7d09c: ldrh   w9, [x8, #0x11e]                         
  f7d0a0: cbz    x9, #0xf7d0cc                            
  f7d0a4: ldr    x11, [x8, #0xb0]                         
  f7d0a8: mov    x10, xzr                                 
  f7d0ac: add    x11, x11, #8                             
  f7d0b0: ldur   x12, [x11, #-8]                          
  f7d0b4: cmp    x12, x1                                  
  f7d0b8: b.eq   #0xf7d0dc                                
  f7d0bc: add    x10, x10, #1                             
  f7d0c0: cmp    x10, x9                                  
  f7d0c4: add    x11, x11, #0x10                          
  f7d0c8: b.lo   #0xf7d0b0                                
  f7d0cc: mov    w2, #1                                   
  f7d0d0: mov    x0, x20                                  
  f7d0d4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f7d0d8: b      #0xf7d0ec                                
  f7d0dc: ldr    w9, [x11]                                
  f7d0e0: add    w9, w9, #1                               
  f7d0e4: add    x8, x8, w9, uxtw #4                      
  f7d0e8: add    x0, x8, #0x128                           
  f7d0ec: ldp    x8, x3, [x0]                             
  f7d0f0: mov    x0, x20                                  
  f7d0f4: mov    x1, x21                                  
  f7d0f8: mov    x2, x22                                  
  f7d0fc: blr    x8                                       
  f7d100: mov    x0, xzr                                  
  f7d104: bl     #0xe53744                                ; OpponentMgr$$Get
  f7d108: mov    x20, x0                                  
  f7d10c: cbnz   x20, #0xf7d114                           
  f7d110: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d114: mov    x0, x20                                  
  f7d118: mov    x1, xzr                                  
  f7d11c: bl     #0xe65664                                ; OpponentMgr$$GetPlayer
  f7d120: mov    x20, x0                                  
  f7d124: mov    x0, x19                                  
  f7d128: bl     #0xf7b500                                ; GuildBattlePVEMode$$get_guildBattleData
  f7d12c: mov    x21, x0                                  
  f7d130: cbnz   x21, #0xf7d138                           
  f7d134: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d138: mov    x0, x21                                  
  f7d13c: bl     #0xf71414                                ; GuildBattleData$$get_baseSn
  f7d140: mov    w21, w0                                  
  f7d144: cbnz   x20, #0xf7d150                           
  f7d148: mov    x0, xzr                                  
  f7d14c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d150: mov    x0, x20                                  
  f7d154: mov    w1, w21                                  
  f7d158: mov    x2, xzr                                  
  f7d15c: bl     #0xe12d24                                ; Player$$FindAi
  f7d160: mov    x0, x19                                  
  f7d164: mov    x1, xzr                                  
  f7d168: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  f7d16c: adrp   x8, #0x2fbe000                           
  f7d170: ldr    x8, [x8, #0xe50]                         ; META ArenaEvent_TypeInfo
  f7d174: mov    x19, x0                                  
  f7d178: mov    x1, sp                                   
  f7d17c: str    wzr, [sp]                                
  f7d180: ldr    x0, [x8]                                 
  f7d184: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f7d188: mov    x20, x0                                  
  f7d18c: cbnz   x19, #0xf7d198                           
  f7d190: mov    x0, xzr                                  
  f7d194: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f7d198: ldr    x8, [x19]                                
  f7d19c: ldr    x1, [x23]                                
  f7d1a0: ldrh   w9, [x8, #0x11e]                         
  f7d1a4: cbz    x9, #0xf7d1d0                            
  f7d1a8: ldr    x11, [x8, #0xb0]                         
  f7d1ac: mov    x10, xzr                                 
  f7d1b0: add    x11, x11, #8                             
  f7d1b4: ldur   x12, [x11, #-8]                          
  f7d1b8: cmp    x12, x1                                  
  f7d1bc: b.eq   #0xf7d1e0                                
  f7d1c0: add    x10, x10, #1                             
  f7d1c4: cmp    x10, x9                                  
  f7d1c8: add    x11, x11, #0x10                          
  f7d1cc: b.lo   #0xf7d1b4                                
  f7d1d0: mov    x0, x19                                  
  f7d1d4: mov    w2, wzr                                  
  f7d1d8: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f7d1dc: b      #0xf7d1ec                                
  f7d1e0: ldr    w9, [x11]                                
  f7d1e4: add    x8, x8, x9, lsl #4                       
  f7d1e8: add    x0, x8, #0x128                           
  f7d1ec: ldp    x8, x2, [x0]                             
  f7d1f0: mov    x0, x19                                  
  f7d1f4: mov    x1, x20                                  
  f7d1f8: blr    x8                                       
  f7d1fc: ldp    x29, x30, [sp, #0x40]                    
  f7d200: ldp    x20, x19, [sp, #0x30]                    
  f7d204: ldp    x22, x21, [sp, #0x20]                    
  f7d208: ldp    x24, x23, [sp, #0x10]                    
  f7d20c: add    sp, sp, #0x50                            
  f7d210: ret                                             

===== PVEMode$$OnLevelLoaded @ 0xdcdd60 (560 bytes)
  dcdd60: str    x21, [sp, #-0x30]!                       
  dcdd64: stp    x20, x19, [sp, #0x10]                    
  dcdd68: stp    x29, x30, [sp, #0x20]                    
  dcdd6c: add    x29, sp, #0x20                           
  dcdd70: adrp   x20, #0x31cc000                          
  dcdd74: ldrb   w8, [x20, #0xe9d]                        
  dcdd78: mov    x19, x0                                  
  dcdd7c: tbnz   w8, #0, #0xdcdd98                        
  dcdd80: adrp   x8, #0x301b000                           
  dcdd84: ldr    x8, [x8, #0xd68]                         
  dcdd88: ldr    w0, [x8]                                 
  dcdd8c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  dcdd90: mov    w8, #1                                   
  dcdd94: strb   w8, [x20, #0xe9d]                        
  dcdd98: adrp   x8, #0x3044000                           
  dcdd9c: ldr    x8, [x8, #0xa30]                         ; META PVEMode_TypeInfo
  dcdda0: ldr    x8, [x8]                                 
  dcdda4: ldr    x8, [x8, #0xb8]                          
  dcdda8: ldr    x0, [x8, #0x40]                          
  dcddac: cbz    x0, #0xdcddc8                            
  dcddb0: mov    x1, x19                                  
  dcddb4: ldp    x29, x30, [sp, #0x20]                    
  dcddb8: ldp    x20, x19, [sp, #0x10]                    
  dcddbc: mov    x2, xzr                                  
  dcddc0: ldr    x21, [sp], #0x30                         
  dcddc4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  dcddc8: bl     #0xe4b0bc                                ; MissionArea$$Get
  dcddcc: mov    x20, x0                                  
  dcddd0: cbnz   x20, #0xdcddd8                           
  dcddd4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dcddd8: mov    x0, x20                                  
  dcdddc: mov    w1, wzr                                  
  dcdde0: mov    x2, xzr                                  
  dcdde4: bl     #0xe4b124                                ; MissionArea$$ShowTranspost
  dcdde8: adrp   x8, #0x2fc7000                           
  dcddec: ldr    x8, [x8, #0xec8]                         ; META TeammateMgr_TypeInfo
  dcddf0: ldr    x0, [x8]                                 
  dcddf4: ldrb   w8, [x0, #0x127]                         
  dcddf8: tbz    w8, #1, #0xdcde08                        
  dcddfc: ldr    w8, [x0, #0xd8]                          
  dcde00: cbnz   w8, #0xdcde08                            
  dcde04: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcde08: mov    x0, xzr                                  
  dcde0c: bl     #0x106888c                               ; TeammateMgr$$Get
  dcde10: mov    x20, x0                                  
  dcde14: cbnz   x20, #0xdcde1c                           
  dcde18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dcde1c: fmov   s0, wzr                                  
  dcde20: fmov   s1, wzr                                  
  dcde24: mov    x0, x20                                  
  dcde28: mov    x1, xzr                                  
  dcde2c: bl     #0x1068e5c                               ; TeammateMgr$$InitScenePosition
  dcde30: mov    x0, xzr                                  
  dcde34: bl     #0x106888c                               ; TeammateMgr$$Get
  dcde38: mov    x20, x0                                  
  dcde3c: cbnz   x20, #0xdcde44                           
  dcde40: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dcde44: mov    w1, #1                                   
  dcde48: mov    x0, x20                                  
  dcde4c: mov    x2, xzr                                  
  dcde50: bl     #0x1069974                               ; TeammateMgr$$AutoFight
  dcde54: adrp   x21, #0x2ff2000                          
  dcde58: ldr    x21, [x21, #0x6f0]                       ; META MainPlayer_TypeInfo
  dcde5c: ldr    x0, [x21]                                
  dcde60: ldrb   w8, [x0, #0x127]                         
  dcde64: tbz    w8, #1, #0xdcde74                        
  dcde68: ldr    w8, [x0, #0xd8]                          
  dcde6c: cbnz   w8, #0xdcde74                            
  dcde70: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcde74: mov    x0, xzr                                  
  dcde78: bl     #0xd17714                                ; MainPlayer$$Get
  dcde7c: mov    x20, x0                                  
  dcde80: cbnz   x20, #0xdcde88                           
  dcde84: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dcde88: mov    w1, #1                                   
  dcde8c: mov    x0, x20                                  
  dcde90: mov    x2, xzr                                  
  dcde94: bl     #0xd18734                                ; MainPlayer$$InitScenePosition
  dcde98: adrp   x8, #0x3015000                           
  dcde9c: ldr    x8, [x8, #0xe90]                         ; META MonsterMgr_TypeInfo
  dcdea0: ldr    x0, [x8]                                 
  dcdea4: ldrb   w8, [x0, #0x127]                         
  dcdea8: tbz    w8, #1, #0xdcdeb8                        
  dcdeac: ldr    w8, [x0, #0xd8]                          
  dcdeb0: cbnz   w8, #0xdcdeb8                            
  dcdeb4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcdeb8: mov    x0, xzr                                  
  dcdebc: bl     #0xe51eb8                                ; MonsterMgr$$Get
  dcdec0: mov    x20, x0                                  
  dcdec4: cbnz   x20, #0xdcdecc                           
  dcdec8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dcdecc: mov    x0, x20                                  
  dcded0: mov    x1, xzr                                  
  dcded4: bl     #0xe55b34                                ; MonsterMgr$$InitScenePosition
  dcded8: adrp   x20, #0x300b000                          
  dcdedc: ldr    x20, [x20, #0x870]                       ; META LevelData_TypeInfo
  dcdee0: ldr    x0, [x20]                                
  dcdee4: ldrb   w8, [x0, #0x127]                         
  dcdee8: tbz    w8, #1, #0xdcdefc                        
  dcdeec: ldr    w8, [x0, #0xd8]                          
  dcdef0: cbnz   w8, #0xdcdefc                            
  dcdef4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcdef8: ldr    x0, [x20]                                
  dcdefc: adrp   x8, #0x3043000                           
  dcdf00: ldr    x8, [x8, #0x800]                         ; META ConfCommonInfo_TypeInfo
  dcdf04: ldr    x9, [x0, #0xb8]                          
  dcdf08: ldr    x8, [x8]                                 
  dcdf0c: ldr    w20, [x9]                                
  dcdf10: ldrb   w10, [x8, #0x127]                        
  dcdf14: tbz    w10, #1, #0xdcdf28                       
  dcdf18: ldr    w9, [x8, #0xd8]                          
  dcdf1c: cbnz   w9, #0xdcdf28                            
  dcdf20: mov    x0, x8                                   
  dcdf24: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcdf28: mov    w0, w20                                  
  dcdf2c: mov    x1, xzr                                  
  dcdf30: bl     #0x127908c                               ; ConfCommonInfo$$Get
  dcdf34: cbz    x0, #0xdcdf78                            
  dcdf38: mov    x1, xzr                                  
  dcdf3c: bl     #0x1277f74                               ; ConfCommonInfo$$get_mode
  dcdf40: cmp    w0, #4                                   
  dcdf44: b.ne   #0xdcdf78                                
  dcdf48: ldr    x0, [x21]                                
  dcdf4c: ldrb   w8, [x0, #0x127]                         
  dcdf50: tbz    w8, #1, #0xdcdf60                        
  dcdf54: ldr    w8, [x0, #0xd8]                          
  dcdf58: cbnz   w8, #0xdcdf60                            
  dcdf5c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dcdf60: mov    x0, xzr                                  
  dcdf64: bl     #0xd17714                                ; MainPlayer$$Get
  dcdf68: ldr    w2, [x19, #0x5c]                         
  dcdf6c: mov    w1, #0x21                                
  dcdf70: mov    x3, xzr                                  
  dcdf74: bl     #0x11953b4                               ; GameTagExtension$$SetTag
  dcdf78: mov    x0, x19                                  
  dcdf7c: ldp    x29, x30, [sp, #0x20]                    
  dcdf80: ldp    x20, x19, [sp, #0x10]                    
  dcdf84: mov    x1, xzr                                  
  dcdf88: ldr    x21, [sp], #0x30                         
  dcdf8c: b      #0xeee798                                ; BattleMode$$InitScene

===== PVEMode$$OnSceneLoaded @ 0xdcdf90 (1420 bytes)
  dcdf90: str    x25, [sp, #-0x50]!                       
  dcdf94: stp    x24, x23, [sp, #0x10]                    
  dcdf98: stp    x22, x21, [sp, #0x20]                    
  dcdf9c: stp    x20, x19, [sp, #0x30]                    
  dcdfa0: stp    x29, x30, [sp, #0x40]                    
  dcdfa4: add    x29, sp, #0x40                           
  dcdfa8: adrp   x20, #0x31cc000                          
  dcdfac: ldrb   w8, [x20, #0xe9e]                        
  dcdfb0: mov    x19, x0                                  
  dcdfb4: tbnz   w8, #0, #0xdcdfd0                        
  dcdfb8: adrp   x8, #0x3005000                           
  dcdfbc: ldr    x8, [x8, #0x2e8]                         
  dcdfc0: ldr    w0, [x8]                                 
  dcdfc4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  dcdfc8: mov    w8, #1                                   
  dcdfcc: strb   w8, [x20, #0xe9e]                        
  dcdfd0: adrp   x8, #0x3044000                           
  dcdfd4: ldr    x8, [x8, #0xa30]                         ; META PVEMode_TypeInfo
  dcdfd8: ldr    x8, [x8]                                 
  dcdfdc: ldr    x8, [x8, #0xb8]                          
  dcdfe0: ldr    x0, [x8, #0x48]                          
  dcdfe4: cbz    x0, #0xdce008                            
  dcdfe8: mov    x1, x19                                  
  dcdfec: ldp    x29, x30, [sp, #0x40]                    
  dcdff0: ldp    x20, x19, [sp, #0x30]                    
  dcdff4: ldp    x22, x21, [sp, #0x20]                    
  dcdff8: ldp    x24, x23, [sp, #0x10]                    
  dcdffc: mov    x2, xzr                                  
  dce000: ldr    x25, [sp], #0x50                         
  dce004: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  dce008: adrp   x8, #0x2fec000                           
  dce00c: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  dce010: ldr    x0, [x8]                                 
  dce014: ldrb   w8, [x0, #0x127]                         
  dce018: tbz    w8, #1, #0xdce028                        
  dce01c: ldr    w8, [x0, #0xd8]                          
  dce020: cbnz   w8, #0xdce028                            
  dce024: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce028: mov    x0, xzr                                  
  dce02c: bl     #0x1342e08                               ; UniCore.AssetLoader$$EndProgress
  dce030: adrp   x8, #0x3033000                           
  dce034: ldr    x8, [x8, #0x638]                         ; META UniCore.SceneMgr_TypeInfo
  dce038: ldr    x0, [x8]                                 
  dce03c: ldrb   w8, [x0, #0x127]                         
  dce040: tbz    w8, #1, #0xdce050                        
  dce044: ldr    w8, [x0, #0xd8]                          
  dce048: cbnz   w8, #0xdce050                            
  dce04c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce050: mov    x0, xzr                                  
  dce054: bl     #0x143ff24                               ; UniCore.SceneMgr$$NotifySceneLoaded
  dce058: mov    x0, x19                                  
  dce05c: mov    x1, xzr                                  
  dce060: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  dce064: adrp   x24, #0x303d000                          
  dce068: ldr    x24, [x24, #0xd58]                       ; META GameplayEvent_TypeInfo
  dce06c: mov    x20, x0                                  
  dce070: mov    w8, #0x16                                
  dce074: add    x1, sp, #0xc                             
  dce078: ldr    x0, [x24]                                
  dce07c: str    w8, [sp, #0xc]                           
  dce080: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce084: adrp   x25, #0x2ff8000                          
  dce088: ldr    x25, [x25, #0xed0]                       ; META bool_TypeInfo
  dce08c: mov    x21, x0                                  
  dce090: add    x1, sp, #8                               
  dce094: strb   wzr, [sp, #8]                            
  dce098: ldr    x0, [x25]                                
  dce09c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce0a0: mov    x22, x0                                  
  dce0a4: cbnz   x20, #0xdce0b0                           
  dce0a8: mov    x0, xzr                                  
  dce0ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce0b0: adrp   x23, #0x2fde000                          
  dce0b4: ldr    x8, [x20]                                
  dce0b8: ldr    x23, [x23, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  dce0bc: ldrh   w9, [x8, #0x11e]                         
  dce0c0: ldr    x1, [x23]                                
  dce0c4: cbz    x9, #0xdce0f0                            
  dce0c8: ldr    x11, [x8, #0xb0]                         
  dce0cc: mov    x10, xzr                                 
  dce0d0: add    x11, x11, #8                             
  dce0d4: ldur   x12, [x11, #-8]                          
  dce0d8: cmp    x12, x1                                  
  dce0dc: b.eq   #0xdce100                                
  dce0e0: add    x10, x10, #1                             
  dce0e4: cmp    x10, x9                                  
  dce0e8: add    x11, x11, #0x10                          
  dce0ec: b.lo   #0xdce0d4                                
  dce0f0: mov    w2, #1                                   
  dce0f4: mov    x0, x20                                  
  dce0f8: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  dce0fc: b      #0xdce110                                
  dce100: ldr    w9, [x11]                                
  dce104: add    w9, w9, #1                               
  dce108: add    x8, x8, w9, uxtw #4                      
  dce10c: add    x0, x8, #0x128                           
  dce110: ldp    x8, x3, [x0]                             
  dce114: mov    x0, x20                                  
  dce118: mov    x1, x21                                  
  dce11c: mov    x2, x22                                  
  dce120: blr    x8                                       
  dce124: mov    x0, xzr                                  
  dce128: bl     #0xe4b0bc                                ; MissionArea$$Get
  dce12c: mov    x20, x0                                  
  dce130: cbnz   x20, #0xdce138                           
  dce134: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce138: adrp   x8, #0x2fcb000                           
  dce13c: ldr    x8, [x8, #0x9e8]                         ; META UnityEngine.Object_TypeInfo
  dce140: ldr    x20, [x20, #0x40]                        
  dce144: ldr    x0, [x8]                                 
  dce148: ldrb   w8, [x0, #0x127]                         
  dce14c: tbz    w8, #1, #0xdce15c                        
  dce150: ldr    w8, [x0, #0xd8]                          
  dce154: cbnz   w8, #0xdce15c                            
  dce158: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce15c: mov    x0, x20                                  
  dce160: mov    x1, xzr                                  
  dce164: mov    x2, xzr                                  
  dce168: bl     #0x1be4cc8                               ; UnityEngine.Object$$op_Inequality
  dce16c: tbz    w0, #0, #0xdce1b0                        
  dce170: cbnz   x20, #0xdce17c                           
  dce174: mov    x0, xzr                                  
  dce178: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce17c: mov    x0, x20                                  
  dce180: mov    w1, wzr                                  
  dce184: mov    x2, xzr                                  
  dce188: bl     #0x23a40f0                               ; UnityEngine.Animation$$set_playAutomatically
  dce18c: mov    x22, x19                                 
  dce190: ldrb   w8, [x22, #0x5a]!                        
  dce194: cmp    w8, #0                                   
  dce198: cbz    x20, #0xdce1b8                           
  dce19c: cset   w1, ne                                   
  dce1a0: mov    x0, x20                                  
  dce1a4: mov    x2, xzr                                  
  dce1a8: bl     #0x1e70288                               ; UnityEngine.Behaviour$$set_enabled
  dce1ac: b      #0xdce1dc                                
  dce1b0: add    x22, x19, #0x5a                          
  dce1b4: b      #0xdce1e8                                
  dce1b8: mov    x0, xzr                                  
  dce1bc: cset   w21, ne                                  
  dce1c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce1c4: mov    x0, xzr                                  
  dce1c8: mov    w1, w21                                  
  dce1cc: mov    x2, xzr                                  
  dce1d0: bl     #0x1e70288                               ; UnityEngine.Behaviour$$set_enabled
  dce1d4: mov    x0, xzr                                  
  dce1d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce1dc: mov    x0, x20                                  
  dce1e0: mov    x1, xzr                                  
  dce1e4: bl     #0x23a4244                               ; UnityEngine.Animation$$Stop
  dce1e8: ldrb   w8, [x22]                                
  dce1ec: cbz    w8, #0xdce2e4                            
  dce1f0: mov    x0, x19                                  
  dce1f4: mov    x1, xzr                                  
  dce1f8: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  dce1fc: adrp   x8, #0x2fef000                           
  dce200: ldr    x8, [x8, #0x3c8]                         ; META GuideEvent_TypeInfo
  dce204: mov    x20, x0                                  
  dce208: add    x1, sp, #0xc                             
  dce20c: ldr    x0, [x8]                                 
  dce210: mov    w8, #8                                   
  dce214: str    w8, [sp, #0xc]                           
  dce218: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce21c: adrp   x22, #0x300b000                          
  dce220: ldr    x22, [x22, #0x870]                       ; META LevelData_TypeInfo
  dce224: mov    x21, x0                                  
  dce228: ldr    x8, [x22]                                
  dce22c: ldrb   w9, [x8, #0x127]                         
  dce230: tbz    w9, #1, #0xdce248                        
  dce234: ldr    w9, [x8, #0xd8]                          
  dce238: cbnz   w9, #0xdce248                            
  dce23c: mov    x0, x8                                   
  dce240: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce244: ldr    x8, [x22]                                
  dce248: ldr    x8, [x8, #0xb8]                          
  dce24c: adrp   x9, #0x300b000                           
  dce250: add    x1, sp, #8                               
  dce254: ldr    w8, [x8]                                 
  dce258: ldr    x9, [x9, #0x800]                         ; META int_TypeInfo
  dce25c: str    w8, [sp, #8]                             
  dce260: ldr    x0, [x9]                                 
  dce264: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce268: mov    x22, x0                                  
  dce26c: cbnz   x20, #0xdce278                           
  dce270: mov    x0, xzr                                  
  dce274: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce278: ldr    x8, [x20]                                
  dce27c: ldr    x1, [x23]                                
  dce280: ldrh   w9, [x8, #0x11e]                         
  dce284: cbz    x9, #0xdce2b0                            
  dce288: ldr    x11, [x8, #0xb0]                         
  dce28c: mov    x10, xzr                                 
  dce290: add    x11, x11, #8                             
  dce294: ldur   x12, [x11, #-8]                          
  dce298: cmp    x12, x1                                  
  dce29c: b.eq   #0xdce2c0                                
  dce2a0: add    x10, x10, #1                             
  dce2a4: cmp    x10, x9                                  
  dce2a8: add    x11, x11, #0x10                          
  dce2ac: b.lo   #0xdce294                                
  dce2b0: mov    w2, #1                                   
  dce2b4: mov    x0, x20                                  
  dce2b8: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  dce2bc: b      #0xdce2d0                                
  dce2c0: ldr    w9, [x11]                                
  dce2c4: add    w9, w9, #1                               
  dce2c8: add    x8, x8, w9, uxtw #4                      
  dce2cc: add    x0, x8, #0x128                           
  dce2d0: ldp    x8, x3, [x0]                             
  dce2d4: mov    x0, x20                                  
  dce2d8: mov    x1, x21                                  
  dce2dc: mov    x2, x22                                  
  dce2e0: blr    x8                                       
  dce2e4: mov    w1, #1                                   
  dce2e8: mov    x0, x19                                  
  dce2ec: bl     #0xdce51c                                ; PVEMode$$ShowPlot
  dce2f0: and    w8, w0, #1                               
  dce2f4: strb   w8, [x19, #0x58]                         
  dce2f8: tbnz   w8, #0, #0xdce3f8                        
  dce2fc: adrp   x20, #0x300b000                          
  dce300: ldr    x20, [x20, #0x870]                       ; META LevelData_TypeInfo
  dce304: ldr    x0, [x20]                                
  dce308: ldrb   w8, [x0, #0x127]                         
  dce30c: tbz    w8, #1, #0xdce320                        
  dce310: ldr    w8, [x0, #0xd8]                          
  dce314: cbnz   w8, #0xdce320                            
  dce318: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce31c: ldr    x0, [x20]                                
  dce320: ldr    x8, [x0, #0xb8]                          
  dce324: ldr    w8, [x8, #4]                             
  dce328: cmp    w8, #6                                   
  dce32c: b.eq   #0xdce338                                
  dce330: mov    x0, x19                                  
  dce334: bl     #0xdcea64                                ; PVEMode$$DelayShowPlayer
  dce338: mov    x0, x19                                  
  dce33c: mov    x1, xzr                                  
  dce340: bl     #0xeef618                                ; BattleMode$$PlayBgm
  dce344: mov    x0, x19                                  
  dce348: mov    x1, xzr                                  
  dce34c: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  dce350: mov    x20, x0                                  
  dce354: ldr    x0, [x24]                                
  dce358: mov    w8, #0x16                                
  dce35c: add    x1, sp, #0xc                             
  dce360: str    w8, [sp, #0xc]                           
  dce364: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce368: mov    x21, x0                                  
  dce36c: ldr    x0, [x25]                                
  dce370: add    x1, sp, #8                               
  dce374: strb   wzr, [sp, #8]                            
  dce378: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce37c: mov    x22, x0                                  
  dce380: cbnz   x20, #0xdce38c                           
  dce384: mov    x0, xzr                                  
  dce388: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce38c: ldr    x8, [x20]                                
  dce390: ldr    x1, [x23]                                
  dce394: ldrh   w9, [x8, #0x11e]                         
  dce398: cbz    x9, #0xdce3c4                            
  dce39c: ldr    x11, [x8, #0xb0]                         
  dce3a0: mov    x10, xzr                                 
  dce3a4: add    x11, x11, #8                             
  dce3a8: ldur   x12, [x11, #-8]                          
  dce3ac: cmp    x12, x1                                  
  dce3b0: b.eq   #0xdce3d4                                
  dce3b4: add    x10, x10, #1                             
  dce3b8: cmp    x10, x9                                  
  dce3bc: add    x11, x11, #0x10                          
  dce3c0: b.lo   #0xdce3a8                                
  dce3c4: mov    w2, #1                                   
  dce3c8: mov    x0, x20                                  
  dce3cc: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  dce3d0: b      #0xdce3e4                                
  dce3d4: ldr    w9, [x11]                                
  dce3d8: add    w9, w9, #1                               
  dce3dc: add    x8, x8, w9, uxtw #4                      
  dce3e0: add    x0, x8, #0x128                           
  dce3e4: ldp    x8, x3, [x0]                             
  dce3e8: mov    x0, x20                                  
  dce3ec: mov    x1, x21                                  
  dce3f0: mov    x2, x22                                  
  dce3f4: blr    x8                                       
  dce3f8: mov    x0, x19                                  
  dce3fc: mov    x1, xzr                                  
  dce400: bl     #0xeed208                                ; BattleMode$$get_dispatcher
  dce404: mov    x20, x0                                  
  dce408: ldr    x0, [x24]                                
  dce40c: mov    w8, #0xa                                 
  dce410: add    x1, sp, #0xc                             
  dce414: str    w8, [sp, #0xc]                           
  dce418: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  dce41c: adrp   x8, #0x2ff2000                           
  dce420: ldr    x8, [x8, #0x6f0]                         ; META MainPlayer_TypeInfo
  dce424: mov    x21, x0                                  
  dce428: ldr    x8, [x8]                                 
  dce42c: ldrb   w9, [x8, #0x127]                         
  dce430: tbz    w9, #1, #0xdce444                        
  dce434: ldr    w9, [x8, #0xd8]                          
  dce438: cbnz   w9, #0xdce444                            
  dce43c: mov    x0, x8                                   
  dce440: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce444: mov    x0, xzr                                  
  dce448: bl     #0xd17714                                ; MainPlayer$$Get
  dce44c: mov    x22, x0                                  
  dce450: cbnz   x20, #0xdce45c                           
  dce454: mov    x0, xzr                                  
  dce458: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  dce45c: ldr    x8, [x20]                                
  dce460: ldr    x1, [x23]                                
  dce464: ldrh   w9, [x8, #0x11e]                         
  dce468: cbz    x9, #0xdce494                            
  dce46c: ldr    x11, [x8, #0xb0]                         
  dce470: mov    x10, xzr                                 
  dce474: add    x11, x11, #8                             
  dce478: ldur   x12, [x11, #-8]                          
  dce47c: cmp    x12, x1                                  
  dce480: b.eq   #0xdce4a4                                
  dce484: add    x10, x10, #1                             
  dce488: cmp    x10, x9                                  
  dce48c: add    x11, x11, #0x10                          
  dce490: b.lo   #0xdce478                                
  dce494: mov    w2, #1                                   
  dce498: mov    x0, x20                                  
  dce49c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  dce4a0: b      #0xdce4b4                                
  dce4a4: ldr    w9, [x11]                                
  dce4a8: add    w9, w9, #1                               
  dce4ac: add    x8, x8, w9, uxtw #4                      
  dce4b0: add    x0, x8, #0x128                           
  dce4b4: ldp    x8, x3, [x0]                             
  dce4b8: mov    x0, x20                                  
  dce4bc: mov    x1, x21                                  
  dce4c0: mov    x2, x22                                  
  dce4c4: blr    x8                                       
  dce4c8: adrp   x20, #0x300b000                          
  dce4cc: ldr    x20, [x20, #0x870]                       ; META LevelData_TypeInfo
  dce4d0: ldr    x0, [x20]                                
  dce4d4: ldrb   w8, [x0, #0x127]                         
  dce4d8: tbz    w8, #1, #0xdce4ec                        
  dce4dc: ldr    w8, [x0, #0xd8]                          
  dce4e0: cbnz   w8, #0xdce4ec                            
  dce4e4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  dce4e8: ldr    x0, [x20]                                
  dce4ec: ldr    x8, [x0, #0xb8]                          
  dce4f0: ldr    w8, [x8, #4]                             
  dce4f4: cmp    w8, #9                                   
  dce4f8: b.ne   #0xdce504                                
  dce4fc: mov    x0, x19                                  
  dce500: bl     #0xdcf190                                ; PVEMode$$GuildBossBuff
  dce504: ldp    x29, x30, [sp, #0x40]                    
  dce508: ldp    x20, x19, [sp, #0x30]                    
  dce50c: ldp    x22, x21, [sp, #0x20]                    
  dce510: ldp    x24, x23, [sp, #0x10]                    
  dce514: ldr    x25, [sp], #0x50                         
  dce518: ret                                             
