
===== GuideData$$OnSCAllGuideInfo @ 0xf60880 (616 bytes)
  f60880: str    x27, [sp, #-0x60]!                       
  f60884: stp    x26, x25, [sp, #0x10]                    
  f60888: stp    x24, x23, [sp, #0x20]                    
  f6088c: stp    x22, x21, [sp, #0x30]                    
  f60890: stp    x20, x19, [sp, #0x40]                    
  f60894: stp    x29, x30, [sp, #0x50]                    
  f60898: add    x29, sp, #0x50                           
  f6089c: adrp   x21, #0x31cd000                          
  f608a0: ldrb   w8, [x21, #0xd2b]                        
  f608a4: mov    x20, x1                                  
  f608a8: mov    x19, x0                                  
  f608ac: tbnz   w8, #0, #0xf608c8                        
  f608b0: adrp   x8, #0x301d000                           
  f608b4: ldr    x8, [x8, #0x9f0]                         
  f608b8: ldr    w0, [x8]                                 
  f608bc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f608c0: mov    w8, #1                                   
  f608c4: strb   w8, [x21, #0xd2b]                        
  f608c8: adrp   x8, #0x3059000                           
  f608cc: ldr    x8, [x8, #0x838]                         ; META GuideData_TypeInfo
  f608d0: ldr    x8, [x8]                                 
  f608d4: ldr    x8, [x8, #0xb8]                          
  f608d8: ldr    x0, [x8, #0xd8]                          
  f608dc: cbz    x0, #0xf60908                            
  f608e0: mov    x1, x19                                  
  f608e4: mov    x2, x20                                  
  f608e8: ldp    x29, x30, [sp, #0x50]                    
  f608ec: ldp    x20, x19, [sp, #0x40]                    
  f608f0: ldp    x22, x21, [sp, #0x30]                    
  f608f4: ldp    x24, x23, [sp, #0x20]                    
  f608f8: ldp    x26, x25, [sp, #0x10]                    
  f608fc: mov    x3, xzr                                  
  f60900: ldr    x27, [sp], #0x60                         
  f60904: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  f60908: cbnz   x20, #0xf60914                           
  f6090c: mov    x0, xzr                                  
  f60910: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60914: adrp   x10, #0x2ff0000                          
  f60918: ldr    x8, [x20]                                
  f6091c: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  f60920: ldrh   w9, [x8, #0x11e]                         
  f60924: ldr    x1, [x10]                                
  f60928: cbz    x9, #0xf60954                            
  f6092c: ldr    x11, [x8, #0xb0]                         
  f60930: mov    x10, xzr                                 
  f60934: add    x11, x11, #8                             
  f60938: ldur   x12, [x11, #-8]                          
  f6093c: cmp    x12, x1                                  
  f60940: b.eq   #0xf60964                                
  f60944: add    x10, x10, #1                             
  f60948: cmp    x10, x9                                  
  f6094c: add    x11, x11, #0x10                          
  f60950: b.lo   #0xf60938                                
  f60954: mov    w2, #4                                   
  f60958: mov    x0, x20                                  
  f6095c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f60960: b      #0xf60974                                
  f60964: ldr    w9, [x11]                                
  f60968: add    w9, w9, #4                               
  f6096c: add    x8, x8, w9, uxtw #4                      
  f60970: add    x0, x8, #0x128                           
  f60974: ldp    x8, x1, [x0]                             
  f60978: mov    x0, x20                                  
  f6097c: blr    x8                                       
  f60980: mov    x20, x0                                  
  f60984: cbz    x20, #0xf609bc                           
  f60988: adrp   x8, #0x2fec000                           
  f6098c: ldr    x8, [x8, #0x708]                         ; META msg.SCAllGuideInfo_TypeInfo
  f60990: ldr    x9, [x20]                                
  f60994: ldr    x8, [x8]                                 
  f60998: ldrb   w11, [x9, #0x120]                        
  f6099c: ldrb   w10, [x8, #0x120]                        
  f609a0: cmp    w11, w10                                 
  f609a4: b.lo   #0xf609bc                                
  f609a8: ldr    x9, [x9, #0xc8]                          
  f609ac: add    x9, x9, x10, lsl #3                      
  f609b0: ldur   x9, [x9, #-8]                            
  f609b4: cmp    x9, x8                                   
  f609b8: b.eq   #0xf60ae0                                
  f609bc: mov    x0, xzr                                  
  f609c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f609c4: mov    x20, xzr                                 
  f609c8: mov    w24, #1                                  
  f609cc: mov    x0, x20                                  
  f609d0: mov    x1, xzr                                  
  f609d4: bl     #0x1d8aa38                               ; msg.SCAllGuideInfo$$get_flagSpecified
  f609d8: tbz    w0, #0, #0xf60a00                        
  f609dc: cbz    w24, #0xf609e8                           
  f609e0: mov    x0, xzr                                  
  f609e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f609e8: mov    x0, x20                                  
  f609ec: mov    x1, xzr                                  
  f609f0: bl     #0x1d8aa88                               ; msg.SCAllGuideInfo$$get_flag
  f609f4: and    w1, w0, #1                               
  f609f8: mov    x0, x19                                  
  f609fc: bl     #0xf5f010                                ; GuideData$$set_isGuideEnabled
  f60a00: adrp   x25, #0x2fd6000                          
  f60a04: adrp   x26, #0x300d000                          
  f60a08: adrp   x27, #0x3023000                          
  f60a0c: ldr    x25, [x25, #0x3b8]                       ; MMETH Method$System.Collections.Generic.List<int>.get_Count()
  f60a10: ldr    x26, [x26, #0xf58]                       ; MMETH Method$System.Collections.Generic.List<int>.get_Item()
  f60a14: ldr    x27, [x27, #0xdb0]                       ; MMETH Method$System.Collections.Generic.HashSet<int>.Add()
  f60a18: mov    w21, wzr                                 
  f60a1c: b      #0xf60a84                                
  f60a20: mov    x0, x19                                  
  f60a24: bl     #0xf5f098                                ; GuideData$$get_finishedGuide
  f60a28: mov    x22, x0                                  
  f60a2c: cbz    w24, #0xf60a38                           
  f60a30: mov    x0, xzr                                  
  f60a34: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60a38: mov    x0, x20                                  
  f60a3c: mov    x1, xzr                                  
  f60a40: bl     #0x1d8ab10                               ; msg.SCAllGuideInfo$$get_sn
  f60a44: mov    x23, x0                                  
  f60a48: cbnz   x23, #0xf60a50                           
  f60a4c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60a50: ldr    x2, [x26]                                
  f60a54: mov    x0, x23                                  
  f60a58: mov    w1, w21                                  
  f60a5c: bl     #0x220af7c                               ; System.Collections.Generic.List<int>$$get_Item
  f60a60: mov    w23, w0                                  
  f60a64: cbnz   x22, #0xf60a70                           
  f60a68: mov    x0, xzr                                  
  f60a6c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60a70: ldr    x2, [x27]                                
  f60a74: mov    x0, x22                                  
  f60a78: mov    w1, w23                                  
  f60a7c: bl     #0x1ef8be0                               ; System.Collections.Generic.HashSet<int>$$Add
  f60a80: add    w21, w21, #1                             
  f60a84: cbz    w24, #0xf60a90                           
  f60a88: mov    x0, xzr                                  
  f60a8c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60a90: mov    x0, x20                                  
  f60a94: mov    x1, xzr                                  
  f60a98: bl     #0x1d8ab10                               ; msg.SCAllGuideInfo$$get_sn
  f60a9c: mov    x22, x0                                  
  f60aa0: cbnz   x22, #0xf60aa8                           
  f60aa4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f60aa8: ldr    x1, [x25]                                
  f60aac: mov    x0, x22                                  
  f60ab0: bl     #0x220aedc                               ; System.Collections.Generic.List<int>$$get_Count
  f60ab4: cmp    w21, w0                                  
  f60ab8: b.ne   #0xf60a20                                
  f60abc: mov    x0, x19                                  
  f60ac0: ldp    x29, x30, [sp, #0x50]                    
  f60ac4: ldp    x20, x19, [sp, #0x40]                    
  f60ac8: ldp    x22, x21, [sp, #0x30]                    
  f60acc: ldp    x24, x23, [sp, #0x20]                    
  f60ad0: ldp    x26, x25, [sp, #0x10]                    
  f60ad4: mov    w1, #1                                   
  f60ad8: ldr    x27, [sp], #0x60                         
  f60adc: b      #0xf5ef18                                ; GuideData$$set_initialized
  f60ae0: mov    w24, wzr                                 
  f60ae4: b      #0xf609cc                                

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
