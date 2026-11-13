
===== MechaData$$Init @ 0xe709a0 (2352 bytes)
  e709a0: sub    sp, sp, #0x80                            
  e709a4: str    x25, [sp, #0x30]                         
  e709a8: stp    x24, x23, [sp, #0x40]                    
  e709ac: stp    x22, x21, [sp, #0x50]                    
  e709b0: stp    x20, x19, [sp, #0x60]                    
  e709b4: stp    x29, x30, [sp, #0x70]                    
  e709b8: add    x29, sp, #0x70                           
  e709bc: adrp   x20, #0x31cd000                          
  e709c0: ldrb   w8, [x20, #0x482]                        
  e709c4: mov    x19, x0                                  
  e709c8: tbnz   w8, #0, #0xe709e4                        
  e709cc: adrp   x8, #0x2fda000                           
  e709d0: ldr    x8, [x8, #0x230]                         
  e709d4: ldr    w0, [x8]                                 
  e709d8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e709dc: mov    w8, #1                                   
  e709e0: strb   w8, [x20, #0x482]                        
  e709e4: adrp   x8, #0x2fdc000                           
  e709e8: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e709ec: ldr    x8, [x8]                                 
  e709f0: ldr    x8, [x8, #0xb8]                          
  e709f4: ldr    x0, [x8, #0x100]                         
  e709f8: cbz    x0, #0xe70a20                            
  e709fc: mov    x1, x19                                  
  e70a00: ldp    x29, x30, [sp, #0x70]                    
  e70a04: ldp    x20, x19, [sp, #0x60]                    
  e70a08: ldp    x22, x21, [sp, #0x50]                    
  e70a0c: ldp    x24, x23, [sp, #0x40]                    
  e70a10: ldr    x25, [sp, #0x30]                         
  e70a14: mov    x2, xzr                                  
  e70a18: add    sp, sp, #0x80                            
  e70a1c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e70a20: mov    x0, x19                                  
  e70a24: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70a28: adrp   x24, #0x300b000                          
  e70a2c: ldr    x24, [x24, #0x800]                       ; META int_TypeInfo
  e70a30: mov    x20, x0                                  
  e70a34: mov    w8, #0x44d                               
  e70a38: sub    x1, x29, #0x34                           
  e70a3c: ldr    x0, [x24]                                
  e70a40: stur   w8, [x29, #-0x34]                        
  e70a44: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70a48: adrp   x25, #0x302a000                          
  e70a4c: ldr    x25, [x25, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
  e70a50: mov    x21, x0                                  
  e70a54: ldr    x8, [x25]                                
  e70a58: mov    x0, x8                                   
  e70a5c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70a60: adrp   x8, #0x2fe7000                           
  e70a64: ldr    x8, [x8, #0x988]                         ; MMETH Method$MechaData.InitData()
  e70a68: mov    x1, x19                                  
  e70a6c: mov    x3, xzr                                  
  e70a70: mov    x22, x0                                  
  e70a74: ldr    x2, [x8]                                 
  e70a78: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70a7c: cbnz   x20, #0xe70a88                           
  e70a80: mov    x0, xzr                                  
  e70a84: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70a88: adrp   x23, #0x3069000                          
  e70a8c: ldr    x8, [x20]                                
  e70a90: ldr    x23, [x23, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  e70a94: ldrh   w9, [x8, #0x11e]                         
  e70a98: ldr    x1, [x23]                                
  e70a9c: cbz    x9, #0xe70ac8                            
  e70aa0: ldr    x11, [x8, #0xb0]                         
  e70aa4: mov    x10, xzr                                 
  e70aa8: add    x11, x11, #8                             
  e70aac: ldur   x12, [x11, #-8]                          
  e70ab0: cmp    x12, x1                                  
  e70ab4: b.eq   #0xe70ad8                                
  e70ab8: add    x10, x10, #1                             
  e70abc: cmp    x10, x9                                  
  e70ac0: add    x11, x11, #0x10                          
  e70ac4: b.lo   #0xe70aac                                
  e70ac8: mov    w2, #1                                   
  e70acc: mov    x0, x20                                  
  e70ad0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70ad4: b      #0xe70ae8                                
  e70ad8: ldr    w9, [x11]                                
  e70adc: add    w9, w9, #1                               
  e70ae0: add    x8, x8, w9, uxtw #4                      
  e70ae4: add    x0, x8, #0x128                           
  e70ae8: ldp    x8, x3, [x0]                             
  e70aec: mov    x0, x20                                  
  e70af0: mov    x1, x21                                  
  e70af4: mov    x2, x22                                  
  e70af8: blr    x8                                       
  e70afc: mov    x0, x19                                  
  e70b00: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70b04: mov    x20, x0                                  
  e70b08: ldr    x0, [x24]                                
  e70b0c: mov    w8, #0x770                               
  e70b10: add    x1, sp, #0x38                            
  e70b14: str    w8, [sp, #0x38]                          
  e70b18: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70b1c: ldr    x8, [x25]                                
  e70b20: mov    x21, x0                                  
  e70b24: mov    x0, x8                                   
  e70b28: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70b2c: adrp   x8, #0x3013000                           
  e70b30: ldr    x8, [x8, #0xf50]                         ; MMETH Method$MechaData.SingleMechaInfo()
  e70b34: mov    x1, x19                                  
  e70b38: mov    x3, xzr                                  
  e70b3c: mov    x22, x0                                  
  e70b40: ldr    x2, [x8]                                 
  e70b44: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70b48: cbnz   x20, #0xe70b54                           
  e70b4c: mov    x0, xzr                                  
  e70b50: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70b54: ldr    x8, [x20]                                
  e70b58: ldr    x1, [x23]                                
  e70b5c: ldrh   w9, [x8, #0x11e]                         
  e70b60: cbz    x9, #0xe70b8c                            
  e70b64: ldr    x11, [x8, #0xb0]                         
  e70b68: mov    x10, xzr                                 
  e70b6c: add    x11, x11, #8                             
  e70b70: ldur   x12, [x11, #-8]                          
  e70b74: cmp    x12, x1                                  
  e70b78: b.eq   #0xe70b9c                                
  e70b7c: add    x10, x10, #1                             
  e70b80: cmp    x10, x9                                  
  e70b84: add    x11, x11, #0x10                          
  e70b88: b.lo   #0xe70b70                                
  e70b8c: mov    w2, #1                                   
  e70b90: mov    x0, x20                                  
  e70b94: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70b98: b      #0xe70bac                                
  e70b9c: ldr    w9, [x11]                                
  e70ba0: add    w9, w9, #1                               
  e70ba4: add    x8, x8, w9, uxtw #4                      
  e70ba8: add    x0, x8, #0x128                           
  e70bac: ldp    x8, x3, [x0]                             
  e70bb0: mov    x0, x20                                  
  e70bb4: mov    x1, x21                                  
  e70bb8: mov    x2, x22                                  
  e70bbc: blr    x8                                       
  e70bc0: mov    x0, x19                                  
  e70bc4: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70bc8: mov    x20, x0                                  
  e70bcc: ldr    x0, [x24]                                
  e70bd0: mov    w8, #0x772                               
  e70bd4: add    x1, sp, #0x2c                            
  e70bd8: str    w8, [sp, #0x2c]                          
  e70bdc: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70be0: ldr    x8, [x25]                                
  e70be4: mov    x21, x0                                  
  e70be8: mov    x0, x8                                   
  e70bec: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70bf0: adrp   x8, #0x2fe2000                           
  e70bf4: ldr    x8, [x8, #0xdb0]                         ; MMETH Method$MechaData.MechaUnlock()
  e70bf8: mov    x1, x19                                  
  e70bfc: mov    x3, xzr                                  
  e70c00: mov    x22, x0                                  
  e70c04: ldr    x2, [x8]                                 
  e70c08: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70c0c: cbnz   x20, #0xe70c18                           
  e70c10: mov    x0, xzr                                  
  e70c14: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70c18: ldr    x8, [x20]                                
  e70c1c: ldr    x1, [x23]                                
  e70c20: ldrh   w9, [x8, #0x11e]                         
  e70c24: cbz    x9, #0xe70c50                            
  e70c28: ldr    x11, [x8, #0xb0]                         
  e70c2c: mov    x10, xzr                                 
  e70c30: add    x11, x11, #8                             
  e70c34: ldur   x12, [x11, #-8]                          
  e70c38: cmp    x12, x1                                  
  e70c3c: b.eq   #0xe70c60                                
  e70c40: add    x10, x10, #1                             
  e70c44: cmp    x10, x9                                  
  e70c48: add    x11, x11, #0x10                          
  e70c4c: b.lo   #0xe70c34                                
  e70c50: mov    w2, #1                                   
  e70c54: mov    x0, x20                                  
  e70c58: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70c5c: b      #0xe70c70                                
  e70c60: ldr    w9, [x11]                                
  e70c64: add    w9, w9, #1                               
  e70c68: add    x8, x8, w9, uxtw #4                      
  e70c6c: add    x0, x8, #0x128                           
  e70c70: ldp    x8, x3, [x0]                             
  e70c74: mov    x0, x20                                  
  e70c78: mov    x1, x21                                  
  e70c7c: mov    x2, x22                                  
  e70c80: blr    x8                                       
  e70c84: mov    x0, x19                                  
  e70c88: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70c8c: mov    x20, x0                                  
  e70c90: ldr    x0, [x24]                                
  e70c94: mov    w8, #0x78c                               
  e70c98: add    x1, sp, #0x28                            
  e70c9c: str    w8, [sp, #0x28]                          
  e70ca0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70ca4: ldr    x8, [x25]                                
  e70ca8: mov    x21, x0                                  
  e70cac: mov    x0, x8                                   
  e70cb0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70cb4: adrp   x8, #0x2fc3000                           
  e70cb8: ldr    x8, [x8, #0xe68]                         ; MMETH Method$MechaData.OnSCGeneralInfoAttIng()
  e70cbc: mov    x1, x19                                  
  e70cc0: mov    x3, xzr                                  
  e70cc4: mov    x22, x0                                  
  e70cc8: ldr    x2, [x8]                                 
  e70ccc: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70cd0: cbnz   x20, #0xe70cdc                           
  e70cd4: mov    x0, xzr                                  
  e70cd8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70cdc: ldr    x8, [x20]                                
  e70ce0: ldr    x1, [x23]                                
  e70ce4: ldrh   w9, [x8, #0x11e]                         
  e70ce8: cbz    x9, #0xe70d14                            
  e70cec: ldr    x11, [x8, #0xb0]                         
  e70cf0: mov    x10, xzr                                 
  e70cf4: add    x11, x11, #8                             
  e70cf8: ldur   x12, [x11, #-8]                          
  e70cfc: cmp    x12, x1                                  
  e70d00: b.eq   #0xe70d24                                
  e70d04: add    x10, x10, #1                             
  e70d08: cmp    x10, x9                                  
  e70d0c: add    x11, x11, #0x10                          
  e70d10: b.lo   #0xe70cf8                                
  e70d14: mov    w2, #1                                   
  e70d18: mov    x0, x20                                  
  e70d1c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70d20: b      #0xe70d34                                
  e70d24: ldr    w9, [x11]                                
  e70d28: add    w9, w9, #1                               
  e70d2c: add    x8, x8, w9, uxtw #4                      
  e70d30: add    x0, x8, #0x128                           
  e70d34: ldp    x8, x3, [x0]                             
  e70d38: mov    x0, x20                                  
  e70d3c: mov    x1, x21                                  
  e70d40: mov    x2, x22                                  
  e70d44: blr    x8                                       
  e70d48: mov    x0, x19                                  
  e70d4c: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70d50: mov    x20, x0                                  
  e70d54: ldr    x0, [x24]                                
  e70d58: mov    w8, #0x776                               
  e70d5c: add    x1, sp, #0x24                            
  e70d60: str    w8, [sp, #0x24]                          
  e70d64: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70d68: ldr    x8, [x25]                                
  e70d6c: mov    x21, x0                                  
  e70d70: mov    x0, x8                                   
  e70d74: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70d78: adrp   x8, #0x2fdd000                           
  e70d7c: ldr    x8, [x8, #0x258]                         ; MMETH Method$MechaData.MechaUpStar()
  e70d80: mov    x1, x19                                  
  e70d84: mov    x3, xzr                                  
  e70d88: mov    x22, x0                                  
  e70d8c: ldr    x2, [x8]                                 
  e70d90: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70d94: cbnz   x20, #0xe70da0                           
  e70d98: mov    x0, xzr                                  
  e70d9c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70da0: ldr    x8, [x20]                                
  e70da4: ldr    x1, [x23]                                
  e70da8: ldrh   w9, [x8, #0x11e]                         
  e70dac: cbz    x9, #0xe70dd8                            
  e70db0: ldr    x11, [x8, #0xb0]                         
  e70db4: mov    x10, xzr                                 
  e70db8: add    x11, x11, #8                             
  e70dbc: ldur   x12, [x11, #-8]                          
  e70dc0: cmp    x12, x1                                  
  e70dc4: b.eq   #0xe70de8                                
  e70dc8: add    x10, x10, #1                             
  e70dcc: cmp    x10, x9                                  
  e70dd0: add    x11, x11, #0x10                          
  e70dd4: b.lo   #0xe70dbc                                
  e70dd8: mov    w2, #1                                   
  e70ddc: mov    x0, x20                                  
  e70de0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70de4: b      #0xe70df8                                
  e70de8: ldr    w9, [x11]                                
  e70dec: add    w9, w9, #1                               
  e70df0: add    x8, x8, w9, uxtw #4                      
  e70df4: add    x0, x8, #0x128                           
  e70df8: ldp    x8, x3, [x0]                             
  e70dfc: mov    x0, x20                                  
  e70e00: mov    x1, x21                                  
  e70e04: mov    x2, x22                                  
  e70e08: blr    x8                                       
  e70e0c: mov    x0, x19                                  
  e70e10: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70e14: mov    x20, x0                                  
  e70e18: ldr    x0, [x24]                                
  e70e1c: mov    w8, #0x89c                               
  e70e20: add    x1, sp, #0x20                            
  e70e24: str    w8, [sp, #0x20]                          
  e70e28: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70e2c: ldr    x8, [x25]                                
  e70e30: mov    x21, x0                                  
  e70e34: mov    x0, x8                                   
  e70e38: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70e3c: adrp   x8, #0x2fc9000                           
  e70e40: ldr    x8, [x8, #0xf90]                         ; MMETH Method$MechaData.MechaChange()
  e70e44: mov    x1, x19                                  
  e70e48: mov    x3, xzr                                  
  e70e4c: mov    x22, x0                                  
  e70e50: ldr    x2, [x8]                                 
  e70e54: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70e58: cbnz   x20, #0xe70e64                           
  e70e5c: mov    x0, xzr                                  
  e70e60: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70e64: ldr    x8, [x20]                                
  e70e68: ldr    x1, [x23]                                
  e70e6c: ldrh   w9, [x8, #0x11e]                         
  e70e70: cbz    x9, #0xe70e9c                            
  e70e74: ldr    x11, [x8, #0xb0]                         
  e70e78: mov    x10, xzr                                 
  e70e7c: add    x11, x11, #8                             
  e70e80: ldur   x12, [x11, #-8]                          
  e70e84: cmp    x12, x1                                  
  e70e88: b.eq   #0xe70eac                                
  e70e8c: add    x10, x10, #1                             
  e70e90: cmp    x10, x9                                  
  e70e94: add    x11, x11, #0x10                          
  e70e98: b.lo   #0xe70e80                                
  e70e9c: mov    w2, #1                                   
  e70ea0: mov    x0, x20                                  
  e70ea4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70ea8: b      #0xe70ebc                                
  e70eac: ldr    w9, [x11]                                
  e70eb0: add    w9, w9, #1                               
  e70eb4: add    x8, x8, w9, uxtw #4                      
  e70eb8: add    x0, x8, #0x128                           
  e70ebc: ldp    x8, x3, [x0]                             
  e70ec0: mov    x0, x20                                  
  e70ec4: mov    x1, x21                                  
  e70ec8: mov    x2, x22                                  
  e70ecc: blr    x8                                       
  e70ed0: mov    x0, x19                                  
  e70ed4: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70ed8: mov    x20, x0                                  
  e70edc: ldr    x0, [x24]                                
  e70ee0: mov    w8, #0x79c                               
  e70ee4: add    x1, sp, #0x1c                            
  e70ee8: str    w8, [sp, #0x1c]                          
  e70eec: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70ef0: ldr    x8, [x25]                                
  e70ef4: mov    x21, x0                                  
  e70ef8: mov    x0, x8                                   
  e70efc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70f00: adrp   x8, #0x3058000                           
  e70f04: ldr    x8, [x8, #0x7e8]                         ; MMETH Method$MechaData.OnWeaponDeblocking()
  e70f08: mov    x1, x19                                  
  e70f0c: mov    x3, xzr                                  
  e70f10: mov    x22, x0                                  
  e70f14: ldr    x2, [x8]                                 
  e70f18: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70f1c: cbnz   x20, #0xe70f28                           
  e70f20: mov    x0, xzr                                  
  e70f24: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70f28: ldr    x8, [x20]                                
  e70f2c: ldr    x1, [x23]                                
  e70f30: ldrh   w9, [x8, #0x11e]                         
  e70f34: cbz    x9, #0xe70f60                            
  e70f38: ldr    x11, [x8, #0xb0]                         
  e70f3c: mov    x10, xzr                                 
  e70f40: add    x11, x11, #8                             
  e70f44: ldur   x12, [x11, #-8]                          
  e70f48: cmp    x12, x1                                  
  e70f4c: b.eq   #0xe70f70                                
  e70f50: add    x10, x10, #1                             
  e70f54: cmp    x10, x9                                  
  e70f58: add    x11, x11, #0x10                          
  e70f5c: b.lo   #0xe70f44                                
  e70f60: mov    w2, #1                                   
  e70f64: mov    x0, x20                                  
  e70f68: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e70f6c: b      #0xe70f80                                
  e70f70: ldr    w9, [x11]                                
  e70f74: add    w9, w9, #1                               
  e70f78: add    x8, x8, w9, uxtw #4                      
  e70f7c: add    x0, x8, #0x128                           
  e70f80: ldp    x8, x3, [x0]                             
  e70f84: mov    x0, x20                                  
  e70f88: mov    x1, x21                                  
  e70f8c: mov    x2, x22                                  
  e70f90: blr    x8                                       
  e70f94: mov    x0, x19                                  
  e70f98: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e70f9c: mov    x20, x0                                  
  e70fa0: ldr    x0, [x24]                                
  e70fa4: mov    w8, #0x79a                               
  e70fa8: add    x1, sp, #0x18                            
  e70fac: str    w8, [sp, #0x18]                          
  e70fb0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e70fb4: ldr    x8, [x25]                                
  e70fb8: mov    x21, x0                                  
  e70fbc: mov    x0, x8                                   
  e70fc0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e70fc4: adrp   x8, #0x3020000                           
  e70fc8: ldr    x8, [x8, #0xcf8]                         ; MMETH Method$MechaData.OnWeaponIntensify()
  e70fcc: mov    x1, x19                                  
  e70fd0: mov    x3, xzr                                  
  e70fd4: mov    x22, x0                                  
  e70fd8: ldr    x2, [x8]                                 
  e70fdc: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e70fe0: cbnz   x20, #0xe70fec                           
  e70fe4: mov    x0, xzr                                  
  e70fe8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70fec: ldr    x8, [x20]                                
  e70ff0: ldr    x1, [x23]                                
  e70ff4: ldrh   w9, [x8, #0x11e]                         
  e70ff8: cbz    x9, #0xe71024                            
  e70ffc: ldr    x11, [x8, #0xb0]                         
  e71000: mov    x10, xzr                                 
  e71004: add    x11, x11, #8                             
  e71008: ldur   x12, [x11, #-8]                          
  e7100c: cmp    x12, x1                                  
  e71010: b.eq   #0xe71034                                
  e71014: add    x10, x10, #1                             
  e71018: cmp    x10, x9                                  
  e7101c: add    x11, x11, #0x10                          
  e71020: b.lo   #0xe71008                                
  e71024: mov    w2, #1                                   
  e71028: mov    x0, x20                                  
  e7102c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e71030: b      #0xe71044                                
  e71034: ldr    w9, [x11]                                
  e71038: add    w9, w9, #1                               
  e7103c: add    x8, x8, w9, uxtw #4                      
  e71040: add    x0, x8, #0x128                           
  e71044: ldp    x8, x3, [x0]                             
  e71048: mov    x0, x20                                  
  e7104c: mov    x1, x21                                  
  e71050: mov    x2, x22                                  
  e71054: blr    x8                                       
  e71058: mov    x0, x19                                  
  e7105c: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e71060: mov    x20, x0                                  
  e71064: ldr    x0, [x24]                                
  e71068: mov    w8, #0x798                               
  e7106c: add    x1, sp, #0x14                            
  e71070: str    w8, [sp, #0x14]                          
  e71074: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e71078: ldr    x8, [x25]                                
  e7107c: mov    x21, x0                                  
  e71080: mov    x0, x8                                   
  e71084: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e71088: adrp   x8, #0x3032000                           
  e7108c: ldr    x8, [x8, #0x9e0]                         ; MMETH Method$MechaData.OnEquipWeapon()
  e71090: mov    x1, x19                                  
  e71094: mov    x3, xzr                                  
  e71098: mov    x22, x0                                  
  e7109c: ldr    x2, [x8]                                 
  e710a0: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e710a4: cbnz   x20, #0xe710b0                           
  e710a8: mov    x0, xzr                                  
  e710ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e710b0: ldr    x8, [x20]                                
  e710b4: ldr    x1, [x23]                                
  e710b8: ldrh   w9, [x8, #0x11e]                         
  e710bc: cbz    x9, #0xe710e8                            
  e710c0: ldr    x11, [x8, #0xb0]                         
  e710c4: mov    x10, xzr                                 
  e710c8: add    x11, x11, #8                             
  e710cc: ldur   x12, [x11, #-8]                          
  e710d0: cmp    x12, x1                                  
  e710d4: b.eq   #0xe710f8                                
  e710d8: add    x10, x10, #1                             
  e710dc: cmp    x10, x9                                  
  e710e0: add    x11, x11, #0x10                          
  e710e4: b.lo   #0xe710cc                                
  e710e8: mov    w2, #1                                   
  e710ec: mov    x0, x20                                  
  e710f0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e710f4: b      #0xe71108                                
  e710f8: ldr    w9, [x11]                                
  e710fc: add    w9, w9, #1                               
  e71100: add    x8, x8, w9, uxtw #4                      
  e71104: add    x0, x8, #0x128                           
  e71108: ldp    x8, x3, [x0]                             
  e7110c: mov    x0, x20                                  
  e71110: mov    x1, x21                                  
  e71114: mov    x2, x22                                  
  e71118: blr    x8                                       
  e7111c: mov    x0, x19                                  
  e71120: bl     #0xe701a4                                ; MechaData$$get_netDispatcher
  e71124: mov    x20, x0                                  
  e71128: ldr    x0, [x24]                                
  e7112c: mov    w8, #0x46c                               
  e71130: add    x1, sp, #0x10                            
  e71134: str    w8, [sp, #0x10]                          
  e71138: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e7113c: ldr    x8, [x25]                                
  e71140: mov    x21, x0                                  
  e71144: mov    x0, x8                                   
  e71148: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e7114c: adrp   x8, #0x3049000                           
  e71150: ldr    x8, [x8, #0x540]                         ; MMETH Method$MechaData.OnSettingSwitch()
  e71154: mov    x1, x19                                  
  e71158: mov    x3, xzr                                  
  e7115c: mov    x22, x0                                  
  e71160: ldr    x2, [x8]                                 
  e71164: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  e71168: cbnz   x20, #0xe71174                           
  e7116c: mov    x0, xzr                                  
  e71170: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71174: ldr    x8, [x20]                                
  e71178: ldr    x1, [x23]                                
  e7117c: ldrh   w9, [x8, #0x11e]                         
  e71180: cbz    x9, #0xe711ac                            
  e71184: ldr    x11, [x8, #0xb0]                         
  e71188: mov    x10, xzr                                 
  e7118c: add    x11, x11, #8                             
  e71190: ldur   x12, [x11, #-8]                          
  e71194: cmp    x12, x1                                  
  e71198: b.eq   #0xe711bc                                
  e7119c: add    x10, x10, #1                             
  e711a0: cmp    x10, x9                                  
  e711a4: add    x11, x11, #0x10                          
  e711a8: b.lo   #0xe71190                                
  e711ac: mov    w2, #1                                   
  e711b0: mov    x0, x20                                  
  e711b4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e711b8: b      #0xe711cc                                
  e711bc: ldr    w9, [x11]                                
  e711c0: add    w9, w9, #1                               
  e711c4: add    x8, x8, w9, uxtw #4                      
  e711c8: add    x0, x8, #0x128                           
  e711cc: ldp    x8, x3, [x0]                             
  e711d0: mov    x0, x20                                  
  e711d4: mov    x1, x21                                  
  e711d8: mov    x2, x22                                  
  e711dc: blr    x8                                       
  e711e0: mov    x0, x19                                  
  e711e4: bl     #0xe70298                                ; MechaData$$get_contextDispatcher
  e711e8: adrp   x8, #0x2ff5000                           
  e711ec: ldr    x8, [x8, #0xb08]                         ; META LobbyEvent_TypeInfo
  e711f0: mov    x20, x0                                  
  e711f4: add    x1, sp, #0xc                             
  e711f8: ldr    x0, [x8]                                 
  e711fc: mov    w8, #0x16                                
  e71200: str    w8, [sp, #0xc]                           
  e71204: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e71208: adrp   x8, #0x3023000                           
  e7120c: ldr    x8, [x8, #0x1c8]                         ; META strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback_TypeInfo
  e71210: mov    x21, x0                                  
  e71214: ldr    x8, [x8]                                 
  e71218: mov    x0, x8                                   
  e7121c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e71220: adrp   x8, #0x302e000                           
  e71224: ldr    x8, [x8, #0xb90]                         ; MMETH Method$MechaData.WeaponMatrialChange()
  e71228: mov    x1, x19                                  
  e7122c: mov    x3, xzr                                  
  e71230: mov    x22, x0                                  
  e71234: ldr    x2, [x8]                                 
  e71238: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e7123c: cbnz   x20, #0xe71248                           
  e71240: mov    x0, xzr                                  
  e71244: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71248: ldr    x8, [x20]                                
  e7124c: ldr    x1, [x23]                                
  e71250: ldrh   w9, [x8, #0x11e]                         
  e71254: cbz    x9, #0xe71280                            
  e71258: ldr    x11, [x8, #0xb0]                         
  e7125c: mov    x10, xzr                                 
  e71260: add    x11, x11, #8                             
  e71264: ldur   x12, [x11, #-8]                          
  e71268: cmp    x12, x1                                  
  e7126c: b.eq   #0xe71290                                
  e71270: add    x10, x10, #1                             
  e71274: cmp    x10, x9                                  
  e71278: add    x11, x11, #0x10                          
  e7127c: b.lo   #0xe71264                                
  e71280: mov    w2, #2                                   
  e71284: mov    x0, x20                                  
  e71288: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e7128c: b      #0xe712a0                                
  e71290: ldr    w9, [x11]                                
  e71294: add    w9, w9, #2                               
  e71298: add    x8, x8, w9, uxtw #4                      
  e7129c: add    x0, x8, #0x128                           
  e712a0: ldp    x8, x3, [x0]                             
  e712a4: mov    x0, x20                                  
  e712a8: mov    x1, x21                                  
  e712ac: mov    x2, x22                                  
  e712b0: blr    x8                                       
  e712b4: ldp    x29, x30, [sp, #0x70]                    
  e712b8: ldp    x20, x19, [sp, #0x60]                    
  e712bc: ldp    x22, x21, [sp, #0x50]                    
  e712c0: ldp    x24, x23, [sp, #0x40]                    
  e712c4: ldr    x25, [sp, #0x30]                         
  e712c8: add    sp, sp, #0x80                            
  e712cc: ret                                             

===== MechaData$$InitData @ 0xe713f4 (2592 bytes)
  e713f4: sub    sp, sp, #0x80                            
  e713f8: stp    x28, x27, [sp, #0x20]                    
  e713fc: stp    x26, x25, [sp, #0x30]                    
  e71400: stp    x24, x23, [sp, #0x40]                    
  e71404: stp    x22, x21, [sp, #0x50]                    
  e71408: stp    x20, x19, [sp, #0x60]                    
  e7140c: stp    x29, x30, [sp, #0x70]                    
  e71410: add    x29, sp, #0x70                           
  e71414: adrp   x19, #0x31cd000                          
  e71418: ldrb   w8, [x19, #0x485]                        
  e7141c: mov    x20, x1                                  
  e71420: mov    x24, x0                                  
  e71424: tbnz   w8, #0, #0xe71440                        
  e71428: adrp   x8, #0x2fc8000                           
  e7142c: ldr    x8, [x8, #0x658]                         
  e71430: ldr    w0, [x8]                                 
  e71434: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e71438: mov    w8, #1                                   
  e7143c: strb   w8, [x19, #0x485]                        
  e71440: adrp   x8, #0x2fdc000                           
  e71444: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e71448: strb   wzr, [sp, #0x1c]                         
  e7144c: ldr    x8, [x8]                                 
  e71450: ldr    x8, [x8, #0xb8]                          
  e71454: ldr    x0, [x8, #0x118]                         
  e71458: cbz    x0, #0xe71470                            
  e7145c: mov    x1, x24                                  
  e71460: mov    x2, x20                                  
  e71464: mov    x3, xzr                                  
  e71468: bl     #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e7146c: b      #0xe71df4                                
  e71470: ldr    x21, [x24, #0x70]                        
  e71474: cbnz   x21, #0xe71480                           
  e71478: mov    x0, xzr                                  
  e7147c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71480: adrp   x8, #0x3000000                           
  e71484: ldr    x8, [x8, #0xa68]                         ; MMETH Method$System.Collections.Generic.List<MechaVO>.Clear()
  e71488: mov    x0, x21                                  
  e7148c: ldr    x1, [x8]                                 
  e71490: bl     #0x2219cc4                               ; System.Collections.Generic.List<SCNotifyOperate>$$Clear
  e71494: mov    x0, x24                                  
  e71498: bl     #0xe71368                                ; MechaData$$ClearListCache
  e7149c: ldr    x21, [x24, #0x78]                        
  e714a0: cbnz   x21, #0xe714ac                           
  e714a4: mov    x0, xzr                                  
  e714a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e714ac: adrp   x8, #0x3051000                           
  e714b0: ldr    x8, [x8, #0x6a0]                         ; MMETH Method$System.Collections.Generic.Dictionary<long, DGeneral>.Clear()
  e714b4: mov    x0, x21                                  
  e714b8: ldr    x1, [x8]                                 
  e714bc: bl     #0x2182184                               ; System.Collections.Generic.Dictionary<long, DItem>$$Clear
  e714c0: cbnz   x20, #0xe714cc                           
  e714c4: mov    x0, xzr                                  
  e714c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e714cc: adrp   x10, #0x2ff0000                          
  e714d0: ldr    x8, [x20]                                
  e714d4: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  e714d8: ldrh   w9, [x8, #0x11e]                         
  e714dc: ldr    x1, [x10]                                
  e714e0: cbz    x9, #0xe7150c                            
  e714e4: ldr    x11, [x8, #0xb0]                         
  e714e8: mov    x10, xzr                                 
  e714ec: add    x11, x11, #8                             
  e714f0: ldur   x12, [x11, #-8]                          
  e714f4: cmp    x12, x1                                  
  e714f8: b.eq   #0xe7151c                                
  e714fc: add    x10, x10, #1                             
  e71500: cmp    x10, x9                                  
  e71504: add    x11, x11, #0x10                          
  e71508: b.lo   #0xe714f0                                
  e7150c: mov    w2, #4                                   
  e71510: mov    x0, x20                                  
  e71514: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e71518: b      #0xe7152c                                
  e7151c: ldr    w9, [x11]                                
  e71520: add    w9, w9, #4                               
  e71524: add    x8, x8, w9, uxtw #4                      
  e71528: add    x0, x8, #0x128                           
  e7152c: ldp    x8, x1, [x0]                             
  e71530: mov    x0, x20                                  
  e71534: blr    x8                                       
  e71538: mov    x20, x0                                  
  e7153c: cbz    x20, #0xe715ac                           
  e71540: adrp   x19, #0x3005000                          
  e71544: ldr    x19, [x19, #0x878]                       ; META msg.SCInitData_TypeInfo
  e71548: ldr    x9, [x20]                                
  e7154c: ldr    x8, [x19]                                
  e71550: ldrb   w11, [x9, #0x120]                        
  e71554: ldrb   w10, [x8, #0x120]                        
  e71558: cmp    w11, w10                                 
  e7155c: b.lo   #0xe71574                                
  e71560: ldr    x9, [x9, #0xc8]                          
  e71564: add    x9, x9, x10, lsl #3                      
  e71568: ldur   x9, [x9, #-8]                            
  e7156c: cmp    x9, x8                                   
  e71570: b.eq   #0xe71580                                
  e71574: mov    x0, xzr                                  
  e71578: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7157c: ldr    x8, [x19]                                
  e71580: ldr    x9, [x20]                                
  e71584: ldrb   w10, [x8, #0x120]                        
  e71588: ldrb   w11, [x9, #0x120]                        
  e7158c: cmp    w11, w10                                 
  e71590: b.lo   #0xe715b0                                
  e71594: ldr    x9, [x9, #0xc8]                          
  e71598: add    x9, x9, x10, lsl #3                      
  e7159c: ldur   x9, [x9, #-8]                            
  e715a0: cmp    x9, x8                                   
  e715a4: csel   x0, x20, xzr, eq                         
  e715a8: b      #0xe715b4                                
  e715ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e715b0: mov    x0, xzr                                  
  e715b4: mov    x1, xzr                                  
  e715b8: bl     #0x1c4c210                               ; msg.SCInitData$$get_human
  e715bc: adrp   x19, #0x3042000                          
  e715c0: ldr    x19, [x19, #0xb88]                       ; META GameLog_TypeInfo
  e715c4: mov    x20, x0                                  
  e715c8: ldr    x8, [x19]                                
  e715cc: ldrb   w9, [x8, #0x127]                         
  e715d0: tbz    w9, #1, #0xe715e8                        
  e715d4: ldr    w9, [x8, #0xd8]                          
  e715d8: cbnz   w9, #0xe715e8                            
  e715dc: mov    x0, x8                                   
  e715e0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e715e4: ldr    x8, [x19]                                
  e715e8: ldr    x8, [x8, #0xb8]                          
  e715ec: ldr    x21, [x8, #8]                            
  e715f0: cbnz   x20, #0xe715fc                           
  e715f4: mov    x0, xzr                                  
  e715f8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e715fc: mov    x0, x20                                  
  e71600: mov    x1, xzr                                  
  e71604: bl     #0x1cfba84                               ; msg.DHuman$$get_generalList
  e71608: mov    x22, x0                                  
  e7160c: cbnz   x22, #0xe71614                           
  e71610: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71614: adrp   x8, #0x2fe9000                           
  e71618: ldr    x8, [x8, #0x350]                         ; MMETH Method$System.Collections.Generic.List<DGeneral>.get_Count()
  e7161c: mov    x0, x22                                  
  e71620: ldr    x1, [x8]                                 
  e71624: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e71628: adrp   x8, #0x300b000                           
  e7162c: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
  e71630: str    w0, [sp, #0x18]                          
  e71634: add    x1, sp, #0x18                            
  e71638: ldr    x8, [x8]                                 
  e7163c: mov    x0, x8                                   
  e71640: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e71644: adrp   x8, #0x2fda000                           
  e71648: ldr    x8, [x8, #0x668]                         ; STR "机体数量       "
  e7164c: mov    x1, x0                                   
  e71650: mov    x2, xzr                                  
  e71654: ldr    x8, [x8]                                 
  e71658: mov    x0, x8                                   
  e7165c: bl     #0x1c75688                               ; System.String$$Concat
  e71660: adrp   x8, #0x2fc7000                           
  e71664: ldr    x8, [x8, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  e71668: mov    x22, x0                                  
  e7166c: ldr    x8, [x8]                                 
  e71670: mov    x0, x8                                   
  e71674: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  e71678: mov    x23, x0                                  
  e7167c: cbnz   x21, #0xe71688                           
  e71680: mov    x0, xzr                                  
  e71684: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71688: mov    x0, x21                                  
  e7168c: mov    x1, x22                                  
  e71690: mov    x2, x23                                  
  e71694: mov    x3, xzr                                  
  e71698: bl     #0x142da80                               ; UniCore.Logger$$Debug
  e7169c: adrp   x28, #0x3019000                          
  e716a0: adrp   x19, #0x2fed000                          
  e716a4: adrp   x21, #0x2fc8000                          
  e716a8: ldr    x28, [x28, #0x230]                       ; MMETH Method$System.Collections.Generic.List<DWeapon>.get_Count()
  e716ac: ldr    x19, [x19, #0x950]                       ; MMETH Method$System.Collections.Generic.List<DWeapon>.get_Item()
  e716b0: ldr    x21, [x21, #0x4c8]                       ; MMETH Method$System.Collections.Generic.Dictionary<int, int>.set_Item()
  e716b4: mov    w23, wzr                                 
  e716b8: str    x24, [sp]                                
  e716bc: b      #0xe71a68                                
  e716c0: mov    x0, x20                                  
  e716c4: mov    x1, xzr                                  
  e716c8: bl     #0x1cfba84                               ; msg.DHuman$$get_generalList
  e716cc: mov    x22, x0                                  
  e716d0: cbnz   x22, #0xe716d8                           
  e716d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e716d8: adrp   x8, #0x2fef000                           
  e716dc: ldr    x8, [x8, #0x658]                         ; MMETH Method$System.Collections.Generic.List<DGeneral>.get_Item()
  e716e0: mov    x0, x22                                  
  e716e4: mov    w1, w23                                  
  e716e8: str    w23, [sp, #0xc]                          
  e716ec: ldr    x2, [x8]                                 
  e716f0: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e716f4: ldr    x22, [x24, #0x78]                        
  e716f8: mov    x23, x0                                  
  e716fc: cbnz   x23, #0xe71704                           
  e71700: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71704: mov    x0, x23                                  
  e71708: mov    x1, xzr                                  
  e7170c: bl     #0x1cf1954                               ; msg.DGeneral$$get_id
  e71710: mov    x24, x0                                  
  e71714: cbnz   x22, #0xe71720                           
  e71718: mov    x0, xzr                                  
  e7171c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71720: adrp   x8, #0x302b000                           
  e71724: ldr    x8, [x8, #0x680]                         ; MMETH Method$System.Collections.Generic.Dictionary<long, DGeneral>.Add()
  e71728: mov    x0, x22                                  
  e7172c: mov    x1, x24                                  
  e71730: mov    x2, x23                                  
  e71734: ldr    x3, [x8]                                 
  e71738: bl     #0x2181e2c                               ; System.Collections.Generic.Dictionary<long, DItem>$$Add
  e7173c: adrp   x8, #0x2fec000                           
  e71740: ldr    x8, [x8, #0x4e0]                         ; META MechaVO_TypeInfo
  e71744: ldr    x0, [x8]                                 
  e71748: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e7174c: mov    x22, x0                                  
  e71750: bl     #0xe71e14                                ; MechaVO$$.ctor
  e71754: cbnz   x23, #0xe71760                           
  e71758: mov    x0, xzr                                  
  e7175c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71760: mov    x0, x23                                  
  e71764: mov    x1, xzr                                  
  e71768: bl     #0x1cf1954                               ; msg.DGeneral$$get_id
  e7176c: mov    x24, x0                                  
  e71770: cbnz   x22, #0xe7177c                           
  e71774: mov    x0, xzr                                  
  e71778: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7177c: str    x24, [x22, #0x10]                        
  e71780: cbz    x23, #0xe717a8                           
  e71784: mov    x0, x23                                  
  e71788: mov    x1, xzr                                  
  e7178c: bl     #0x1cf1afc                               ; msg.DGeneral$$get_star
  e71790: str    w0, [x22, #0x18]                         
  e71794: mov    x0, x23                                  
  e71798: mov    x1, xzr                                  
  e7179c: bl     #0x1cf1bd8                               ; msg.DGeneral$$get_combat
  e717a0: str    w0, [x22, #0x1c]                         
  e717a4: b      #0xe717e0                                
  e717a8: mov    x0, xzr                                  
  e717ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e717b0: mov    x0, x23                                  
  e717b4: mov    x1, xzr                                  
  e717b8: bl     #0x1cf1afc                               ; msg.DGeneral$$get_star
  e717bc: str    w0, [x22, #0x18]                         
  e717c0: mov    x0, xzr                                  
  e717c4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e717c8: mov    x0, x23                                  
  e717cc: mov    x1, xzr                                  
  e717d0: bl     #0x1cf1bd8                               ; msg.DGeneral$$get_combat
  e717d4: str    w0, [x22, #0x1c]                         
  e717d8: mov    x0, xzr                                  
  e717dc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e717e0: mov    x0, x23                                  
  e717e4: mov    x1, xzr                                  
  e717e8: bl     #0x1cf2334                               ; msg.DGeneral$$get_unit
  e717ec: mov    x24, x0                                  
  e717f0: cbnz   x24, #0xe717f8                           
  e717f4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e717f8: mov    x0, x24                                  
  e717fc: mov    x1, xzr                                  
  e71800: bl     #0x115cd58                               ; msg.DUnit$$get_level
  e71804: str    w0, [x22, #0x20]                         
  e71808: cbnz   x23, #0xe71814                           
  e7180c: mov    x0, xzr                                  
  e71810: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71814: mov    x0, x23                                  
  e71818: mov    x1, xzr                                  
  e7181c: bl     #0x1cf2334                               ; msg.DGeneral$$get_unit
  e71820: mov    x24, x0                                  
  e71824: cbnz   x24, #0xe7182c                           
  e71828: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7182c: mov    x0, x24                                  
  e71830: mov    x1, xzr                                  
  e71834: bl     #0x115d324                               ; msg.DUnit$$get_expCur
  e71838: str    x0, [x22, #0x28]                         
  e7183c: cbnz   x23, #0xe71848                           
  e71840: mov    x0, xzr                                  
  e71844: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71848: mov    x0, x23                                  
  e7184c: mov    x1, xzr                                  
  e71850: bl     #0x1cf2334                               ; msg.DGeneral$$get_unit
  e71854: mov    x24, x0                                  
  e71858: cbnz   x24, #0xe71860                           
  e7185c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71860: mov    x0, x24                                  
  e71864: mov    x1, xzr                                  
  e71868: bl     #0x115d250                               ; msg.DUnit$$get_sn
  e7186c: mov    w24, w0                                  
  e71870: str    w24, [x22, #0x30]                        
  e71874: adrp   x8, #0x3024000                           
  e71878: ldr    x8, [x8, #0x458]                         ; META ConfMechaInfo_TypeInfo
  e7187c: ldr    x0, [x8]                                 
  e71880: ldrb   w8, [x0, #0x127]                         
  e71884: tbz    w8, #1, #0xe71894                        
  e71888: ldr    w8, [x0, #0xd8]                          
  e7188c: cbnz   w8, #0xe71894                            
  e71890: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e71894: mov    w0, w24                                  
  e71898: mov    x1, xzr                                  
  e7189c: bl     #0x16593f0                               ; ConfMechaInfo$$Get
  e718a0: str    x0, [x22, #0x38]                         
  e718a4: cbnz   x23, #0xe718b0                           
  e718a8: mov    x0, xzr                                  
  e718ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e718b0: mov    x0, x23                                  
  e718b4: mov    x1, xzr                                  
  e718b8: bl     #0x1cf1954                               ; msg.DGeneral$$get_id
  e718bc: mov    x24, x0                                  
  e718c0: cbnz   x20, #0xe718cc                           
  e718c4: mov    x0, xzr                                  
  e718c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e718cc: mov    x0, x20                                  
  e718d0: mov    x1, xzr                                  
  e718d4: bl     #0x1cfbae4                               ; msg.DHuman$$get_defaultGeneral
  e718d8: cmp    x24, x0                                  
  e718dc: cset   w8, eq                                   
  e718e0: strb   w8, [x22, #0x40]                         
  e718e4: cbnz   x23, #0xe718f0                           
  e718e8: mov    x0, xzr                                  
  e718ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e718f0: mov    x0, x23                                  
  e718f4: mov    x1, xzr                                  
  e718f8: bl     #0x1cf1ebc                               ; msg.DGeneral$$get_equipWeaponSN
  e718fc: mov    w24, wzr                                 
  e71900: str    w0, [x22, #0x44]                         
  e71904: b      #0xe719d0                                
  e71908: ldr    x25, [x22, #0x48]                        
  e7190c: cbnz   x23, #0xe71918                           
  e71910: mov    x0, xzr                                  
  e71914: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71918: mov    x0, x23                                  
  e7191c: mov    x1, xzr                                  
  e71920: bl     #0x1cf1f40                               ; msg.DGeneral$$get_dWeapon
  e71924: mov    x26, x0                                  
  e71928: cbnz   x26, #0xe71930                           
  e7192c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71930: ldr    x2, [x19]                                
  e71934: mov    x0, x26                                  
  e71938: mov    w1, w24                                  
  e7193c: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e71940: mov    x26, x0                                  
  e71944: cbnz   x26, #0xe7194c                           
  e71948: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7194c: mov    x0, x26                                  
  e71950: mov    x1, xzr                                  
  e71954: bl     #0x115ffb0                               ; msg.DWeapon$$get_sn
  e71958: mov    w26, w0                                  
  e7195c: cbnz   x23, #0xe71968                           
  e71960: mov    x0, xzr                                  
  e71964: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71968: mov    x0, x23                                  
  e7196c: mov    x1, xzr                                  
  e71970: bl     #0x1cf1f40                               ; msg.DGeneral$$get_dWeapon
  e71974: mov    x27, x0                                  
  e71978: cbnz   x27, #0xe71980                           
  e7197c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71980: ldr    x2, [x19]                                
  e71984: mov    x0, x27                                  
  e71988: mov    w1, w24                                  
  e7198c: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e71990: mov    x27, x0                                  
  e71994: cbnz   x27, #0xe7199c                           
  e71998: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7199c: mov    x0, x27                                  
  e719a0: mov    x1, xzr                                  
  e719a4: bl     #0x1160084                               ; msg.DWeapon$$get_level
  e719a8: mov    w27, w0                                  
  e719ac: cbnz   x25, #0xe719b8                           
  e719b0: mov    x0, xzr                                  
  e719b4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e719b8: ldr    x3, [x21]                                
  e719bc: mov    x0, x25                                  
  e719c0: mov    w1, w26                                  
  e719c4: mov    w2, w27                                  
  e719c8: bl     #0x2168968                               ; System.Collections.Generic.Dictionary<int, int>$$set_Item
  e719cc: add    w24, w24, #1                             
  e719d0: cbnz   x23, #0xe719dc                           
  e719d4: mov    x0, xzr                                  
  e719d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e719dc: mov    x0, x23                                  
  e719e0: mov    x1, xzr                                  
  e719e4: bl     #0x1cf1f40                               ; msg.DGeneral$$get_dWeapon
  e719e8: mov    x25, x0                                  
  e719ec: cbnz   x25, #0xe719f4                           
  e719f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e719f4: ldr    x1, [x28]                                
  e719f8: mov    x0, x25                                  
  e719fc: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e71a00: cmp    w24, w0                                  
  e71a04: b.lt   #0xe71908                                
  e71a08: ldr    x24, [sp]                                
  e71a0c: ldr    x23, [x24, #0x70]                        
  e71a10: cbnz   x23, #0xe71a1c                           
  e71a14: mov    x0, xzr                                  
  e71a18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71a1c: adrp   x8, #0x304c000                           
  e71a20: ldr    x8, [x8, #0x7e0]                         ; MMETH Method$System.Collections.Generic.List<MechaVO>.Contains()
  e71a24: mov    x0, x23                                  
  e71a28: mov    x1, x22                                  
  e71a2c: ldr    x2, [x8]                                 
  e71a30: bl     #0x2219d0c                               ; System.Collections.Generic.List<Toggle>$$Contains
  e71a34: tbnz   w0, #0, #0xe71b58                        
  e71a38: ldr    x23, [x24, #0x70]                        
  e71a3c: cbnz   x23, #0xe71a48                           
  e71a40: mov    x0, xzr                                  
  e71a44: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71a48: adrp   x8, #0x3013000                           
  e71a4c: ldr    x8, [x8, #0xb48]                         ; MMETH Method$System.Collections.Generic.List<MechaVO>.Add()
  e71a50: mov    x0, x23                                  
  e71a54: mov    x1, x22                                  
  e71a58: ldr    x2, [x8]                                 
  e71a5c: bl     #0x2219780                               ; System.Collections.Generic.List<IBinding>$$Add
  e71a60: ldr    w23, [sp, #0xc]                          
  e71a64: add    w23, w23, #1                             
  e71a68: cbnz   x20, #0xe71a74                           
  e71a6c: mov    x0, xzr                                  
  e71a70: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71a74: mov    x0, x20                                  
  e71a78: mov    x1, xzr                                  
  e71a7c: bl     #0x1cfba84                               ; msg.DHuman$$get_generalList
  e71a80: mov    x22, x0                                  
  e71a84: cbnz   x22, #0xe71a8c                           
  e71a88: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71a8c: adrp   x8, #0x2fe9000                           
  e71a90: ldr    x8, [x8, #0x350]                         ; MMETH Method$System.Collections.Generic.List<DGeneral>.get_Count()
  e71a94: mov    x0, x22                                  
  e71a98: ldr    x1, [x8]                                 
  e71a9c: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e71aa0: mov    w22, w0                                  
  e71aa4: cbnz   x20, #0xe71ab0                           
  e71aa8: mov    x0, xzr                                  
  e71aac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71ab0: cmp    w23, w22                                 
  e71ab4: b.lt   #0xe716c0                                
  e71ab8: mov    x0, x20                                  
  e71abc: mov    x1, xzr                                  
  e71ac0: bl     #0x1cfbae4                               ; msg.DHuman$$get_defaultGeneral
  e71ac4: mov    x1, x0                                   
  e71ac8: mov    x0, x24                                  
  e71acc: bl     #0xe704e0                                ; MechaData$$set_currentId
  e71ad0: mov    x0, x24                                  
  e71ad4: bl     #0xe70298                                ; MechaData$$get_contextDispatcher
  e71ad8: adrp   x19, #0x2ff5000                          
  e71adc: ldr    x19, [x19, #0xb08]                       ; META LobbyEvent_TypeInfo
  e71ae0: mov    x20, x0                                  
  e71ae4: mov    w8, #0x1a                                
  e71ae8: add    x1, sp, #0x14                            
  e71aec: ldr    x0, [x19]                                
  e71af0: str    w8, [sp, #0x14]                          
  e71af4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e71af8: mov    x21, x0                                  
  e71afc: cbnz   x20, #0xe71b08                           
  e71b00: mov    x0, xzr                                  
  e71b04: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71b08: adrp   x23, #0x2fde000                          
  e71b0c: ldr    x8, [x20]                                
  e71b10: ldr    x23, [x23, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  e71b14: ldrh   w9, [x8, #0x11e]                         
  e71b18: ldr    x1, [x23]                                
  e71b1c: cbz    x9, #0xe71b48                            
  e71b20: ldr    x11, [x8, #0xb0]                         
  e71b24: mov    x10, xzr                                 
  e71b28: add    x11, x11, #8                             
  e71b2c: ldur   x12, [x11, #-8]                          
  e71b30: cmp    x12, x1                                  
  e71b34: b.eq   #0xe71bfc                                
  e71b38: add    x10, x10, #1                             
  e71b3c: cmp    x10, x9                                  
  e71b40: add    x11, x11, #0x10                          
  e71b44: b.lo   #0xe71b2c                                
  e71b48: mov    x0, x20                                  
  e71b4c: mov    w2, wzr                                  
  e71b50: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e71b54: b      #0xe71c08                                
  e71b58: adrp   x19, #0x3042000                          
  e71b5c: ldr    x19, [x19, #0xb88]                       ; META GameLog_TypeInfo
  e71b60: ldr    x0, [x19]                                
  e71b64: ldrb   w8, [x0, #0x127]                         
  e71b68: tbz    w8, #1, #0xe71b7c                        
  e71b6c: ldr    w8, [x0, #0xd8]                          
  e71b70: cbnz   w8, #0xe71b7c                            
  e71b74: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e71b78: ldr    x0, [x19]                                
  e71b7c: ldr    x8, [x0, #0xb8]                          
  e71b80: ldr    x20, [x22, #0x38]                        
  e71b84: ldr    x19, [x8, #8]                            
  e71b88: cbnz   x20, #0xe71b94                           
  e71b8c: mov    x0, xzr                                  
  e71b90: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71b94: mov    x0, x20                                  
  e71b98: mov    x1, xzr                                  
  e71b9c: bl     #0x16583b0                               ; ConfMechaInfo$$get_name
  e71ba0: adrp   x8, #0x2fc3000                           
  e71ba4: ldr    x8, [x8, #0xf8]                          ; STR "重复机甲"
  e71ba8: mov    x1, x0                                   
  e71bac: mov    x2, xzr                                  
  e71bb0: ldr    x8, [x8]                                 
  e71bb4: mov    x0, x8                                   
  e71bb8: bl     #0x1c75758                               ; System.String$$Concat
  e71bbc: adrp   x8, #0x2fc7000                           
  e71bc0: ldr    x8, [x8, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  e71bc4: mov    x20, x0                                  
  e71bc8: ldr    x8, [x8]                                 
  e71bcc: mov    x0, x8                                   
  e71bd0: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  e71bd4: mov    x21, x0                                  
  e71bd8: cbnz   x19, #0xe71be4                           
  e71bdc: mov    x0, xzr                                  
  e71be0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71be4: mov    x0, x19                                  
  e71be8: mov    x1, x20                                  
  e71bec: mov    x2, x21                                  
  e71bf0: mov    x3, xzr                                  
  e71bf4: bl     #0x1423464                               ; UniCore.Logger$$Error
  e71bf8: b      #0xe71df4                                
  e71bfc: ldr    w9, [x11]                                
  e71c00: add    x8, x8, x9, lsl #4                       
  e71c04: add    x0, x8, #0x128                           
  e71c08: ldp    x8, x2, [x0]                             
  e71c0c: mov    x0, x20                                  
  e71c10: mov    x1, x21                                  
  e71c14: blr    x8                                       
  e71c18: mov    x0, x24                                  
  e71c1c: bl     #0xe70298                                ; MechaData$$get_contextDispatcher
  e71c20: mov    x20, x0                                  
  e71c24: ldr    x0, [x19]                                
  e71c28: mov    w8, #0x13                                
  e71c2c: add    x1, sp, #0x10                            
  e71c30: str    w8, [sp, #0x10]                          
  e71c34: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e71c38: adrp   x8, #0x3018000                           
  e71c3c: ldr    x8, [x8, #0x890]                         ; META string[]_TypeInfo
  e71c40: mov    x21, x0                                  
  e71c44: mov    w1, #2                                   
  e71c48: ldr    x8, [x8]                                 
  e71c4c: mov    x0, x8                                   
  e71c50: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e71c54: mov    x22, x0                                  
  e71c58: cbnz   x22, #0xe71c60                           
  e71c5c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71c60: adrp   x19, #0x300a000                          
  e71c64: ldr    x19, [x19, #0x478]                       ; STR "BlackBoard/BottomLeft_Panel/RebotBodyBth/point"
  e71c68: ldr    x0, [x19]                                
  e71c6c: cbz    x0, #0xe71c90                            
  e71c70: ldr    x8, [x22]                                
  e71c74: ldr    x1, [x8, #0x40]                          
  e71c78: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e71c7c: cbnz   x0, #0xe71c90                            
  e71c80: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e71c84: mov    x1, xzr                                  
  e71c88: mov    x2, xzr                                  
  e71c8c: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e71c90: ldr    w8, [x22, #0x18]                         
  e71c94: ldr    x19, [x19]                               
  e71c98: cbnz   w8, #0xe71cac                            
  e71c9c: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e71ca0: mov    x1, xzr                                  
  e71ca4: mov    x2, xzr                                  
  e71ca8: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e71cac: mov    x0, x24                                  
  e71cb0: str    x19, [x22, #0x20]                        
  e71cb4: bl     #0xe71e84                                ; MechaData$$LobbyShowRedPoint
  e71cb8: and    w8, w0, #1                               
  e71cbc: add    x0, sp, #0x1c                            
  e71cc0: mov    x1, xzr                                  
  e71cc4: strb   w8, [sp, #0x1c]                          
  e71cc8: bl     #0x19c0b74                               ; ? near System.BitConverter$$.cctor+0x64
  e71ccc: mov    x19, x0                                  
  e71cd0: cbz    x19, #0xe71cf8                           
  e71cd4: ldr    x8, [x22]                                
  e71cd8: mov    x0, x19                                  
  e71cdc: ldr    x1, [x8, #0x40]                          
  e71ce0: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e71ce4: cbnz   x0, #0xe71cf8                            
  e71ce8: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e71cec: mov    x1, xzr                                  
  e71cf0: mov    x2, xzr                                  
  e71cf4: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e71cf8: ldr    w8, [x22, #0x18]                         
  e71cfc: cmp    w8, #1                                   
  e71d00: b.hi   #0xe71d14                                
  e71d04: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e71d08: mov    x1, xzr                                  
  e71d0c: mov    x2, xzr                                  
  e71d10: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e71d14: str    x19, [x22, #0x28]                        
  e71d18: cbnz   x20, #0xe71d24                           
  e71d1c: mov    x0, xzr                                  
  e71d20: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71d24: ldr    x8, [x20]                                
  e71d28: ldr    x1, [x23]                                
  e71d2c: ldrh   w9, [x8, #0x11e]                         
  e71d30: cbz    x9, #0xe71d5c                            
  e71d34: ldr    x11, [x8, #0xb0]                         
  e71d38: mov    x10, xzr                                 
  e71d3c: add    x11, x11, #8                             
  e71d40: ldur   x12, [x11, #-8]                          
  e71d44: cmp    x12, x1                                  
  e71d48: b.eq   #0xe71d6c                                
  e71d4c: add    x10, x10, #1                             
  e71d50: cmp    x10, x9                                  
  e71d54: add    x11, x11, #0x10                          
  e71d58: b.lo   #0xe71d40                                
  e71d5c: mov    w2, #1                                   
  e71d60: mov    x0, x20                                  
  e71d64: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e71d68: b      #0xe71d7c                                
  e71d6c: ldr    w9, [x11]                                
  e71d70: add    w9, w9, #1                               
  e71d74: add    x8, x8, w9, uxtw #4                      
  e71d78: add    x0, x8, #0x128                           
  e71d7c: ldp    x8, x3, [x0]                             
  e71d80: mov    x0, x20                                  
  e71d84: mov    x1, x21                                  
  e71d88: mov    x2, x22                                  
  e71d8c: blr    x8                                       
  e71d90: adrp   x8, #0x3042000                           
  e71d94: ldr    x8, [x8, #0x8c0]                         ; META msg.CSSettingSwitch_TypeInfo
  e71d98: ldr    x0, [x8]                                 
  e71d9c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e71da0: mov    x1, xzr                                  
  e71da4: mov    x19, x0                                  
  e71da8: bl     #0x213bc14                               ; msg.CSSettingSwitch$$.ctor
  e71dac: cbnz   x19, #0xe71db8                           
  e71db0: mov    x0, xzr                                  
  e71db4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e71db8: mov    w1, #0x3f6                               
  e71dbc: mov    x0, x19                                  
  e71dc0: mov    x2, xzr                                  
  e71dc4: bl     #0x213bd8c                               ; msg.CSSettingSwitch$$set_id
  e71dc8: adrp   x8, #0x3077000                           
  e71dcc: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
  e71dd0: ldr    x0, [x8]                                 
  e71dd4: ldrb   w8, [x0, #0x127]                         
  e71dd8: tbz    w8, #1, #0xe71de8                        
  e71ddc: ldr    w8, [x0, #0xd8]                          
  e71de0: cbnz   w8, #0xe71de8                            
  e71de4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e71de8: mov    x0, x19                                  
  e71dec: mov    x1, xzr                                  
  e71df0: bl     #0x1125f84                               ; ConnectAPI$$QueuePacket
  e71df4: ldp    x29, x30, [sp, #0x70]                    
  e71df8: ldp    x20, x19, [sp, #0x60]                    
  e71dfc: ldp    x22, x21, [sp, #0x50]                    
  e71e00: ldp    x24, x23, [sp, #0x40]                    
  e71e04: ldp    x26, x25, [sp, #0x30]                    
  e71e08: ldp    x28, x27, [sp, #0x20]                    
  e71e0c: add    sp, sp, #0x80                            
  e71e10: ret                                             

===== MechaData$$ListAddMechaVO @ 0xe72df8 (408 bytes)
  e72df8: stp    x24, x23, [sp, #-0x40]!                  
  e72dfc: stp    x22, x21, [sp, #0x10]                    
  e72e00: stp    x20, x19, [sp, #0x20]                    
  e72e04: stp    x29, x30, [sp, #0x30]                    
  e72e08: add    x29, sp, #0x30                           
  e72e0c: adrp   x21, #0x31cd000                          
  e72e10: ldrb   w8, [x21, #0x489]                        
  e72e14: mov    x19, x1                                  
  e72e18: mov    x20, x0                                  
  e72e1c: tbnz   w8, #0, #0xe72e38                        
  e72e20: adrp   x8, #0x3075000                           
  e72e24: ldr    x8, [x8, #0x568]                         
  e72e28: ldr    w0, [x8]                                 
  e72e2c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e72e30: mov    w8, #1                                   
  e72e34: strb   w8, [x21, #0x489]                        
  e72e38: adrp   x8, #0x2fdc000                           
  e72e3c: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e72e40: ldr    x8, [x8]                                 
  e72e44: ldr    x8, [x8, #0xb8]                          
  e72e48: ldr    x0, [x8, #0x138]                         
  e72e4c: cbz    x0, #0xe72e70                            
  e72e50: mov    x1, x20                                  
  e72e54: mov    x2, x19                                  
  e72e58: ldp    x29, x30, [sp, #0x30]                    
  e72e5c: ldp    x20, x19, [sp, #0x20]                    
  e72e60: ldp    x22, x21, [sp, #0x10]                    
  e72e64: mov    x3, xzr                                  
  e72e68: ldp    x24, x23, [sp], #0x40                    
  e72e6c: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e72e70: cbnz   x19, #0xe72e7c                           
  e72e74: mov    x0, xzr                                  
  e72e78: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72e7c: ldr    w1, [x19, #0x30]                         
  e72e80: mov    x0, x20                                  
  e72e84: bl     #0xe6f64c                                ; MechaData$$GetMechaVO
  e72e88: cbz    x0, #0xe72f1c                            
  e72e8c: adrp   x23, #0x2fc5000                          
  e72e90: adrp   x24, #0x2fe2000                          
  e72e94: ldr    x23, [x23, #0x9c8]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Count()
  e72e98: ldr    x24, [x24, #0x7e0]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Item()
  e72e9c: mov    w21, wzr                                 
  e72ea0: b      #0xe72ee4                                
  e72ea4: ldr    x22, [x20, #0x70]                        
  e72ea8: cbnz   x22, #0xe72eb4                           
  e72eac: mov    x0, xzr                                  
  e72eb0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72eb4: ldr    x2, [x24]                                
  e72eb8: mov    x0, x22                                  
  e72ebc: mov    w1, w21                                  
  e72ec0: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e72ec4: mov    x22, x0                                  
  e72ec8: cbnz   x22, #0xe72ed0                           
  e72ecc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72ed0: ldr    w8, [x22, #0x30]                         
  e72ed4: ldr    w9, [x19, #0x30]                         
  e72ed8: cmp    w8, w9                                   
  e72edc: b.eq   #0xe72f54                                
  e72ee0: add    w21, w21, #1                             
  e72ee4: ldr    x22, [x20, #0x70]                        
  e72ee8: cbnz   x22, #0xe72ef4                           
  e72eec: mov    x0, xzr                                  
  e72ef0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72ef4: ldr    x1, [x23]                                
  e72ef8: mov    x0, x22                                  
  e72efc: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e72f00: cmp    w21, w0                                  
  e72f04: b.lt   #0xe72ea4                                
  e72f08: ldp    x29, x30, [sp, #0x30]                    
  e72f0c: ldp    x20, x19, [sp, #0x20]                    
  e72f10: ldp    x22, x21, [sp, #0x10]                    
  e72f14: ldp    x24, x23, [sp], #0x40                    
  e72f18: ret                                             
  e72f1c: ldr    x20, [x20, #0x70]                        
  e72f20: cbnz   x20, #0xe72f2c                           
  e72f24: mov    x0, xzr                                  
  e72f28: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72f2c: adrp   x8, #0x3013000                           
  e72f30: ldr    x8, [x8, #0xb48]                         ; MMETH Method$System.Collections.Generic.List<MechaVO>.Add()
  e72f34: mov    x0, x20                                  
  e72f38: mov    x1, x19                                  
  e72f3c: ldp    x29, x30, [sp, #0x30]                    
  e72f40: ldr    x2, [x8]                                 
  e72f44: ldp    x20, x19, [sp, #0x20]                    
  e72f48: ldp    x22, x21, [sp, #0x10]                    
  e72f4c: ldp    x24, x23, [sp], #0x40                    
  e72f50: b      #0x2219780                               ; System.Collections.Generic.List<IBinding>$$Add
  e72f54: ldr    x20, [x20, #0x70]                        
  e72f58: cbnz   x20, #0xe72f64                           
  e72f5c: mov    x0, xzr                                  
  e72f60: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e72f64: adrp   x8, #0x3059000                           
  e72f68: ldr    x8, [x8, #0xfa8]                         ; MMETH Method$System.Collections.Generic.List<MechaVO>.set_Item()
  e72f6c: mov    x0, x20                                  
  e72f70: mov    w1, w21                                  
  e72f74: mov    x2, x19                                  
  e72f78: ldr    x3, [x8]                                 
  e72f7c: ldp    x29, x30, [sp, #0x30]                    
  e72f80: ldp    x20, x19, [sp, #0x20]                    
  e72f84: ldp    x22, x21, [sp, #0x10]                    
  e72f88: ldp    x24, x23, [sp], #0x40                    
  e72f8c: b      #0x221945c                               ; System.Collections.Generic.List<DUnionHuman>$$set_Item

===== MechaData$$OnSCGeneralInfoAttIng @ 0xe75864 (904 bytes)
  e75864: sub    sp, sp, #0x50                            
  e75868: stp    x24, x23, [sp, #0x10]                    
  e7586c: stp    x22, x21, [sp, #0x20]                    
  e75870: stp    x20, x19, [sp, #0x30]                    
  e75874: stp    x29, x30, [sp, #0x40]                    
  e75878: add    x29, sp, #0x40                           
  e7587c: adrp   x21, #0x31cd000                          
  e75880: ldrb   w8, [x21, #0x490]                        
  e75884: mov    x20, x1                                  
  e75888: mov    x19, x0                                  
  e7588c: tbnz   w8, #0, #0xe758a8                        
  e75890: adrp   x8, #0x2fc0000                           
  e75894: ldr    x8, [x8, #0xca0]                         
  e75898: ldr    w0, [x8]                                 
  e7589c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e758a0: mov    w8, #1                                   
  e758a4: strb   w8, [x21, #0x490]                        
  e758a8: adrp   x8, #0x2fdc000                           
  e758ac: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e758b0: ldr    x8, [x8]                                 
  e758b4: ldr    x8, [x8, #0xb8]                          
  e758b8: ldr    x0, [x8, #0x170]                         
  e758bc: cbz    x0, #0xe758e4                            
  e758c0: mov    x1, x19                                  
  e758c4: mov    x2, x20                                  
  e758c8: ldp    x29, x30, [sp, #0x40]                    
  e758cc: ldp    x20, x19, [sp, #0x30]                    
  e758d0: ldp    x22, x21, [sp, #0x20]                    
  e758d4: ldp    x24, x23, [sp, #0x10]                    
  e758d8: mov    x3, xzr                                  
  e758dc: add    sp, sp, #0x50                            
  e758e0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e758e4: cbnz   x20, #0xe758f0                           
  e758e8: mov    x0, xzr                                  
  e758ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e758f0: adrp   x10, #0x2ff0000                          
  e758f4: ldr    x8, [x20]                                
  e758f8: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  e758fc: ldrh   w9, [x8, #0x11e]                         
  e75900: ldr    x1, [x10]                                
  e75904: cbz    x9, #0xe75930                            
  e75908: ldr    x11, [x8, #0xb0]                         
  e7590c: mov    x10, xzr                                 
  e75910: add    x11, x11, #8                             
  e75914: ldur   x12, [x11, #-8]                          
  e75918: cmp    x12, x1                                  
  e7591c: b.eq   #0xe75940                                
  e75920: add    x10, x10, #1                             
  e75924: cmp    x10, x9                                  
  e75928: add    x11, x11, #0x10                          
  e7592c: b.lo   #0xe75914                                
  e75930: mov    w2, #4                                   
  e75934: mov    x0, x20                                  
  e75938: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e7593c: b      #0xe75950                                
  e75940: ldr    w9, [x11]                                
  e75944: add    w9, w9, #4                               
  e75948: add    x8, x8, w9, uxtw #4                      
  e7594c: add    x0, x8, #0x128                           
  e75950: ldp    x8, x1, [x0]                             
  e75954: mov    x0, x20                                  
  e75958: blr    x8                                       
  e7595c: mov    x20, x0                                  
  e75960: cbz    x20, #0xe75998                           
  e75964: adrp   x8, #0x3049000                           
  e75968: ldr    x8, [x8, #0x4a0]                         ; META msg.SCGeneralInfoAttIng_TypeInfo
  e7596c: ldr    x9, [x20]                                
  e75970: ldr    x8, [x8]                                 
  e75974: ldrb   w11, [x9, #0x120]                        
  e75978: ldrb   w10, [x8, #0x120]                        
  e7597c: cmp    w11, w10                                 
  e75980: b.lo   #0xe75998                                
  e75984: ldr    x9, [x9, #0xc8]                          
  e75988: add    x9, x9, x10, lsl #3                      
  e7598c: ldur   x9, [x9, #-8]                            
  e75990: cmp    x9, x8                                   
  e75994: b.eq   #0xe75bd0                                
  e75998: ldr    x21, [x19, #0x90]                        
  e7599c: mov    x0, xzr                                  
  e759a0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e759a4: mov    x0, xzr                                  
  e759a8: mov    x1, xzr                                  
  e759ac: bl     #0x1c3d22c                               ; msg.SCGeneralInfoAttIng$$get_type
  e759b0: mov    w22, w0                                  
  e759b4: mov    x0, xzr                                  
  e759b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e759bc: mov    x20, xzr                                 
  e759c0: mov    w24, #1                                  
  e759c4: mov    x0, x20                                  
  e759c8: mov    x1, xzr                                  
  e759cc: bl     #0x1c3d2b0                               ; msg.SCGeneralInfoAttIng$$get_gens
  e759d0: mov    x23, x0                                  
  e759d4: cbnz   x21, #0xe759e0                           
  e759d8: mov    x0, xzr                                  
  e759dc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e759e0: adrp   x8, #0x3008000                           
  e759e4: ldr    x8, [x8, #0xba0]                         ; MMETH Method$System.Collections.Generic.Dictionary<int, List<long>>.set_Item()
  e759e8: mov    x0, x21                                  
  e759ec: mov    w1, w22                                  
  e759f0: mov    x2, x23                                  
  e759f4: ldr    x3, [x8]                                 
  e759f8: bl     #0x216cc24                               ; System.Collections.Generic.Dictionary<int, DTitle>$$set_Item
  e759fc: cbz    w24, #0xe75a08                           
  e75a00: mov    x0, xzr                                  
  e75a04: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75a08: mov    x0, x20                                  
  e75a0c: mov    x1, xzr                                  
  e75a10: bl     #0x1c3d22c                               ; msg.SCGeneralInfoAttIng$$get_type
  e75a14: cmp    w0, #5                                   
  e75a18: b.ne   #0xe75a94                                
  e75a1c: mov    x0, x19                                  
  e75a20: bl     #0xe6fd50                                ; MechaData$$get_atSkillData
  e75a24: mov    x21, x0                                  
  e75a28: cbz    w24, #0xe75a34                           
  e75a2c: mov    x0, xzr                                  
  e75a30: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75a34: mov    x0, x20                                  
  e75a38: mov    x1, xzr                                  
  e75a3c: bl     #0x1c3d2b8                               ; msg.SCGeneralInfoAttIng$$get_atSkills
  e75a40: mov    x22, x0                                  
  e75a44: cbnz   x21, #0xe75a50                           
  e75a48: mov    x0, xzr                                  
  e75a4c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75a50: str    x22, [x21, #0x28]                        
  e75a54: b      #0xe75a94                                
  e75a58: mov    x0, x19                                  
  e75a5c: bl     #0xe6fd50                                ; MechaData$$get_atSkillData
  e75a60: mov    x21, x0                                  
  e75a64: cbnz   x21, #0xe75a6c                           
  e75a68: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75a6c: ldr    x21, [x21, #0x28]                        
  e75a70: cbnz   x21, #0xe75a7c                           
  e75a74: mov    x0, xzr                                  
  e75a78: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75a7c: adrp   x8, #0x3069000                           
  e75a80: ldr    x8, [x8, #0xee0]                         ; MMETH Method$System.Collections.Generic.List<int>.Add()
  e75a84: mov    x0, x21                                  
  e75a88: mov    w1, wzr                                  
  e75a8c: ldr    x2, [x8]                                 
  e75a90: bl     #0x220b30c                               ; System.Collections.Generic.List<int>$$Add
  e75a94: mov    x0, x19                                  
  e75a98: bl     #0xe6fd50                                ; MechaData$$get_atSkillData
  e75a9c: mov    x21, x0                                  
  e75aa0: cbnz   x21, #0xe75aa8                           
  e75aa4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75aa8: ldr    x21, [x21, #0x28]                        
  e75aac: cbnz   x21, #0xe75ab8                           
  e75ab0: mov    x0, xzr                                  
  e75ab4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75ab8: adrp   x8, #0x2fd6000                           
  e75abc: ldr    x8, [x8, #0x3b8]                         ; MMETH Method$System.Collections.Generic.List<int>.get_Count()
  e75ac0: mov    x0, x21                                  
  e75ac4: ldr    x1, [x8]                                 
  e75ac8: bl     #0x220aedc                               ; System.Collections.Generic.List<int>$$get_Count
  e75acc: cmp    w0, #3                                   
  e75ad0: b.ne   #0xe75a58                                
  e75ad4: mov    x0, x19                                  
  e75ad8: bl     #0xe70298                                ; MechaData$$get_contextDispatcher
  e75adc: adrp   x8, #0x2ff5000                           
  e75ae0: ldr    x8, [x8, #0xb08]                         ; META LobbyEvent_TypeInfo
  e75ae4: mov    x19, x0                                  
  e75ae8: add    x1, sp, #0xc                             
  e75aec: ldr    x0, [x8]                                 
  e75af0: mov    w8, #0x17                                
  e75af4: str    w8, [sp, #0xc]                           
  e75af8: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e75afc: mov    x21, x0                                  
  e75b00: cbz    w24, #0xe75b0c                           
  e75b04: mov    x0, xzr                                  
  e75b08: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75b0c: mov    x0, x20                                  
  e75b10: mov    x1, xzr                                  
  e75b14: bl     #0x1c3d22c                               ; msg.SCGeneralInfoAttIng$$get_type
  e75b18: adrp   x8, #0x300b000                           
  e75b1c: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
  e75b20: str    w0, [sp, #8]                             
  e75b24: add    x1, sp, #8                               
  e75b28: ldr    x8, [x8]                                 
  e75b2c: mov    x0, x8                                   
  e75b30: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e75b34: mov    x20, x0                                  
  e75b38: cbnz   x19, #0xe75b44                           
  e75b3c: mov    x0, xzr                                  
  e75b40: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e75b44: adrp   x10, #0x2fde000                          
  e75b48: ldr    x8, [x19]                                
  e75b4c: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  e75b50: ldrh   w9, [x8, #0x11e]                         
  e75b54: ldr    x1, [x10]                                
  e75b58: cbz    x9, #0xe75b84                            
  e75b5c: ldr    x11, [x8, #0xb0]                         
  e75b60: mov    x10, xzr                                 
  e75b64: add    x11, x11, #8                             
  e75b68: ldur   x12, [x11, #-8]                          
  e75b6c: cmp    x12, x1                                  
  e75b70: b.eq   #0xe75b94                                
  e75b74: add    x10, x10, #1                             
  e75b78: cmp    x10, x9                                  
  e75b7c: add    x11, x11, #0x10                          
  e75b80: b.lo   #0xe75b68                                
  e75b84: mov    w2, #1                                   
  e75b88: mov    x0, x19                                  
  e75b8c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e75b90: b      #0xe75ba4                                
  e75b94: ldr    w9, [x11]                                
  e75b98: add    w9, w9, #1                               
  e75b9c: add    x8, x8, w9, uxtw #4                      
  e75ba0: add    x0, x8, #0x128                           
  e75ba4: ldp    x8, x3, [x0]                             
  e75ba8: mov    x0, x19                                  
  e75bac: mov    x1, x21                                  
  e75bb0: mov    x2, x20                                  
  e75bb4: blr    x8                                       
  e75bb8: ldp    x29, x30, [sp, #0x40]                    
  e75bbc: ldp    x20, x19, [sp, #0x30]                    
  e75bc0: ldp    x22, x21, [sp, #0x20]                    
  e75bc4: ldp    x24, x23, [sp, #0x10]                    
  e75bc8: add    sp, sp, #0x50                            
  e75bcc: ret                                             
  e75bd0: ldr    x21, [x19, #0x90]                        
  e75bd4: mov    x0, x20                                  
  e75bd8: mov    x1, xzr                                  
  e75bdc: bl     #0x1c3d22c                               ; msg.SCGeneralInfoAttIng$$get_type
  e75be0: mov    w22, w0                                  
  e75be4: mov    w24, wzr                                 
  e75be8: b      #0xe759c4                                

===== MechaData$$get_current @ 0xe70634 (296 bytes)
  e70634: stp    x24, x23, [sp, #-0x40]!                  
  e70638: stp    x22, x21, [sp, #0x10]                    
  e7063c: stp    x20, x19, [sp, #0x20]                    
  e70640: stp    x29, x30, [sp, #0x30]                    
  e70644: add    x29, sp, #0x30                           
  e70648: adrp   x20, #0x31cd000                          
  e7064c: ldrb   w8, [x20, #0x47f]                        
  e70650: mov    x19, x0                                  
  e70654: tbnz   w8, #0, #0xe70670                        
  e70658: adrp   x8, #0x2fc5000                           
  e7065c: ldr    x8, [x8, #0x10]                          
  e70660: ldr    w0, [x8]                                 
  e70664: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e70668: mov    w8, #1                                   
  e7066c: strb   w8, [x20, #0x47f]                        
  e70670: adrp   x8, #0x2fdc000                           
  e70674: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e70678: ldr    x8, [x8]                                 
  e7067c: ldr    x8, [x8, #0xb8]                          
  e70680: ldr    x0, [x8, #0xe8]                          
  e70684: cbz    x0, #0xe706a4                            
  e70688: mov    x1, x19                                  
  e7068c: ldp    x29, x30, [sp, #0x30]                    
  e70690: ldp    x20, x19, [sp, #0x20]                    
  e70694: ldp    x22, x21, [sp, #0x10]                    
  e70698: mov    x2, xzr                                  
  e7069c: ldp    x24, x23, [sp], #0x40                    
  e706a0: b      #0xcdcd14                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp480
  e706a4: adrp   x23, #0x2fc5000                          
  e706a8: adrp   x22, #0x2fe2000                          
  e706ac: ldr    x23, [x23, #0x9c8]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Count()
  e706b0: ldr    x22, [x22, #0x7e0]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Item()
  e706b4: mov    w20, wzr                                 
  e706b8: b      #0xe706fc                                
  e706bc: ldr    x21, [x19, #0x70]                        
  e706c0: ldr    x24, [x19, #0x88]                        
  e706c4: cbnz   x21, #0xe706d0                           
  e706c8: mov    x0, xzr                                  
  e706cc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e706d0: ldr    x2, [x22]                                
  e706d4: mov    x0, x21                                  
  e706d8: mov    w1, w20                                  
  e706dc: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e706e0: mov    x21, x0                                  
  e706e4: cbnz   x21, #0xe706ec                           
  e706e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e706ec: ldr    x8, [x21, #0x10]                         
  e706f0: cmp    x24, x8                                  
  e706f4: b.eq   #0xe70728                                
  e706f8: add    w20, w20, #1                             
  e706fc: ldr    x21, [x19, #0x70]                        
  e70700: cbnz   x21, #0xe7070c                           
  e70704: mov    x0, xzr                                  
  e70708: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7070c: ldr    x1, [x23]                                
  e70710: mov    x0, x21                                  
  e70714: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e70718: cmp    w20, w0                                  
  e7071c: b.lt   #0xe706bc                                
  e70720: mov    x0, xzr                                  
  e70724: b      #0xe70748                                
  e70728: ldr    x19, [x19, #0x70]                        
  e7072c: cbnz   x19, #0xe70738                           
  e70730: mov    x0, xzr                                  
  e70734: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70738: ldr    x2, [x22]                                
  e7073c: mov    x0, x19                                  
  e70740: mov    w1, w20                                  
  e70744: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e70748: ldp    x29, x30, [sp, #0x30]                    
  e7074c: ldp    x20, x19, [sp, #0x20]                    
  e70750: ldp    x22, x21, [sp, #0x10]                    
  e70754: ldp    x24, x23, [sp], #0x40                    
  e70758: ret                                             

===== MechaData$$get_currentId @ 0xe70470 (112 bytes)
  e70470: stp    x20, x19, [sp, #-0x20]!                  
  e70474: stp    x29, x30, [sp, #0x10]                    
  e70478: add    x29, sp, #0x10                           
  e7047c: adrp   x20, #0x31cd000                          
  e70480: ldrb   w8, [x20, #0x47d]                        
  e70484: mov    x19, x0                                  
  e70488: tbnz   w8, #0, #0xe704a4                        
  e7048c: adrp   x8, #0x3046000                           
  e70490: ldr    x8, [x8, #0x158]                         
  e70494: ldr    w0, [x8]                                 
  e70498: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e7049c: mov    w8, #1                                   
  e704a0: strb   w8, [x20, #0x47d]                        
  e704a4: adrp   x8, #0x2fdc000                           
  e704a8: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e704ac: ldr    x8, [x8]                                 
  e704b0: ldr    x8, [x8, #0xb8]                          
  e704b4: ldr    x0, [x8, #0xd8]                          
  e704b8: cbz    x0, #0xe704d0                            
  e704bc: ldp    x29, x30, [sp, #0x10]                    
  e704c0: mov    x1, x19                                  
  e704c4: mov    x2, xzr                                  
  e704c8: ldp    x20, x19, [sp], #0x20                    
  e704cc: b      #0xca9f40                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp128
  e704d0: ldr    x0, [x19, #0x88]                         
  e704d4: ldp    x29, x30, [sp, #0x10]                    
  e704d8: ldp    x20, x19, [sp], #0x20                    
  e704dc: ret                                             

===== MechaData$$set_current @ 0xe7075c (168 bytes)
  e7075c: str    x21, [sp, #-0x30]!                       
  e70760: stp    x20, x19, [sp, #0x10]                    
  e70764: stp    x29, x30, [sp, #0x20]                    
  e70768: add    x29, sp, #0x20                           
  e7076c: adrp   x21, #0x31cd000                          
  e70770: ldrb   w8, [x21, #0x480]                        
  e70774: mov    x20, x1                                  
  e70778: mov    x19, x0                                  
  e7077c: tbnz   w8, #0, #0xe70798                        
  e70780: adrp   x8, #0x3033000                           
  e70784: ldr    x8, [x8, #0xd10]                         
  e70788: ldr    w0, [x8]                                 
  e7078c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e70790: mov    w8, #1                                   
  e70794: strb   w8, [x21, #0x480]                        
  e70798: adrp   x8, #0x2fdc000                           
  e7079c: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e707a0: ldr    x8, [x8]                                 
  e707a4: ldr    x8, [x8, #0xb8]                          
  e707a8: ldr    x0, [x8, #0xf0]                          
  e707ac: cbz    x0, #0xe707cc                            
  e707b0: mov    x1, x19                                  
  e707b4: mov    x2, x20                                  
  e707b8: ldp    x29, x30, [sp, #0x20]                    
  e707bc: ldp    x20, x19, [sp, #0x10]                    
  e707c0: mov    x3, xzr                                  
  e707c4: ldr    x21, [sp], #0x30                         
  e707c8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e707cc: mov    x0, x19                                  
  e707d0: mov    x1, x20                                  
  e707d4: bl     #0xe7075c                                ; MechaData$$set_current
  e707d8: mov    x0, x19                                  
  e707dc: bl     #0xe70634                                ; MechaData$$get_current
  e707e0: mov    x20, x0                                  
  e707e4: cbnz   x20, #0xe707ec                           
  e707e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e707ec: ldr    x1, [x20, #0x10]                         
  e707f0: mov    x0, x19                                  
  e707f4: ldp    x29, x30, [sp, #0x20]                    
  e707f8: ldp    x20, x19, [sp, #0x10]                    
  e707fc: ldr    x21, [sp], #0x30                         
  e70800: b      #0xe704e0                                ; MechaData$$set_currentId

===== MechaData$$set_currentId @ 0xe704e0 (340 bytes)
  e704e0: str    x25, [sp, #-0x50]!                       
  e704e4: stp    x24, x23, [sp, #0x10]                    
  e704e8: stp    x22, x21, [sp, #0x20]                    
  e704ec: stp    x20, x19, [sp, #0x30]                    
  e704f0: stp    x29, x30, [sp, #0x40]                    
  e704f4: add    x29, sp, #0x40                           
  e704f8: adrp   x20, #0x31cd000                          
  e704fc: ldrb   w8, [x20, #0x47e]                        
  e70500: mov    x21, x1                                  
  e70504: mov    x19, x0                                  
  e70508: tbnz   w8, #0, #0xe70524                        
  e7050c: adrp   x8, #0x3051000                           
  e70510: ldr    x8, [x8, #0xc20]                         
  e70514: ldr    w0, [x8]                                 
  e70518: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e7051c: mov    w8, #1                                   
  e70520: strb   w8, [x20, #0x47e]                        
  e70524: adrp   x8, #0x2fdc000                           
  e70528: ldr    x8, [x8, #0x5c0]                         ; META MechaData_TypeInfo
  e7052c: ldr    x8, [x8]                                 
  e70530: ldr    x8, [x8, #0xb8]                          
  e70534: ldr    x0, [x8, #0xe0]                          
  e70538: cbz    x0, #0xe70560                            
  e7053c: mov    x1, x19                                  
  e70540: mov    x2, x21                                  
  e70544: ldp    x29, x30, [sp, #0x40]                    
  e70548: ldp    x20, x19, [sp, #0x30]                    
  e7054c: ldp    x22, x21, [sp, #0x20]                    
  e70550: ldp    x24, x23, [sp, #0x10]                    
  e70554: mov    x3, xzr                                  
  e70558: ldr    x25, [sp], #0x50                         
  e7055c: b      #0xcb2f30                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp191
  e70560: str    x21, [x19, #0x88]                        
  e70564: adrp   x24, #0x2fc5000                          
  e70568: adrp   x25, #0x2fe2000                          
  e7056c: ldr    x24, [x24, #0x9c8]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Count()
  e70570: ldr    x25, [x25, #0x7e0]                       ; MMETH Method$System.Collections.Generic.List<MechaVO>.get_Item()
  e70574: mov    w20, wzr                                 
  e70578: b      #0xe705f8                                
  e7057c: ldr    x21, [x19, #0x70]                        
  e70580: cbnz   x21, #0xe7058c                           
  e70584: mov    x0, xzr                                  
  e70588: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e7058c: ldr    x2, [x25]                                
  e70590: mov    x0, x21                                  
  e70594: mov    w1, w20                                  
  e70598: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e7059c: mov    x21, x0                                  
  e705a0: mov    x0, x19                                  
  e705a4: bl     #0xe70470                                ; MechaData$$get_currentId
  e705a8: ldr    x23, [x19, #0x70]                        
  e705ac: mov    x22, x0                                  
  e705b0: cbnz   x23, #0xe705bc                           
  e705b4: mov    x0, xzr                                  
  e705b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e705bc: ldr    x2, [x25]                                
  e705c0: mov    x0, x23                                  
  e705c4: mov    w1, w20                                  
  e705c8: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  e705cc: mov    x23, x0                                  
  e705d0: cbnz   x23, #0xe705d8                           
  e705d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e705d8: ldr    x23, [x23, #0x10]                        
  e705dc: cbnz   x21, #0xe705e8                           
  e705e0: mov    x0, xzr                                  
  e705e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e705e8: cmp    x22, x23                                 
  e705ec: cset   w8, eq                                   
  e705f0: add    w20, w20, #1                             
  e705f4: strb   w8, [x21, #0x40]                         
  e705f8: ldr    x21, [x19, #0x70]                        
  e705fc: cbnz   x21, #0xe70608                           
  e70600: mov    x0, xzr                                  
  e70604: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e70608: ldr    x1, [x24]                                
  e7060c: mov    x0, x21                                  
  e70610: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  e70614: cmp    w20, w0                                  
  e70618: b.lt   #0xe7057c                                
  e7061c: ldp    x29, x30, [sp, #0x40]                    
  e70620: ldp    x20, x19, [sp, #0x30]                    
  e70624: ldp    x22, x21, [sp, #0x20]                    
  e70628: ldp    x24, x23, [sp, #0x10]                    
  e7062c: ldr    x25, [sp], #0x50                         
  e70630: ret                                             
