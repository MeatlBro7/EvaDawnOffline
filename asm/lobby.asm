
===== LobbyMediator$$InitUnlockedMod @ 0xd2d754 (332 bytes)
  d2d754: str    x21, [sp, #-0x30]!                       
  d2d758: stp    x20, x19, [sp, #0x10]                    
  d2d75c: stp    x29, x30, [sp, #0x20]                    
  d2d760: add    x29, sp, #0x20                           
  d2d764: adrp   x21, #0x31cc000                          
  d2d768: ldrb   w8, [x21, #0x94f]                        
  d2d76c: mov    x20, x1                                  
  d2d770: mov    x19, x0                                  
  d2d774: tbnz   w8, #0, #0xd2d790                        
  d2d778: adrp   x8, #0x306e000                           
  d2d77c: ldr    x8, [x8, #0xd78]                         
  d2d780: ldr    w0, [x8]                                 
  d2d784: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d2d788: mov    w8, #1                                   
  d2d78c: strb   w8, [x21, #0x94f]                        
  d2d790: adrp   x8, #0x2ff3000                           
  d2d794: ldr    x8, [x8, #0x9f8]                         ; META LobbyMediator_TypeInfo
  d2d798: ldr    x8, [x8]                                 
  d2d79c: ldr    x8, [x8, #0xb8]                          
  d2d7a0: ldr    x0, [x8, #0xf0]                          
  d2d7a4: cbz    x0, #0xd2d7c4                            
  d2d7a8: mov    x1, x19                                  
  d2d7ac: mov    x2, x20                                  
  d2d7b0: ldp    x29, x30, [sp, #0x20]                    
  d2d7b4: ldp    x20, x19, [sp, #0x10]                    
  d2d7b8: mov    x3, xzr                                  
  d2d7bc: ldr    x21, [sp], #0x30                         
  d2d7c0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d2d7c4: mov    x0, x19                                  
  d2d7c8: bl     #0xd29b20                                ; LobbyMediator$$get_view
  d2d7cc: mov    x21, x0                                  
  d2d7d0: cbnz   x20, #0xd2d7dc                           
  d2d7d4: mov    x0, xzr                                  
  d2d7d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2d7dc: adrp   x10, #0x2ff0000                          
  d2d7e0: ldr    x8, [x20]                                
  d2d7e4: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  d2d7e8: ldrh   w9, [x8, #0x11e]                         
  d2d7ec: ldr    x1, [x10]                                
  d2d7f0: cbz    x9, #0xd2d81c                            
  d2d7f4: ldr    x11, [x8, #0xb0]                         
  d2d7f8: mov    x10, xzr                                 
  d2d7fc: add    x11, x11, #8                             
  d2d800: ldur   x12, [x11, #-8]                          
  d2d804: cmp    x12, x1                                  
  d2d808: b.eq   #0xd2d82c                                
  d2d80c: add    x10, x10, #1                             
  d2d810: cmp    x10, x9                                  
  d2d814: add    x11, x11, #0x10                          
  d2d818: b.lo   #0xd2d800                                
  d2d81c: mov    w2, #4                                   
  d2d820: mov    x0, x20                                  
  d2d824: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  d2d828: b      #0xd2d83c                                
  d2d82c: ldr    w9, [x11]                                
  d2d830: add    w9, w9, #4                               
  d2d834: add    x8, x8, w9, uxtw #4                      
  d2d838: add    x0, x8, #0x128                           
  d2d83c: ldp    x8, x1, [x0]                             
  d2d840: mov    x0, x20                                  
  d2d844: blr    x8                                       
  d2d848: mov    x20, x0                                  
  d2d84c: cbnz   x21, #0xd2d858                           
  d2d850: mov    x0, xzr                                  
  d2d854: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2d858: adrp   x8, #0x300b000                           
  d2d85c: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
  d2d860: mov    x0, x20                                  
  d2d864: ldr    x1, [x8]                                 
  d2d868: bl     #0xba7ff8                                ; ? near KCP.Segment$$encode+0x8
  d2d86c: ldr    w1, [x0]                                 
  d2d870: mov    x0, x21                                  
  d2d874: bl     #0xd2d8a0                                ; LobbyView$$SetModWillOpen
  d2d878: mov    x0, x19                                  
  d2d87c: bl     #0xd29b20                                ; LobbyMediator$$get_view
  d2d880: mov    x19, x0                                  
  d2d884: cbnz   x19, #0xd2d88c                           
  d2d888: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2d88c: mov    x0, x19                                  
  d2d890: ldp    x29, x30, [sp, #0x20]                    
  d2d894: ldp    x20, x19, [sp, #0x10]                    
  d2d898: ldr    x21, [sp], #0x30                         
  d2d89c: b      #0xd2dc20                                ; LobbyView$$InitModButton

===== LobbyMediator$$UnlockMod @ 0xd2dd48 (196 bytes)
  d2dd48: str    x21, [sp, #-0x30]!                       
  d2dd4c: stp    x20, x19, [sp, #0x10]                    
  d2dd50: stp    x29, x30, [sp, #0x20]                    
  d2dd54: add    x29, sp, #0x20                           
  d2dd58: adrp   x21, #0x31cc000                          
  d2dd5c: ldrb   w8, [x21, #0x950]                        
  d2dd60: mov    x19, x1                                  
  d2dd64: mov    x20, x0                                  
  d2dd68: tbnz   w8, #0, #0xd2dd84                        
  d2dd6c: adrp   x8, #0x3054000                           
  d2dd70: ldr    x8, [x8, #0xa60]                         
  d2dd74: ldr    w0, [x8]                                 
  d2dd78: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d2dd7c: mov    w8, #1                                   
  d2dd80: strb   w8, [x21, #0x950]                        
  d2dd84: adrp   x8, #0x2ff3000                           
  d2dd88: ldr    x8, [x8, #0x9f8]                         ; META LobbyMediator_TypeInfo
  d2dd8c: ldr    x8, [x8]                                 
  d2dd90: ldr    x8, [x8, #0xb8]                          
  d2dd94: ldr    x0, [x8, #0xf8]                          
  d2dd98: cbz    x0, #0xd2ddb8                            
  d2dd9c: mov    x1, x20                                  
  d2dda0: mov    x2, x19                                  
  d2dda4: ldp    x29, x30, [sp, #0x20]                    
  d2dda8: ldp    x20, x19, [sp, #0x10]                    
  d2ddac: mov    x3, xzr                                  
  d2ddb0: ldr    x21, [sp], #0x30                         
  d2ddb4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d2ddb8: mov    x0, x20                                  
  d2ddbc: mov    x1, xzr                                  
  d2ddc0: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  d2ddc4: adrp   x8, #0x3061000                           
  d2ddc8: ldr    x8, [x8, #0x6c8]                         ; META GuideTrigger_TypeInfo
  d2ddcc: mov    x19, x0                                  
  d2ddd0: add    x1, sp, #0xc                             
  d2ddd4: ldr    x0, [x8]                                 
  d2ddd8: mov    w8, #0x63                                
  d2dddc: str    w8, [sp, #0xc]                           
  d2dde0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  d2dde4: adrp   x8, #0x2fe9000                           
  d2dde8: ldr    x8, [x8, #0x2e0]                         ; MMETH Method$EventDispatcherExtension.Open<GuideView>()
  d2ddec: mov    x1, x0                                   
  d2ddf0: mov    x0, x19                                  
  d2ddf4: ldr    x2, [x8]                                 
  d2ddf8: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  d2ddfc: ldp    x29, x30, [sp, #0x20]                    
  d2de00: ldp    x20, x19, [sp, #0x10]                    
  d2de04: ldr    x21, [sp], #0x30                         
  d2de08: ret                                             

===== LobbyView$$InitModButton @ 0xd2dc20 (296 bytes)
  d2dc20: str    x23, [sp, #-0x40]!                       
  d2dc24: stp    x22, x21, [sp, #0x10]                    
  d2dc28: stp    x20, x19, [sp, #0x20]                    
  d2dc2c: stp    x29, x30, [sp, #0x30]                    
  d2dc30: add    x29, sp, #0x30                           
  d2dc34: adrp   x20, #0x31cc000                          
  d2dc38: ldrb   w8, [x20, #0x9f3]                        
  d2dc3c: mov    x19, x0                                  
  d2dc40: tbnz   w8, #0, #0xd2dc5c                        
  d2dc44: adrp   x8, #0x3077000                           
  d2dc48: ldr    x8, [x8, #0xf48]                         
  d2dc4c: ldr    w0, [x8]                                 
  d2dc50: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d2dc54: mov    w8, #1                                   
  d2dc58: strb   w8, [x20, #0x9f3]                        
  d2dc5c: adrp   x8, #0x305e000                           
  d2dc60: ldr    x8, [x8, #0xb30]                         ; META LobbyView_TypeInfo
  d2dc64: ldr    x8, [x8]                                 
  d2dc68: ldr    x8, [x8, #0xb8]                          
  d2dc6c: ldr    x0, [x8, #0x2a0]                         
  d2dc70: cbz    x0, #0xd2dc90                            
  d2dc74: mov    x1, x19                                  
  d2dc78: ldp    x29, x30, [sp, #0x30]                    
  d2dc7c: ldp    x20, x19, [sp, #0x20]                    
  d2dc80: ldp    x22, x21, [sp, #0x10]                    
  d2dc84: mov    x2, xzr                                  
  d2dc88: ldr    x23, [sp], #0x40                         
  d2dc8c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  d2dc90: adrp   x22, #0x2fd6000                          
  d2dc94: adrp   x23, #0x300d000                          
  d2dc98: ldr    x22, [x22, #0x3b8]                       ; MMETH Method$System.Collections.Generic.List<int>.get_Count()
  d2dc9c: ldr    x23, [x23, #0xf58]                       ; MMETH Method$System.Collections.Generic.List<int>.get_Item()
  d2dca0: mov    w20, wzr                                 
  d2dca4: b      #0xd2dcf4                                
  d2dca8: mov    x0, x19                                  
  d2dcac: bl     #0xd3524c                                ; LobbyView$$get_guideData
  d2dcb0: mov    x21, x0                                  
  d2dcb4: cbnz   x21, #0xd2dcbc                           
  d2dcb8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2dcbc: mov    x0, x21                                  
  d2dcc0: mov    x1, xzr                                  
  d2dcc4: bl     #0xf5ee38                                ; GuideData$$get_lstModUnlocked
  d2dcc8: mov    x21, x0                                  
  d2dccc: cbnz   x21, #0xd2dcd4                           
  d2dcd0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2dcd4: ldr    x2, [x23]                                
  d2dcd8: mov    x0, x21                                  
  d2dcdc: mov    w1, w20                                  
  d2dce0: bl     #0x220af7c                               ; System.Collections.Generic.List<int>$$get_Item
  d2dce4: mov    w1, w0                                   
  d2dce8: mov    x0, x19                                  
  d2dcec: bl     #0xd2df3c                                ; LobbyView$$ShowModButton
  d2dcf0: add    w20, w20, #1                             
  d2dcf4: mov    x0, x19                                  
  d2dcf8: bl     #0xd3524c                                ; LobbyView$$get_guideData
  d2dcfc: mov    x21, x0                                  
  d2dd00: cbnz   x21, #0xd2dd08                           
  d2dd04: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2dd08: mov    x0, x21                                  
  d2dd0c: mov    x1, xzr                                  
  d2dd10: bl     #0xf5ee38                                ; GuideData$$get_lstModUnlocked
  d2dd14: mov    x21, x0                                  
  d2dd18: cbnz   x21, #0xd2dd20                           
  d2dd1c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2dd20: ldr    x1, [x22]                                
  d2dd24: mov    x0, x21                                  
  d2dd28: bl     #0x220aedc                               ; System.Collections.Generic.List<int>$$get_Count
  d2dd2c: cmp    w20, w0                                  
  d2dd30: b.lt   #0xd2dca8                                
  d2dd34: ldp    x29, x30, [sp, #0x30]                    
  d2dd38: ldp    x20, x19, [sp, #0x20]                    
  d2dd3c: ldp    x22, x21, [sp, #0x10]                    
  d2dd40: ldr    x23, [sp], #0x40                         
  d2dd44: ret                                             

===== LobbyView$$ShowModButton @ 0xd2df3c (396 bytes)
  d2df3c: str    x21, [sp, #-0x30]!                       
  d2df40: stp    x20, x19, [sp, #0x10]                    
  d2df44: stp    x29, x30, [sp, #0x20]                    
  d2df48: add    x29, sp, #0x20                           
  d2df4c: adrp   x21, #0x31cc000                          
  d2df50: ldrb   w8, [x21, #0x9f4]                        
  d2df54: mov    w20, w1                                  
  d2df58: mov    x19, x0                                  
  d2df5c: tbnz   w8, #0, #0xd2df78                        
  d2df60: adrp   x8, #0x3040000                           
  d2df64: ldr    x8, [x8, #0x60]                          
  d2df68: ldr    w0, [x8]                                 
  d2df6c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d2df70: mov    w8, #1                                   
  d2df74: strb   w8, [x21, #0x9f4]                        
  d2df78: adrp   x8, #0x305e000                           
  d2df7c: ldr    x8, [x8, #0xb30]                         ; META LobbyView_TypeInfo
  d2df80: ldr    x8, [x8]                                 
  d2df84: ldr    x8, [x8, #0xb8]                          
  d2df88: ldr    x0, [x8, #0x2a8]                         
  d2df8c: cbz    x0, #0xd2dfac                            
  d2df90: mov    x1, x19                                  
  d2df94: mov    w2, w20                                  
  d2df98: ldp    x29, x30, [sp, #0x20]                    
  d2df9c: ldp    x20, x19, [sp, #0x10]                    
  d2dfa0: mov    x3, xzr                                  
  d2dfa4: ldr    x21, [sp], #0x30                         
  d2dfa8: b      #0xca66e8                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp103
  d2dfac: adrp   x8, #0x300b000                           
  d2dfb0: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
  d2dfb4: add    x1, sp, #0xc                             
  d2dfb8: str    w20, [sp, #0xc]                          
  d2dfbc: ldr    x0, [x8]                                 
  d2dfc0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  d2dfc4: adrp   x8, #0x305f000                           
  d2dfc8: ldr    x8, [x8, #0xc00]                         ; META ConfModUnlock_TypeInfo
  d2dfcc: mov    x20, x0                                  
  d2dfd0: ldr    x8, [x8]                                 
  d2dfd4: ldrb   w9, [x8, #0x127]                         
  d2dfd8: tbz    w9, #1, #0xd2dfec                        
  d2dfdc: ldr    w9, [x8, #0xd8]                          
  d2dfe0: cbnz   w9, #0xd2dfec                            
  d2dfe4: mov    x0, x8                                   
  d2dfe8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d2dfec: adrp   x8, #0x303f000                           
  d2dff0: ldr    x8, [x8, #0x730]                         ; STR "sn"
  d2dff4: mov    x1, x20                                  
  d2dff8: mov    x2, xzr                                  
  d2dffc: ldr    x0, [x8]                                 
  d2e000: bl     #0x165b120                               ; ConfModUnlock$$Get
  d2e004: mov    x20, x0                                  
  d2e008: cbz    x20, #0xd2e0b8                           
  d2e00c: mov    x0, x19                                  
  d2e010: mov    x1, xzr                                  
  d2e014: bl     #0x1e75104                               ; UnityEngine.Component$$get_transform
  d2e018: mov    x19, x0                                  
  d2e01c: mov    x0, x20                                  
  d2e020: mov    x1, xzr                                  
  d2e024: bl     #0x165a7b4                               ; ConfModUnlock$$get_buttonPath
  d2e028: mov    x20, x0                                  
  d2e02c: cbnz   x19, #0xd2e038                           
  d2e030: mov    x0, xzr                                  
  d2e034: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2e038: mov    x0, x19                                  
  d2e03c: mov    x1, x20                                  
  d2e040: mov    x2, xzr                                  
  d2e044: bl     #0x1c684a0                               ; UnityEngine.Transform$$Find
  d2e048: adrp   x8, #0x2fcb000                           
  d2e04c: ldr    x8, [x8, #0x9e8]                         ; META UnityEngine.Object_TypeInfo
  d2e050: mov    x19, x0                                  
  d2e054: ldr    x8, [x8]                                 
  d2e058: ldrb   w9, [x8, #0x127]                         
  d2e05c: tbz    w9, #1, #0xd2e070                        
  d2e060: ldr    w9, [x8, #0xd8]                          
  d2e064: cbnz   w9, #0xd2e070                            
  d2e068: mov    x0, x8                                   
  d2e06c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d2e070: mov    x0, x19                                  
  d2e074: mov    x1, xzr                                  
  d2e078: mov    x2, xzr                                  
  d2e07c: bl     #0x1be4cc8                               ; UnityEngine.Object$$op_Inequality
  d2e080: tbz    w0, #0, #0xd2e0b8                        
  d2e084: cbnz   x19, #0xd2e090                           
  d2e088: mov    x0, xzr                                  
  d2e08c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2e090: mov    x0, x19                                  
  d2e094: mov    x1, xzr                                  
  d2e098: bl     #0x1e75170                               ; UnityEngine.Component$$get_gameObject
  d2e09c: mov    x19, x0                                  
  d2e0a0: cbnz   x19, #0xd2e0a8                           
  d2e0a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d2e0a8: mov    w1, #1                                   
  d2e0ac: mov    x0, x19                                  
  d2e0b0: mov    x2, xzr                                  
  d2e0b4: bl     #0x1bd6548                               ; UnityEngine.GameObject$$SetActive
  d2e0b8: ldp    x29, x30, [sp, #0x20]                    
  d2e0bc: ldp    x20, x19, [sp, #0x10]                    
  d2e0c0: ldr    x21, [sp], #0x30                         
  d2e0c4: ret                                             
