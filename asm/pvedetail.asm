
===== PveDetailMediator$$.ctor @ 0x13df35c (120 bytes)
 13df35c: stp    x20, x19, [sp, #-0x20]!                  
 13df360: stp    x29, x30, [sp, #0x10]                    
 13df364: add    x29, sp, #0x10                           
 13df368: adrp   x20, #0x31d0000                          
 13df36c: ldrb   w8, [x20, #0x49a]                        
 13df370: mov    x19, x0                                  
 13df374: tbnz   w8, #0, #0x13df390                       
 13df378: adrp   x8, #0x2fd3000                           
 13df37c: ldr    x8, [x8, #0x818]                         
 13df380: ldr    w0, [x8]                                 
 13df384: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13df388: mov    w8, #1                                   
 13df38c: strb   w8, [x20, #0x49a]                        
 13df390: mov    x0, x19                                  
 13df394: mov    x1, xzr                                  
 13df398: bl     #0x17da330                               ; strange.extensions.mediation.impl.EventMediator$$.ctor
 13df39c: adrp   x8, #0x302a000                           
 13df3a0: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13df3a4: ldr    x8, [x8]                                 
 13df3a8: ldr    x8, [x8, #0xb8]                          
 13df3ac: ldr    x0, [x8, #0x78]                          
 13df3b0: cbz    x0, #0x13df3c8                           
 13df3b4: ldp    x29, x30, [sp, #0x10]                    
 13df3b8: mov    x1, x19                                  
 13df3bc: mov    x2, xzr                                  
 13df3c0: ldp    x20, x19, [sp], #0x20                    
 13df3c4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
 13df3c8: ldp    x29, x30, [sp, #0x10]                    
 13df3cc: ldp    x20, x19, [sp], #0x20                    
 13df3d0: ret                                             

===== PveDetailMediator$$<>xLuaBaseProxy_OnRegister @ 0x13df3d4 (8 bytes)
 13df3d4: mov    x1, xzr                                  
 13df3d8: b      #0x17dbb2c                               ; strange.extensions.mediation.impl.Mediator$$OnRegister

===== PveDetailMediator$$<>xLuaBaseProxy_OnRemove @ 0x13df3dc (8 bytes)
 13df3dc: mov    x1, xzr                                  
 13df3e0: b      #0x17dbb98                               ; strange.extensions.mediation.impl.Mediator$$OnRemove

===== PveDetailMediator$$OnRegister @ 0x13de5f0 (840 bytes)
 13de5f0: sub    sp, sp, #0x60                            
 13de5f4: str    x25, [sp, #0x10]                         
 13de5f8: stp    x24, x23, [sp, #0x20]                    
 13de5fc: stp    x22, x21, [sp, #0x30]                    
 13de600: stp    x20, x19, [sp, #0x40]                    
 13de604: stp    x29, x30, [sp, #0x50]                    
 13de608: add    x29, sp, #0x50                           
 13de60c: adrp   x20, #0x31d0000                          
 13de610: ldrb   w8, [x20, #0x495]                        
 13de614: mov    x19, x0                                  
 13de618: tbnz   w8, #0, #0x13de634                       
 13de61c: adrp   x8, #0x3079000                           
 13de620: ldr    x8, [x8, #0x4d8]                         
 13de624: ldr    w0, [x8]                                 
 13de628: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de62c: mov    w8, #1                                   
 13de630: strb   w8, [x20, #0x495]                        
 13de634: adrp   x8, #0x302a000                           
 13de638: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de63c: ldr    x8, [x8]                                 
 13de640: ldr    x8, [x8, #0xb8]                          
 13de644: ldr    x0, [x8, #0x50]                          
 13de648: cbz    x0, #0x13de670                           
 13de64c: mov    x1, x19                                  
 13de650: ldp    x29, x30, [sp, #0x50]                    
 13de654: ldp    x20, x19, [sp, #0x40]                    
 13de658: ldp    x22, x21, [sp, #0x30]                    
 13de65c: ldp    x24, x23, [sp, #0x20]                    
 13de660: ldr    x25, [sp, #0x10]                         
 13de664: mov    x2, xzr                                  
 13de668: add    sp, sp, #0x60                            
 13de66c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
 13de670: mov    x0, x19                                  
 13de674: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13de678: mov    x20, x0                                  
 13de67c: cbnz   x20, #0x13de684                          
 13de680: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de684: mov    x0, x20                                  
 13de688: mov    x1, xzr                                  
 13de68c: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13de690: adrp   x23, #0x3042000                          
 13de694: ldr    x23, [x23, #0x408]                       ; META PveEvent_TypeInfo
 13de698: mov    x20, x0                                  
 13de69c: mov    w8, #2                                   
 13de6a0: add    x1, sp, #0x1c                            
 13de6a4: ldr    x0, [x23]                                
 13de6a8: str    w8, [sp, #0x1c]                          
 13de6ac: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13de6b0: adrp   x24, #0x302a000                          
 13de6b4: ldr    x24, [x24, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
 13de6b8: mov    x21, x0                                  
 13de6bc: ldr    x8, [x24]                                
 13de6c0: mov    x0, x8                                   
 13de6c4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13de6c8: adrp   x8, #0x2fd9000                           
 13de6cc: ldr    x8, [x8, #0x9a0]                         ; MMETH Method$PveDetailMediator.ShowLevelDetail()
 13de6d0: mov    x1, x19                                  
 13de6d4: mov    x3, xzr                                  
 13de6d8: mov    x22, x0                                  
 13de6dc: ldr    x2, [x8]                                 
 13de6e0: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13de6e4: cbnz   x20, #0x13de6f0                          
 13de6e8: mov    x0, xzr                                  
 13de6ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de6f0: adrp   x25, #0x3069000                          
 13de6f4: ldr    x8, [x20]                                
 13de6f8: ldr    x25, [x25, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
 13de6fc: ldrh   w9, [x8, #0x11e]                         
 13de700: ldr    x1, [x25]                                
 13de704: cbz    x9, #0x13de730                           
 13de708: ldr    x11, [x8, #0xb0]                         
 13de70c: mov    x10, xzr                                 
 13de710: add    x11, x11, #8                             
 13de714: ldur   x12, [x11, #-8]                          
 13de718: cmp    x12, x1                                  
 13de71c: b.eq   #0x13de740                               
 13de720: add    x10, x10, #1                             
 13de724: cmp    x10, x9                                  
 13de728: add    x11, x11, #0x10                          
 13de72c: b.lo   #0x13de714                               
 13de730: mov    w2, #1                                   
 13de734: mov    x0, x20                                  
 13de738: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13de73c: b      #0x13de750                               
 13de740: ldr    w9, [x11]                                
 13de744: add    w9, w9, #1                               
 13de748: add    x8, x8, w9, uxtw #4                      
 13de74c: add    x0, x8, #0x128                           
 13de750: ldp    x8, x3, [x0]                             
 13de754: mov    x0, x20                                  
 13de758: mov    x1, x21                                  
 13de75c: mov    x2, x22                                  
 13de760: blr    x8                                       
 13de764: mov    x0, x19                                  
 13de768: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13de76c: mov    x20, x0                                  
 13de770: cbnz   x20, #0x13de778                          
 13de774: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de778: mov    x0, x20                                  
 13de77c: mov    x1, xzr                                  
 13de780: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13de784: mov    x20, x0                                  
 13de788: ldr    x0, [x23]                                
 13de78c: mov    w8, #3                                   
 13de790: add    x1, sp, #0x18                            
 13de794: str    w8, [sp, #0x18]                          
 13de798: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13de79c: ldr    x8, [x24]                                
 13de7a0: mov    x21, x0                                  
 13de7a4: mov    x0, x8                                   
 13de7a8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13de7ac: adrp   x8, #0x303d000                           
 13de7b0: ldr    x8, [x8, #0x550]                         ; MMETH Method$PveDetailMediator.RequestEnterLevel()
 13de7b4: mov    x1, x19                                  
 13de7b8: mov    x3, xzr                                  
 13de7bc: mov    x22, x0                                  
 13de7c0: ldr    x2, [x8]                                 
 13de7c4: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13de7c8: cbnz   x20, #0x13de7d4                          
 13de7cc: mov    x0, xzr                                  
 13de7d0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de7d4: ldr    x8, [x20]                                
 13de7d8: ldr    x1, [x25]                                
 13de7dc: ldrh   w9, [x8, #0x11e]                         
 13de7e0: cbz    x9, #0x13de80c                           
 13de7e4: ldr    x11, [x8, #0xb0]                         
 13de7e8: mov    x10, xzr                                 
 13de7ec: add    x11, x11, #8                             
 13de7f0: ldur   x12, [x11, #-8]                          
 13de7f4: cmp    x12, x1                                  
 13de7f8: b.eq   #0x13de81c                               
 13de7fc: add    x10, x10, #1                             
 13de800: cmp    x10, x9                                  
 13de804: add    x11, x11, #0x10                          
 13de808: b.lo   #0x13de7f0                               
 13de80c: mov    w2, #1                                   
 13de810: mov    x0, x20                                  
 13de814: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13de818: b      #0x13de82c                               
 13de81c: ldr    w9, [x11]                                
 13de820: add    w9, w9, #1                               
 13de824: add    x8, x8, w9, uxtw #4                      
 13de828: add    x0, x8, #0x128                           
 13de82c: ldp    x8, x3, [x0]                             
 13de830: mov    x0, x20                                  
 13de834: mov    x1, x21                                  
 13de838: mov    x2, x22                                  
 13de83c: blr    x8                                       
 13de840: mov    x0, x19                                  
 13de844: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13de848: mov    x20, x0                                  
 13de84c: cbnz   x20, #0x13de854                          
 13de850: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de854: mov    x0, x20                                  
 13de858: mov    x1, xzr                                  
 13de85c: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13de860: mov    x20, x0                                  
 13de864: ldr    x0, [x23]                                
 13de868: mov    w8, #4                                   
 13de86c: add    x1, sp, #0xc                             
 13de870: str    w8, [sp, #0xc]                           
 13de874: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13de878: ldr    x8, [x24]                                
 13de87c: mov    x21, x0                                  
 13de880: mov    x0, x8                                   
 13de884: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13de888: adrp   x8, #0x3044000                           
 13de88c: ldr    x8, [x8, #0xca8]                         ; MMETH Method$PveDetailMediator.SweepLevel()
 13de890: mov    x1, x19                                  
 13de894: mov    x3, xzr                                  
 13de898: mov    x22, x0                                  
 13de89c: ldr    x2, [x8]                                 
 13de8a0: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13de8a4: cbnz   x20, #0x13de8b0                          
 13de8a8: mov    x0, xzr                                  
 13de8ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de8b0: ldr    x8, [x20]                                
 13de8b4: ldr    x1, [x25]                                
 13de8b8: ldrh   w9, [x8, #0x11e]                         
 13de8bc: cbz    x9, #0x13de8e8                           
 13de8c0: ldr    x11, [x8, #0xb0]                         
 13de8c4: mov    x10, xzr                                 
 13de8c8: add    x11, x11, #8                             
 13de8cc: ldur   x12, [x11, #-8]                          
 13de8d0: cmp    x12, x1                                  
 13de8d4: b.eq   #0x13de8f8                               
 13de8d8: add    x10, x10, #1                             
 13de8dc: cmp    x10, x9                                  
 13de8e0: add    x11, x11, #0x10                          
 13de8e4: b.lo   #0x13de8cc                               
 13de8e8: mov    w2, #1                                   
 13de8ec: mov    x0, x20                                  
 13de8f0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13de8f4: b      #0x13de908                               
 13de8f8: ldr    w9, [x11]                                
 13de8fc: add    w9, w9, #1                               
 13de900: add    x8, x8, w9, uxtw #4                      
 13de904: add    x0, x8, #0x128                           
 13de908: ldp    x8, x3, [x0]                             
 13de90c: mov    x0, x20                                  
 13de910: mov    x1, x21                                  
 13de914: mov    x2, x22                                  
 13de918: blr    x8                                       
 13de91c: ldp    x29, x30, [sp, #0x50]                    
 13de920: ldp    x20, x19, [sp, #0x40]                    
 13de924: ldp    x22, x21, [sp, #0x30]                    
 13de928: ldp    x24, x23, [sp, #0x20]                    
 13de92c: ldr    x25, [sp, #0x10]                         
 13de930: add    sp, sp, #0x60                            
 13de934: ret                                             

===== PveDetailMediator$$OnRemove @ 0x13de938 (840 bytes)
 13de938: sub    sp, sp, #0x60                            
 13de93c: str    x25, [sp, #0x10]                         
 13de940: stp    x24, x23, [sp, #0x20]                    
 13de944: stp    x22, x21, [sp, #0x30]                    
 13de948: stp    x20, x19, [sp, #0x40]                    
 13de94c: stp    x29, x30, [sp, #0x50]                    
 13de950: add    x29, sp, #0x50                           
 13de954: adrp   x20, #0x31d0000                          
 13de958: ldrb   w8, [x20, #0x496]                        
 13de95c: mov    x19, x0                                  
 13de960: tbnz   w8, #0, #0x13de97c                       
 13de964: adrp   x8, #0x303c000                           
 13de968: ldr    x8, [x8, #0x868]                         
 13de96c: ldr    w0, [x8]                                 
 13de970: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de974: mov    w8, #1                                   
 13de978: strb   w8, [x20, #0x496]                        
 13de97c: adrp   x8, #0x302a000                           
 13de980: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de984: ldr    x8, [x8]                                 
 13de988: ldr    x8, [x8, #0xb8]                          
 13de98c: ldr    x0, [x8, #0x58]                          
 13de990: cbz    x0, #0x13de9b8                           
 13de994: mov    x1, x19                                  
 13de998: ldp    x29, x30, [sp, #0x50]                    
 13de99c: ldp    x20, x19, [sp, #0x40]                    
 13de9a0: ldp    x22, x21, [sp, #0x30]                    
 13de9a4: ldp    x24, x23, [sp, #0x20]                    
 13de9a8: ldr    x25, [sp, #0x10]                         
 13de9ac: mov    x2, xzr                                  
 13de9b0: add    sp, sp, #0x60                            
 13de9b4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
 13de9b8: mov    x0, x19                                  
 13de9bc: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13de9c0: mov    x20, x0                                  
 13de9c4: cbnz   x20, #0x13de9cc                          
 13de9c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13de9cc: mov    x0, x20                                  
 13de9d0: mov    x1, xzr                                  
 13de9d4: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13de9d8: adrp   x23, #0x3042000                          
 13de9dc: ldr    x23, [x23, #0x408]                       ; META PveEvent_TypeInfo
 13de9e0: mov    x20, x0                                  
 13de9e4: mov    w8, #2                                   
 13de9e8: add    x1, sp, #0x1c                            
 13de9ec: ldr    x0, [x23]                                
 13de9f0: str    w8, [sp, #0x1c]                          
 13de9f4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13de9f8: adrp   x24, #0x302a000                          
 13de9fc: ldr    x24, [x24, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
 13dea00: mov    x21, x0                                  
 13dea04: ldr    x8, [x24]                                
 13dea08: mov    x0, x8                                   
 13dea0c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13dea10: adrp   x8, #0x2fd9000                           
 13dea14: ldr    x8, [x8, #0x9a0]                         ; MMETH Method$PveDetailMediator.ShowLevelDetail()
 13dea18: mov    x1, x19                                  
 13dea1c: mov    x3, xzr                                  
 13dea20: mov    x22, x0                                  
 13dea24: ldr    x2, [x8]                                 
 13dea28: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13dea2c: cbnz   x20, #0x13dea38                          
 13dea30: mov    x0, xzr                                  
 13dea34: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13dea38: adrp   x25, #0x3069000                          
 13dea3c: ldr    x8, [x20]                                
 13dea40: ldr    x25, [x25, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
 13dea44: ldrh   w9, [x8, #0x11e]                         
 13dea48: ldr    x1, [x25]                                
 13dea4c: cbz    x9, #0x13dea78                           
 13dea50: ldr    x11, [x8, #0xb0]                         
 13dea54: mov    x10, xzr                                 
 13dea58: add    x11, x11, #8                             
 13dea5c: ldur   x12, [x11, #-8]                          
 13dea60: cmp    x12, x1                                  
 13dea64: b.eq   #0x13dea88                               
 13dea68: add    x10, x10, #1                             
 13dea6c: cmp    x10, x9                                  
 13dea70: add    x11, x11, #0x10                          
 13dea74: b.lo   #0x13dea5c                               
 13dea78: mov    w2, #3                                   
 13dea7c: mov    x0, x20                                  
 13dea80: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13dea84: b      #0x13dea98                               
 13dea88: ldr    w9, [x11]                                
 13dea8c: add    w9, w9, #3                               
 13dea90: add    x8, x8, w9, uxtw #4                      
 13dea94: add    x0, x8, #0x128                           
 13dea98: ldp    x8, x3, [x0]                             
 13dea9c: mov    x0, x20                                  
 13deaa0: mov    x1, x21                                  
 13deaa4: mov    x2, x22                                  
 13deaa8: blr    x8                                       
 13deaac: mov    x0, x19                                  
 13deab0: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13deab4: mov    x20, x0                                  
 13deab8: cbnz   x20, #0x13deac0                          
 13deabc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13deac0: mov    x0, x20                                  
 13deac4: mov    x1, xzr                                  
 13deac8: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13deacc: mov    x20, x0                                  
 13dead0: ldr    x0, [x23]                                
 13dead4: mov    w8, #3                                   
 13dead8: add    x1, sp, #0x18                            
 13deadc: str    w8, [sp, #0x18]                          
 13deae0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13deae4: ldr    x8, [x24]                                
 13deae8: mov    x21, x0                                  
 13deaec: mov    x0, x8                                   
 13deaf0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13deaf4: adrp   x8, #0x303d000                           
 13deaf8: ldr    x8, [x8, #0x550]                         ; MMETH Method$PveDetailMediator.RequestEnterLevel()
 13deafc: mov    x1, x19                                  
 13deb00: mov    x3, xzr                                  
 13deb04: mov    x22, x0                                  
 13deb08: ldr    x2, [x8]                                 
 13deb0c: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13deb10: cbnz   x20, #0x13deb1c                          
 13deb14: mov    x0, xzr                                  
 13deb18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13deb1c: ldr    x8, [x20]                                
 13deb20: ldr    x1, [x25]                                
 13deb24: ldrh   w9, [x8, #0x11e]                         
 13deb28: cbz    x9, #0x13deb54                           
 13deb2c: ldr    x11, [x8, #0xb0]                         
 13deb30: mov    x10, xzr                                 
 13deb34: add    x11, x11, #8                             
 13deb38: ldur   x12, [x11, #-8]                          
 13deb3c: cmp    x12, x1                                  
 13deb40: b.eq   #0x13deb64                               
 13deb44: add    x10, x10, #1                             
 13deb48: cmp    x10, x9                                  
 13deb4c: add    x11, x11, #0x10                          
 13deb50: b.lo   #0x13deb38                               
 13deb54: mov    w2, #3                                   
 13deb58: mov    x0, x20                                  
 13deb5c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13deb60: b      #0x13deb74                               
 13deb64: ldr    w9, [x11]                                
 13deb68: add    w9, w9, #3                               
 13deb6c: add    x8, x8, w9, uxtw #4                      
 13deb70: add    x0, x8, #0x128                           
 13deb74: ldp    x8, x3, [x0]                             
 13deb78: mov    x0, x20                                  
 13deb7c: mov    x1, x21                                  
 13deb80: mov    x2, x22                                  
 13deb84: blr    x8                                       
 13deb88: mov    x0, x19                                  
 13deb8c: bl     #0x13de314                               ; PveDetailMediator$$get_view
 13deb90: mov    x20, x0                                  
 13deb94: cbnz   x20, #0x13deb9c                          
 13deb98: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13deb9c: mov    x0, x20                                  
 13deba0: mov    x1, xzr                                  
 13deba4: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
 13deba8: mov    x20, x0                                  
 13debac: ldr    x0, [x23]                                
 13debb0: mov    w8, #4                                   
 13debb4: add    x1, sp, #0xc                             
 13debb8: str    w8, [sp, #0xc]                           
 13debbc: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13debc0: ldr    x8, [x24]                                
 13debc4: mov    x21, x0                                  
 13debc8: mov    x0, x8                                   
 13debcc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13debd0: adrp   x8, #0x3044000                           
 13debd4: ldr    x8, [x8, #0xca8]                         ; MMETH Method$PveDetailMediator.SweepLevel()
 13debd8: mov    x1, x19                                  
 13debdc: mov    x3, xzr                                  
 13debe0: mov    x22, x0                                  
 13debe4: ldr    x2, [x8]                                 
 13debe8: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
 13debec: cbnz   x20, #0x13debf8                          
 13debf0: mov    x0, xzr                                  
 13debf4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13debf8: ldr    x8, [x20]                                
 13debfc: ldr    x1, [x25]                                
 13dec00: ldrh   w9, [x8, #0x11e]                         
 13dec04: cbz    x9, #0x13dec30                           
 13dec08: ldr    x11, [x8, #0xb0]                         
 13dec0c: mov    x10, xzr                                 
 13dec10: add    x11, x11, #8                             
 13dec14: ldur   x12, [x11, #-8]                          
 13dec18: cmp    x12, x1                                  
 13dec1c: b.eq   #0x13dec40                               
 13dec20: add    x10, x10, #1                             
 13dec24: cmp    x10, x9                                  
 13dec28: add    x11, x11, #0x10                          
 13dec2c: b.lo   #0x13dec14                               
 13dec30: mov    w2, #3                                   
 13dec34: mov    x0, x20                                  
 13dec38: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13dec3c: b      #0x13dec50                               
 13dec40: ldr    w9, [x11]                                
 13dec44: add    w9, w9, #3                               
 13dec48: add    x8, x8, w9, uxtw #4                      
 13dec4c: add    x0, x8, #0x128                           
 13dec50: ldp    x8, x3, [x0]                             
 13dec54: mov    x0, x20                                  
 13dec58: mov    x1, x21                                  
 13dec5c: mov    x2, x22                                  
 13dec60: blr    x8                                       
 13dec64: ldp    x29, x30, [sp, #0x50]                    
 13dec68: ldp    x20, x19, [sp, #0x40]                    
 13dec6c: ldp    x22, x21, [sp, #0x30]                    
 13dec70: ldp    x24, x23, [sp, #0x20]                    
 13dec74: ldr    x25, [sp, #0x10]                         
 13dec78: add    sp, sp, #0x60                            
 13dec7c: ret                                             

===== PveDetailMediator$$RequestEnterLevel @ 0x13def40 (1052 bytes)
 13def40: str    x23, [sp, #-0x40]!                       
 13def44: stp    x22, x21, [sp, #0x10]                    
 13def48: stp    x20, x19, [sp, #0x20]                    
 13def4c: stp    x29, x30, [sp, #0x30]                    
 13def50: add    x29, sp, #0x30                           
 13def54: adrp   x21, #0x31d0000                          
 13def58: ldrb   w8, [x21, #0x499]                        
 13def5c: mov    x20, x1                                  
 13def60: mov    x19, x0                                  
 13def64: tbnz   w8, #0, #0x13def80                       
 13def68: adrp   x8, #0x3043000                           
 13def6c: ldr    x8, [x8, #0x1e8]                         
 13def70: ldr    w0, [x8]                                 
 13def74: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13def78: mov    w8, #1                                   
 13def7c: strb   w8, [x21, #0x499]                        
 13def80: adrp   x8, #0x302a000                           
 13def84: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13def88: ldr    x8, [x8]                                 
 13def8c: ldr    x8, [x8, #0xb8]                          
 13def90: ldr    x0, [x8, #0x70]                          
 13def94: cbz    x0, #0x13defb8                           
 13def98: mov    x1, x19                                  
 13def9c: mov    x2, x20                                  
 13defa0: ldp    x29, x30, [sp, #0x30]                    
 13defa4: ldp    x20, x19, [sp, #0x20]                    
 13defa8: ldp    x22, x21, [sp, #0x10]                    
 13defac: mov    x3, xzr                                  
 13defb0: ldr    x23, [sp], #0x40                         
 13defb4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13defb8: mov    x0, x19                                  
 13defbc: bl     #0x13de220                               ; PveDetailMediator$$get_mechaData
 13defc0: mov    x20, x0                                  
 13defc4: cbnz   x20, #0x13defcc                          
 13defc8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13defcc: mov    x0, x20                                  
 13defd0: mov    x1, xzr                                  
 13defd4: bl     #0xe70634                                ; MechaData$$get_current
 13defd8: mov    x20, x0                                  
 13defdc: cbz    x20, #0x13df110                          
 13defe0: adrp   x8, #0x3043000                           
 13defe4: ldr    x8, [x8, #0x800]                         ; META ConfCommonInfo_TypeInfo
 13defe8: ldr    w21, [x19, #0x50]                        
 13defec: ldr    x0, [x8]                                 
 13deff0: ldrb   w8, [x0, #0x127]                         
 13deff4: tbz    w8, #1, #0x13df004                       
 13deff8: ldr    w8, [x0, #0xd8]                          
 13deffc: cbnz   w8, #0x13df004                           
 13df000: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13df004: mov    w0, w21                                  
 13df008: mov    x1, xzr                                  
 13df00c: bl     #0x127908c                               ; ConfCommonInfo$$Get
 13df010: mov    x21, x0                                  
 13df014: cbz    x21, #0x13df188                          
 13df018: mov    x0, x19                                  
 13df01c: bl     #0x13de408                               ; PveDetailMediator$$get_chapterData
 13df020: ldr    w22, [x19, #0x50]                        
 13df024: mov    x23, x0                                  
 13df028: cbnz   x23, #0x13df030                          
 13df02c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df030: mov    x0, x23                                  
 13df034: mov    w1, w22                                  
 13df038: mov    x2, xzr                                  
 13df03c: bl     #0xea8314                                ; ChapterData$$GetLevelInfo
 13df040: mov    x22, x0                                  
 13df044: cbz    x22, #0x13df0d4                          
 13df048: mov    x0, x21                                  
 13df04c: mov    x1, xzr                                  
 13df050: bl     #0x1277f2c                               ; ConfCommonInfo$$get_maxCount
 13df054: ldr    w8, [x22, #0x14]                         
 13df058: sub    w8, w0, w8                               
 13df05c: cmp    w8, #0                                   
 13df060: b.le   #0x13df2e8                               
 13df064: mov    x0, x19                                  
 13df068: bl     #0x13de408                               ; PveDetailMediator$$get_chapterData
 13df06c: ldr    w22, [x22, #0x10]                        
 13df070: mov    x23, x0                                  
 13df074: cbnz   x23, #0x13df07c                          
 13df078: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df07c: mov    x0, x23                                  
 13df080: mov    w1, w22                                  
 13df084: mov    x2, xzr                                  
 13df088: bl     #0xea83c8                                ; ChapterData$$LevelStarAmount
 13df08c: cmp    w0, #1                                   
 13df090: b.lt   #0x13df0d4                               
 13df094: mov    x0, x19                                  
 13df098: bl     #0x13de12c                               ; PveDetailMediator$$get_playerData
 13df09c: mov    x22, x0                                  
 13df0a0: mov    x0, x21                                  
 13df0a4: mov    x1, xzr                                  
 13df0a8: bl     #0x1277f3c                               ; ConfCommonInfo$$get_costPower
 13df0ac: mov    w21, w0                                  
 13df0b0: cbnz   x22, #0x13df0bc                          
 13df0b4: mov    x0, xzr                                  
 13df0b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df0bc: mov    w1, #3                                   
 13df0c0: mov    x0, x22                                  
 13df0c4: mov    w2, w21                                  
 13df0c8: mov    x3, xzr                                  
 13df0cc: bl     #0xe1b184                                ; PlayerData$$HasEnoughMoneyToBuy
 13df0d0: tbz    w0, #0, #0x13df264                       
 13df0d4: adrp   x8, #0x3041000                           
 13df0d8: ldr    x8, [x8, #0x790]                         ; META msg.CSInstanceEnter_TypeInfo
 13df0dc: ldr    x0, [x8]                                 
 13df0e0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13df0e4: mov    x1, xzr                                  
 13df0e8: mov    x21, x0                                  
 13df0ec: bl     #0x212983c                               ; msg.CSInstanceEnter$$.ctor
 13df0f0: ldr    w19, [x19, #0x50]                        
 13df0f4: cbz    x21, #0x13df278                          
 13df0f8: mov    x0, x21                                  
 13df0fc: mov    w1, w19                                  
 13df100: mov    x2, xzr                                  
 13df104: bl     #0x2129ae0                               ; msg.CSInstanceEnter$$set_instSn
 13df108: ldr    x19, [x20, #0x10]                        
 13df10c: b      #0x13df29c                               
 13df110: adrp   x19, #0x3042000                          
 13df114: ldr    x19, [x19, #0xb88]                       ; META GameLog_TypeInfo
 13df118: ldr    x0, [x19]                                
 13df11c: ldrb   w8, [x0, #0x127]                         
 13df120: tbz    w8, #1, #0x13df134                       
 13df124: ldr    w8, [x0, #0xd8]                          
 13df128: cbnz   w8, #0x13df134                           
 13df12c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13df130: ldr    x0, [x19]                                
 13df134: adrp   x9, #0x2fc7000                           
 13df138: ldr    x8, [x0, #0xb8]                          
 13df13c: ldr    x9, [x9, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
 13df140: ldr    x19, [x8, #0x20]                         
 13df144: ldr    x0, [x9]                                 
 13df148: bl     #0x1ee6064                               ; System.Array$$Empty<string>
 13df14c: mov    x20, x0                                  
 13df150: cbnz   x19, #0x13df15c                          
 13df154: mov    x0, xzr                                  
 13df158: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df15c: adrp   x8, #0x2fc4000                           
 13df160: ldr    x8, [x8, #0x120]                         ; STR "没有当前出战机甲信息!"
 13df164: mov    x0, x19                                  
 13df168: mov    x2, x20                                  
 13df16c: ldp    x29, x30, [sp, #0x30]                    
 13df170: ldr    x1, [x8]                                 
 13df174: ldp    x20, x19, [sp, #0x20]                    
 13df178: ldp    x22, x21, [sp, #0x10]                    
 13df17c: mov    x3, xzr                                  
 13df180: ldr    x23, [sp], #0x40                         
 13df184: b      #0x1423464                               ; UniCore.Logger$$Error
 13df188: adrp   x20, #0x3042000                          
 13df18c: ldr    x20, [x20, #0xb88]                       ; META GameLog_TypeInfo
 13df190: ldr    x0, [x20]                                
 13df194: ldrb   w8, [x0, #0x127]                         
 13df198: tbz    w8, #1, #0x13df1ac                       
 13df19c: ldr    w8, [x0, #0xd8]                          
 13df1a0: cbnz   w8, #0x13df1ac                           
 13df1a4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13df1a8: ldr    x0, [x20]                                
 13df1ac: adrp   x9, #0x305a000                           
 13df1b0: ldr    x8, [x0, #0xb8]                          
 13df1b4: ldr    x9, [x9, #0xe48]                         ; META object[]_TypeInfo
 13df1b8: mov    w1, #1                                   
 13df1bc: ldr    x20, [x8, #0x20]                         
 13df1c0: ldr    x0, [x9]                                 
 13df1c4: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
 13df1c8: adrp   x9, #0x300b000                           
 13df1cc: ldr    w8, [x19, #0x50]                         
 13df1d0: ldr    x9, [x9, #0x800]                         ; META int_TypeInfo
 13df1d4: mov    x21, x0                                  
 13df1d8: add    x1, sp, #0xc                             
 13df1dc: str    w8, [sp, #0xc]                           
 13df1e0: ldr    x0, [x9]                                 
 13df1e4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
 13df1e8: mov    x19, x0                                  
 13df1ec: cbnz   x21, #0x13df1f8                          
 13df1f0: mov    x0, xzr                                  
 13df1f4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df1f8: cbz    x19, #0x13df220                          
 13df1fc: ldr    x8, [x21]                                
 13df200: mov    x0, x19                                  
 13df204: ldr    x1, [x8, #0x40]                          
 13df208: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
 13df20c: cbnz   x0, #0x13df220                           
 13df210: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
 13df214: mov    x1, xzr                                  
 13df218: mov    x2, xzr                                  
 13df21c: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
 13df220: ldr    w8, [x21, #0x18]                         
 13df224: cbnz   w8, #0x13df238                           
 13df228: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
 13df22c: mov    x1, xzr                                  
 13df230: mov    x2, xzr                                  
 13df234: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
 13df238: str    x19, [x21, #0x20]                        
 13df23c: cbnz   x20, #0x13df248                          
 13df240: mov    x0, xzr                                  
 13df244: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df248: adrp   x8, #0x3078000                           
 13df24c: ldr    x8, [x8, #0x160]                         ; STR "没有找到ID为 {0} 的副本信息！"
 13df250: mov    x0, x20                                  
 13df254: mov    x2, x21                                  
 13df258: mov    x3, xzr                                  
 13df25c: ldr    x1, [x8]                                 
 13df260: bl     #0x1423464                               ; UniCore.Logger$$Error
 13df264: ldp    x29, x30, [sp, #0x30]                    
 13df268: ldp    x20, x19, [sp, #0x20]                    
 13df26c: ldp    x22, x21, [sp, #0x10]                    
 13df270: ldr    x23, [sp], #0x40                         
 13df274: ret                                             
 13df278: mov    x0, xzr                                  
 13df27c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df280: mov    x0, x21                                  
 13df284: mov    w1, w19                                  
 13df288: mov    x2, xzr                                  
 13df28c: bl     #0x2129ae0                               ; msg.CSInstanceEnter$$set_instSn
 13df290: ldr    x19, [x20, #0x10]                        
 13df294: mov    x0, xzr                                  
 13df298: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df29c: mov    x0, x21                                  
 13df2a0: mov    x1, x19                                  
 13df2a4: mov    x2, xzr                                  
 13df2a8: bl     #0x2129d04                               ; msg.CSInstanceEnter$$set_generalId
 13df2ac: adrp   x8, #0x3077000                           
 13df2b0: ldr    x8, [x8, #0xb80]                         ; META ConnectAPI_TypeInfo
 13df2b4: ldr    x0, [x8]                                 
 13df2b8: ldrb   w8, [x0, #0x127]                         
 13df2bc: tbz    w8, #1, #0x13df2cc                       
 13df2c0: ldr    w8, [x0, #0xd8]                          
 13df2c4: cbnz   w8, #0x13df2cc                           
 13df2c8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13df2cc: mov    x0, x21                                  
 13df2d0: ldp    x29, x30, [sp, #0x30]                    
 13df2d4: ldp    x20, x19, [sp, #0x20]                    
 13df2d8: ldp    x22, x21, [sp, #0x10]                    
 13df2dc: mov    x1, xzr                                  
 13df2e0: ldr    x23, [sp], #0x40                         
 13df2e4: b      #0x1125f84                               ; ConnectAPI$$QueuePacket
 13df2e8: mov    x0, xzr                                  
 13df2ec: bl     #0x1269298                               ; CommonTipView$$Get
 13df2f0: adrp   x8, #0x303e000                           
 13df2f4: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
 13df2f8: mov    x19, x0                                  
 13df2fc: ldr    x8, [x8]                                 
 13df300: ldrb   w9, [x8, #0x127]                         
 13df304: tbz    w9, #1, #0x13df318                       
 13df308: ldr    w9, [x8, #0xd8]                          
 13df30c: cbnz   w9, #0x13df318                           
 13df310: mov    x0, x8                                   
 13df314: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13df318: adrp   x8, #0x2ff9000                           
 13df31c: ldr    x8, [x8, #0xf8]                          ; STR "GLOBAL_COMMON_NOTIMES"
 13df320: mov    x1, xzr                                  
 13df324: ldr    x0, [x8]                                 
 13df328: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
 13df32c: mov    x20, x0                                  
 13df330: cbnz   x19, #0x13df33c                          
 13df334: mov    x0, xzr                                  
 13df338: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13df33c: mov    x0, x19                                  
 13df340: mov    x1, x20                                  
 13df344: ldp    x29, x30, [sp, #0x30]                    
 13df348: ldp    x20, x19, [sp, #0x20]                    
 13df34c: ldp    x22, x21, [sp, #0x10]                    
 13df350: mov    x2, xzr                                  
 13df354: ldr    x23, [sp], #0x40                         
 13df358: b      #0x126a774                               ; CommonTipView$$PopCenterTipWnd

===== PveDetailMediator$$ShowLevelDetail @ 0x13dec80 (272 bytes)
 13dec80: str    x21, [sp, #-0x30]!                       
 13dec84: stp    x20, x19, [sp, #0x10]                    
 13dec88: stp    x29, x30, [sp, #0x20]                    
 13dec8c: add    x29, sp, #0x20                           
 13dec90: adrp   x21, #0x31d0000                          
 13dec94: ldrb   w8, [x21, #0x497]                        
 13dec98: mov    x20, x1                                  
 13dec9c: mov    x19, x0                                  
 13deca0: tbnz   w8, #0, #0x13decbc                       
 13deca4: adrp   x8, #0x3060000                           
 13deca8: ldr    x8, [x8, #0x38]                          
 13decac: ldr    w0, [x8]                                 
 13decb0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13decb4: mov    w8, #1                                   
 13decb8: strb   w8, [x21, #0x497]                        
 13decbc: adrp   x8, #0x302a000                           
 13decc0: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13decc4: ldr    x8, [x8]                                 
 13decc8: ldr    x8, [x8, #0xb8]                          
 13deccc: ldr    x0, [x8, #0x60]                          
 13decd0: cbz    x0, #0x13decf0                           
 13decd4: mov    x1, x19                                  
 13decd8: mov    x2, x20                                  
 13decdc: ldp    x29, x30, [sp, #0x20]                    
 13dece0: ldp    x20, x19, [sp, #0x10]                    
 13dece4: mov    x3, xzr                                  
 13dece8: ldr    x21, [sp], #0x30                         
 13decec: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13decf0: cbnz   x20, #0x13decfc                          
 13decf4: mov    x0, xzr                                  
 13decf8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13decfc: adrp   x10, #0x2ff0000                          
 13ded00: ldr    x8, [x20]                                
 13ded04: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
 13ded08: ldrh   w9, [x8, #0x11e]                         
 13ded0c: ldr    x1, [x10]                                
 13ded10: cbz    x9, #0x13ded3c                           
 13ded14: ldr    x11, [x8, #0xb0]                         
 13ded18: mov    x10, xzr                                 
 13ded1c: add    x11, x11, #8                             
 13ded20: ldur   x12, [x11, #-8]                          
 13ded24: cmp    x12, x1                                  
 13ded28: b.eq   #0x13ded4c                               
 13ded2c: add    x10, x10, #1                             
 13ded30: cmp    x10, x9                                  
 13ded34: add    x11, x11, #0x10                          
 13ded38: b.lo   #0x13ded20                               
 13ded3c: mov    w2, #4                                   
 13ded40: mov    x0, x20                                  
 13ded44: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
 13ded48: b      #0x13ded5c                               
 13ded4c: ldr    w9, [x11]                                
 13ded50: add    w9, w9, #4                               
 13ded54: add    x8, x8, w9, uxtw #4                      
 13ded58: add    x0, x8, #0x128                           
 13ded5c: ldp    x8, x1, [x0]                             
 13ded60: mov    x0, x20                                  
 13ded64: blr    x8                                       
 13ded68: adrp   x8, #0x300b000                           
 13ded6c: ldr    x8, [x8, #0x800]                         ; META int_TypeInfo
 13ded70: ldr    x1, [x8]                                 
 13ded74: bl     #0xba7ff8                                ; ? near KCP.Segment$$encode+0x8
 13ded78: ldr    w8, [x0]                                 
 13ded7c: str    w8, [x19, #0x50]                         
 13ded80: ldp    x29, x30, [sp, #0x20]                    
 13ded84: ldp    x20, x19, [sp, #0x10]                    
 13ded88: ldr    x21, [sp], #0x30                         
 13ded8c: ret                                             

===== PveDetailMediator$$SweepLevel @ 0x13ded90 (432 bytes)
 13ded90: str    x21, [sp, #-0x30]!                       
 13ded94: stp    x20, x19, [sp, #0x10]                    
 13ded98: stp    x29, x30, [sp, #0x20]                    
 13ded9c: add    x29, sp, #0x20                           
 13deda0: adrp   x21, #0x31d0000                          
 13deda4: ldrb   w8, [x21, #0x498]                        
 13deda8: mov    x20, x1                                  
 13dedac: mov    x19, x0                                  
 13dedb0: tbnz   w8, #0, #0x13dedcc                       
 13dedb4: adrp   x8, #0x2fdb000                           
 13dedb8: ldr    x8, [x8, #0xbb0]                         
 13dedbc: ldr    w0, [x8]                                 
 13dedc0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13dedc4: mov    w8, #1                                   
 13dedc8: strb   w8, [x21, #0x498]                        
 13dedcc: adrp   x8, #0x302a000                           
 13dedd0: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13dedd4: ldr    x8, [x8]                                 
 13dedd8: ldr    x8, [x8, #0xb8]                          
 13deddc: ldr    x0, [x8, #0x68]                          
 13dede0: cbz    x0, #0x13dee00                           
 13dede4: mov    x1, x19                                  
 13dede8: mov    x2, x20                                  
 13dedec: ldp    x29, x30, [sp, #0x20]                    
 13dedf0: ldp    x20, x19, [sp, #0x10]                    
 13dedf4: mov    x3, xzr                                  
 13dedf8: ldr    x21, [sp], #0x30                         
 13dedfc: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13dee00: mov    x0, x19                                  
 13dee04: bl     #0x13de408                               ; PveDetailMediator$$get_chapterData
 13dee08: ldr    w20, [x19, #0x50]                        
 13dee0c: mov    x21, x0                                  
 13dee10: cbnz   x21, #0x13dee18                          
 13dee14: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13dee18: mov    x0, x21                                  
 13dee1c: mov    w1, w20                                  
 13dee20: mov    x2, xzr                                  
 13dee24: bl     #0xea8270                                ; ChapterData$$ContainsLevel
 13dee28: tbz    w0, #0, #0x13dee5c                       
 13dee2c: mov    x0, x19                                  
 13dee30: bl     #0x13de408                               ; PveDetailMediator$$get_chapterData
 13dee34: ldr    w20, [x19, #0x50]                        
 13dee38: mov    x21, x0                                  
 13dee3c: cbnz   x21, #0x13dee44                          
 13dee40: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13dee44: mov    x0, x21                                  
 13dee48: mov    w1, w20                                  
 13dee4c: mov    x2, xzr                                  
 13dee50: bl     #0xea83c8                                ; ChapterData$$LevelStarAmount
 13dee54: cmp    w0, #3                                   
 13dee58: b.ge   #0x13deecc                               
 13dee5c: mov    x0, xzr                                  
 13dee60: bl     #0x1269298                               ; CommonTipView$$Get
 13dee64: adrp   x8, #0x303e000                           
 13dee68: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
 13dee6c: mov    x19, x0                                  
 13dee70: ldr    x8, [x8]                                 
 13dee74: ldrb   w9, [x8, #0x127]                         
 13dee78: tbz    w9, #1, #0x13dee8c                       
 13dee7c: ldr    w9, [x8, #0xd8]                          
 13dee80: cbnz   w9, #0x13dee8c                           
 13dee84: mov    x0, x8                                   
 13dee88: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
 13dee8c: adrp   x8, #0x304e000                           
 13dee90: ldr    x8, [x8, #0x338]                         ; STR "GLOBAL_THREE_STAR_SWIP"
 13dee94: mov    x1, xzr                                  
 13dee98: ldr    x0, [x8]                                 
 13dee9c: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
 13deea0: mov    x20, x0                                  
 13deea4: cbnz   x19, #0x13deeb0                          
 13deea8: mov    x0, xzr                                  
 13deeac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13deeb0: mov    x0, x19                                  
 13deeb4: mov    x1, x20                                  
 13deeb8: ldp    x29, x30, [sp, #0x20]                    
 13deebc: ldp    x20, x19, [sp, #0x10]                    
 13deec0: mov    x2, xzr                                  
 13deec4: ldr    x21, [sp], #0x30                         
 13deec8: b      #0x126a774                               ; CommonTipView$$PopCenterTipWnd
 13deecc: adrp   x8, #0x2fde000                           
 13deed0: ldr    x8, [x8, #0x28]                          ; META SweepParam_TypeInfo
 13deed4: ldr    x0, [x8]                                 
 13deed8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
 13deedc: mov    x1, xzr                                  
 13deee0: mov    x20, x0                                  
 13deee4: bl     #0xd55a64                                ; SweepParam$$.ctor
 13deee8: ldr    w21, [x19, #0x50]                        
 13deeec: cbz    x20, #0x13deef8                          
 13deef0: str    w21, [x20, #0x10]                        
 13deef4: b      #0x13def10                               
 13deef8: mov    x0, xzr                                  
 13deefc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13def00: mov    w8, #0x10                                
 13def04: mov    x0, xzr                                  
 13def08: str    w21, [x8]                                
 13def0c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
 13def10: mov    x0, x19                                  
 13def14: mov    x1, xzr                                  
 13def18: strb   wzr, [x20, #0x14]                        
 13def1c: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
 13def20: adrp   x8, #0x2fd0000                           
 13def24: ldr    x8, [x8, #0xba8]                         ; MMETH Method$EventDispatcherExtension.Open<SweepView>()
 13def28: mov    x1, x20                                  
 13def2c: ldp    x29, x30, [sp, #0x20]                    
 13def30: ldp    x20, x19, [sp, #0x10]                    
 13def34: ldr    x2, [x8]                                 
 13def38: ldr    x21, [sp], #0x30                         
 13def3c: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== PveDetailMediator$$get_chapterData @ 0x13de408 (112 bytes)
 13de408: stp    x20, x19, [sp, #-0x20]!                  
 13de40c: stp    x29, x30, [sp, #0x10]                    
 13de410: add    x29, sp, #0x10                           
 13de414: adrp   x20, #0x31d0000                          
 13de418: ldrb   w8, [x20, #0x491]                        
 13de41c: mov    x19, x0                                  
 13de420: tbnz   w8, #0, #0x13de43c                       
 13de424: adrp   x8, #0x301e000                           
 13de428: ldr    x8, [x8, #0xba8]                         
 13de42c: ldr    w0, [x8]                                 
 13de430: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de434: mov    w8, #1                                   
 13de438: strb   w8, [x20, #0x491]                        
 13de43c: adrp   x8, #0x302a000                           
 13de440: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de444: ldr    x8, [x8]                                 
 13de448: ldr    x8, [x8, #0xb8]                          
 13de44c: ldr    x0, [x8, #0x30]                          
 13de450: cbz    x0, #0x13de468                           
 13de454: ldp    x29, x30, [sp, #0x10]                    
 13de458: mov    x1, x19                                  
 13de45c: mov    x2, xzr                                  
 13de460: ldp    x20, x19, [sp], #0x20                    
 13de464: b      #0xca054c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp62
 13de468: ldr    x0, [x19, #0x40]                         
 13de46c: ldp    x29, x30, [sp, #0x10]                    
 13de470: ldp    x20, x19, [sp], #0x20                    
 13de474: ret                                             

===== PveDetailMediator$$get_mechaData @ 0x13de220 (112 bytes)
 13de220: stp    x20, x19, [sp, #-0x20]!                  
 13de224: stp    x29, x30, [sp, #0x10]                    
 13de228: add    x29, sp, #0x10                           
 13de22c: adrp   x20, #0x31d0000                          
 13de230: ldrb   w8, [x20, #0x48d]                        
 13de234: mov    x19, x0                                  
 13de238: tbnz   w8, #0, #0x13de254                       
 13de23c: adrp   x8, #0x3028000                           
 13de240: ldr    x8, [x8, #0x9d8]                         
 13de244: ldr    w0, [x8]                                 
 13de248: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de24c: mov    w8, #1                                   
 13de250: strb   w8, [x20, #0x48d]                        
 13de254: adrp   x8, #0x302a000                           
 13de258: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de25c: ldr    x8, [x8]                                 
 13de260: ldr    x8, [x8, #0xb8]                          
 13de264: ldr    x0, [x8, #0x10]                          
 13de268: cbz    x0, #0x13de280                           
 13de26c: ldp    x29, x30, [sp, #0x10]                    
 13de270: mov    x1, x19                                  
 13de274: mov    x2, xzr                                  
 13de278: ldp    x20, x19, [sp], #0x20                    
 13de27c: b      #0xca1e9c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp72
 13de280: ldr    x0, [x19, #0x30]                         
 13de284: ldp    x29, x30, [sp, #0x10]                    
 13de288: ldp    x20, x19, [sp], #0x20                    
 13de28c: ret                                             

===== PveDetailMediator$$get_netDispatcher @ 0x13de580 (112 bytes)
 13de580: stp    x20, x19, [sp, #-0x20]!                  
 13de584: stp    x29, x30, [sp, #0x10]                    
 13de588: add    x29, sp, #0x10                           
 13de58c: adrp   x20, #0x31d0000                          
 13de590: ldrb   w8, [x20, #0x494]                        
 13de594: mov    x19, x0                                  
 13de598: tbnz   w8, #0, #0x13de5b4                       
 13de59c: adrp   x8, #0x3058000                           
 13de5a0: ldr    x8, [x8, #0x610]                         
 13de5a4: ldr    w0, [x8]                                 
 13de5a8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de5ac: mov    w8, #1                                   
 13de5b0: strb   w8, [x20, #0x494]                        
 13de5b4: adrp   x8, #0x302a000                           
 13de5b8: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de5bc: ldr    x8, [x8]                                 
 13de5c0: ldr    x8, [x8, #0xb8]                          
 13de5c4: ldr    x0, [x8, #0x48]                          
 13de5c8: cbz    x0, #0x13de5e0                           
 13de5cc: ldp    x29, x30, [sp, #0x10]                    
 13de5d0: mov    x1, x19                                  
 13de5d4: mov    x2, xzr                                  
 13de5d8: ldp    x20, x19, [sp], #0x20                    
 13de5dc: b      #0xca3cfc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp84
 13de5e0: ldr    x0, [x19, #0x48]                         
 13de5e4: ldp    x29, x30, [sp, #0x10]                    
 13de5e8: ldp    x20, x19, [sp], #0x20                    
 13de5ec: ret                                             

===== PveDetailMediator$$get_playerData @ 0x13de12c (112 bytes)
 13de12c: stp    x20, x19, [sp, #-0x20]!                  
 13de130: stp    x29, x30, [sp, #0x10]                    
 13de134: add    x29, sp, #0x10                           
 13de138: adrp   x20, #0x31d0000                          
 13de13c: ldrb   w8, [x20, #0x48b]                        
 13de140: mov    x19, x0                                  
 13de144: tbnz   w8, #0, #0x13de160                       
 13de148: adrp   x8, #0x3051000                           
 13de14c: ldr    x8, [x8, #0xf40]                         
 13de150: ldr    w0, [x8]                                 
 13de154: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de158: mov    w8, #1                                   
 13de15c: strb   w8, [x20, #0x48b]                        
 13de160: adrp   x8, #0x302a000                           
 13de164: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de168: ldr    x8, [x8]                                 
 13de16c: ldr    x8, [x8, #0xb8]                          
 13de170: ldr    x0, [x8]                                 
 13de174: cbz    x0, #0x13de18c                           
 13de178: ldp    x29, x30, [sp, #0x10]                    
 13de17c: mov    x1, x19                                  
 13de180: mov    x2, xzr                                  
 13de184: ldp    x20, x19, [sp], #0x20                    
 13de188: b      #0xc9f61c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp56
 13de18c: ldr    x0, [x19, #0x28]                         
 13de190: ldp    x29, x30, [sp, #0x10]                    
 13de194: ldp    x20, x19, [sp], #0x20                    
 13de198: ret                                             

===== PveDetailMediator$$get_view @ 0x13de314 (112 bytes)
 13de314: stp    x20, x19, [sp, #-0x20]!                  
 13de318: stp    x29, x30, [sp, #0x10]                    
 13de31c: add    x29, sp, #0x10                           
 13de320: adrp   x20, #0x31d0000                          
 13de324: ldrb   w8, [x20, #0x48f]                        
 13de328: mov    x19, x0                                  
 13de32c: tbnz   w8, #0, #0x13de348                       
 13de330: adrp   x8, #0x3056000                           
 13de334: ldr    x8, [x8, #0x4e8]                         
 13de338: ldr    w0, [x8]                                 
 13de33c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de340: mov    w8, #1                                   
 13de344: strb   w8, [x20, #0x48f]                        
 13de348: adrp   x8, #0x302a000                           
 13de34c: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de350: ldr    x8, [x8]                                 
 13de354: ldr    x8, [x8, #0xb8]                          
 13de358: ldr    x0, [x8, #0x20]                          
 13de35c: cbz    x0, #0x13de374                           
 13de360: ldp    x29, x30, [sp, #0x10]                    
 13de364: mov    x1, x19                                  
 13de368: mov    x2, xzr                                  
 13de36c: ldp    x20, x19, [sp], #0x20                    
 13de370: b      #0xcce8d0                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp384
 13de374: ldr    x0, [x19, #0x38]                         
 13de378: ldp    x29, x30, [sp, #0x10]                    
 13de37c: ldp    x20, x19, [sp], #0x20                    
 13de380: ret                                             

===== PveDetailMediator$$set_chapterData @ 0x13de478 (132 bytes)
 13de478: str    x21, [sp, #-0x30]!                       
 13de47c: stp    x20, x19, [sp, #0x10]                    
 13de480: stp    x29, x30, [sp, #0x20]                    
 13de484: add    x29, sp, #0x20                           
 13de488: adrp   x21, #0x31d0000                          
 13de48c: ldrb   w8, [x21, #0x492]                        
 13de490: mov    x19, x1                                  
 13de494: mov    x20, x0                                  
 13de498: tbnz   w8, #0, #0x13de4b4                       
 13de49c: adrp   x8, #0x3001000                           
 13de4a0: ldr    x8, [x8, #0xd88]                         
 13de4a4: ldr    w0, [x8]                                 
 13de4a8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de4ac: mov    w8, #1                                   
 13de4b0: strb   w8, [x21, #0x492]                        
 13de4b4: adrp   x8, #0x302a000                           
 13de4b8: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de4bc: ldr    x8, [x8]                                 
 13de4c0: ldr    x8, [x8, #0xb8]                          
 13de4c4: ldr    x0, [x8, #0x38]                          
 13de4c8: cbz    x0, #0x13de4e8                           
 13de4cc: mov    x1, x20                                  
 13de4d0: mov    x2, x19                                  
 13de4d4: ldp    x29, x30, [sp, #0x20]                    
 13de4d8: ldp    x20, x19, [sp, #0x10]                    
 13de4dc: mov    x3, xzr                                  
 13de4e0: ldr    x21, [sp], #0x30                         
 13de4e4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13de4e8: str    x19, [x20, #0x40]                        
 13de4ec: ldp    x29, x30, [sp, #0x20]                    
 13de4f0: ldp    x20, x19, [sp, #0x10]                    
 13de4f4: ldr    x21, [sp], #0x30                         
 13de4f8: ret                                             

===== PveDetailMediator$$set_mechaData @ 0x13de290 (132 bytes)
 13de290: str    x21, [sp, #-0x30]!                       
 13de294: stp    x20, x19, [sp, #0x10]                    
 13de298: stp    x29, x30, [sp, #0x20]                    
 13de29c: add    x29, sp, #0x20                           
 13de2a0: adrp   x21, #0x31d0000                          
 13de2a4: ldrb   w8, [x21, #0x48e]                        
 13de2a8: mov    x19, x1                                  
 13de2ac: mov    x20, x0                                  
 13de2b0: tbnz   w8, #0, #0x13de2cc                       
 13de2b4: adrp   x8, #0x2ff9000                           
 13de2b8: ldr    x8, [x8, #0xb68]                         
 13de2bc: ldr    w0, [x8]                                 
 13de2c0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de2c4: mov    w8, #1                                   
 13de2c8: strb   w8, [x21, #0x48e]                        
 13de2cc: adrp   x8, #0x302a000                           
 13de2d0: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de2d4: ldr    x8, [x8]                                 
 13de2d8: ldr    x8, [x8, #0xb8]                          
 13de2dc: ldr    x0, [x8, #0x18]                          
 13de2e0: cbz    x0, #0x13de300                           
 13de2e4: mov    x1, x20                                  
 13de2e8: mov    x2, x19                                  
 13de2ec: ldp    x29, x30, [sp, #0x20]                    
 13de2f0: ldp    x20, x19, [sp, #0x10]                    
 13de2f4: mov    x3, xzr                                  
 13de2f8: ldr    x21, [sp], #0x30                         
 13de2fc: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13de300: str    x19, [x20, #0x30]                        
 13de304: ldp    x29, x30, [sp, #0x20]                    
 13de308: ldp    x20, x19, [sp, #0x10]                    
 13de30c: ldr    x21, [sp], #0x30                         
 13de310: ret                                             

===== PveDetailMediator$$set_netDispatcher @ 0x13de4fc (132 bytes)
 13de4fc: str    x21, [sp, #-0x30]!                       
 13de500: stp    x20, x19, [sp, #0x10]                    
 13de504: stp    x29, x30, [sp, #0x20]                    
 13de508: add    x29, sp, #0x20                           
 13de50c: adrp   x21, #0x31d0000                          
 13de510: ldrb   w8, [x21, #0x493]                        
 13de514: mov    x19, x1                                  
 13de518: mov    x20, x0                                  
 13de51c: tbnz   w8, #0, #0x13de538                       
 13de520: adrp   x8, #0x3065000                           
 13de524: ldr    x8, [x8, #0xc30]                         
 13de528: ldr    w0, [x8]                                 
 13de52c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de530: mov    w8, #1                                   
 13de534: strb   w8, [x21, #0x493]                        
 13de538: adrp   x8, #0x302a000                           
 13de53c: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de540: ldr    x8, [x8]                                 
 13de544: ldr    x8, [x8, #0xb8]                          
 13de548: ldr    x0, [x8, #0x40]                          
 13de54c: cbz    x0, #0x13de56c                           
 13de550: mov    x1, x20                                  
 13de554: mov    x2, x19                                  
 13de558: ldp    x29, x30, [sp, #0x20]                    
 13de55c: ldp    x20, x19, [sp, #0x10]                    
 13de560: mov    x3, xzr                                  
 13de564: ldr    x21, [sp], #0x30                         
 13de568: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13de56c: str    x19, [x20, #0x48]                        
 13de570: ldp    x29, x30, [sp, #0x20]                    
 13de574: ldp    x20, x19, [sp, #0x10]                    
 13de578: ldr    x21, [sp], #0x30                         
 13de57c: ret                                             

===== PveDetailMediator$$set_playerData @ 0x13de19c (132 bytes)
 13de19c: str    x21, [sp, #-0x30]!                       
 13de1a0: stp    x20, x19, [sp, #0x10]                    
 13de1a4: stp    x29, x30, [sp, #0x20]                    
 13de1a8: add    x29, sp, #0x20                           
 13de1ac: adrp   x21, #0x31d0000                          
 13de1b0: ldrb   w8, [x21, #0x48c]                        
 13de1b4: mov    x19, x1                                  
 13de1b8: mov    x20, x0                                  
 13de1bc: tbnz   w8, #0, #0x13de1d8                       
 13de1c0: adrp   x8, #0x301b000                           
 13de1c4: ldr    x8, [x8, #0x738]                         
 13de1c8: ldr    w0, [x8]                                 
 13de1cc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de1d0: mov    w8, #1                                   
 13de1d4: strb   w8, [x21, #0x48c]                        
 13de1d8: adrp   x8, #0x302a000                           
 13de1dc: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de1e0: ldr    x8, [x8]                                 
 13de1e4: ldr    x8, [x8, #0xb8]                          
 13de1e8: ldr    x0, [x8, #8]                             
 13de1ec: cbz    x0, #0x13de20c                           
 13de1f0: mov    x1, x20                                  
 13de1f4: mov    x2, x19                                  
 13de1f8: ldp    x29, x30, [sp, #0x20]                    
 13de1fc: ldp    x20, x19, [sp, #0x10]                    
 13de200: mov    x3, xzr                                  
 13de204: ldr    x21, [sp], #0x30                         
 13de208: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13de20c: str    x19, [x20, #0x28]                        
 13de210: ldp    x29, x30, [sp, #0x20]                    
 13de214: ldp    x20, x19, [sp, #0x10]                    
 13de218: ldr    x21, [sp], #0x30                         
 13de21c: ret                                             

===== PveDetailMediator$$set_view @ 0x13de384 (132 bytes)
 13de384: str    x21, [sp, #-0x30]!                       
 13de388: stp    x20, x19, [sp, #0x10]                    
 13de38c: stp    x29, x30, [sp, #0x20]                    
 13de390: add    x29, sp, #0x20                           
 13de394: adrp   x21, #0x31d0000                          
 13de398: ldrb   w8, [x21, #0x490]                        
 13de39c: mov    x19, x1                                  
 13de3a0: mov    x20, x0                                  
 13de3a4: tbnz   w8, #0, #0x13de3c0                       
 13de3a8: adrp   x8, #0x3030000                           
 13de3ac: ldr    x8, [x8, #0xad8]                         
 13de3b0: ldr    w0, [x8]                                 
 13de3b4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
 13de3b8: mov    w8, #1                                   
 13de3bc: strb   w8, [x21, #0x490]                        
 13de3c0: adrp   x8, #0x302a000                           
 13de3c4: ldr    x8, [x8, #0x810]                         ; META PveDetailMediator_TypeInfo
 13de3c8: ldr    x8, [x8]                                 
 13de3cc: ldr    x8, [x8, #0xb8]                          
 13de3d0: ldr    x0, [x8, #0x28]                          
 13de3d4: cbz    x0, #0x13de3f4                           
 13de3d8: mov    x1, x20                                  
 13de3dc: mov    x2, x19                                  
 13de3e0: ldp    x29, x30, [sp, #0x20]                    
 13de3e4: ldp    x20, x19, [sp, #0x10]                    
 13de3e8: mov    x3, xzr                                  
 13de3ec: ldr    x21, [sp], #0x30                         
 13de3f0: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
 13de3f4: str    x19, [x20, #0x38]                        
 13de3f8: ldp    x29, x30, [sp, #0x20]                    
 13de3fc: ldp    x20, x19, [sp, #0x10]                    
 13de400: ldr    x21, [sp], #0x30                         
 13de404: ret                                             
