
===== BootMediator$$.ctor @ 0xe92f1c (120 bytes)
  e92f1c: stp    x20, x19, [sp, #-0x20]!                  
  e92f20: stp    x29, x30, [sp, #0x10]                    
  e92f24: add    x29, sp, #0x10                           
  e92f28: adrp   x20, #0x31cd000                          
  e92f2c: ldrb   w8, [x20, #0x57b]                        
  e92f30: mov    x19, x0                                  
  e92f34: tbnz   w8, #0, #0xe92f50                        
  e92f38: adrp   x8, #0x2fc1000                           
  e92f3c: ldr    x8, [x8, #0x340]                         
  e92f40: ldr    w0, [x8]                                 
  e92f44: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92f48: mov    w8, #1                                   
  e92f4c: strb   w8, [x20, #0x57b]                        
  e92f50: mov    x0, x19                                  
  e92f54: mov    x1, xzr                                  
  e92f58: bl     #0x17da330                               ; strange.extensions.mediation.impl.EventMediator$$.ctor
  e92f5c: adrp   x8, #0x3030000                           
  e92f60: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92f64: ldr    x8, [x8]                                 
  e92f68: ldr    x8, [x8, #0xb8]                          
  e92f6c: ldr    x0, [x8, #0xd0]                          
  e92f70: cbz    x0, #0xe92f88                            
  e92f74: ldp    x29, x30, [sp, #0x10]                    
  e92f78: mov    x1, x19                                  
  e92f7c: mov    x2, xzr                                  
  e92f80: ldp    x20, x19, [sp], #0x20                    
  e92f84: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e92f88: ldp    x29, x30, [sp, #0x10]                    
  e92f8c: ldp    x20, x19, [sp], #0x20                    
  e92f90: ret                                             

===== BootMediator$$<>xLuaBaseProxy_OnRegister @ 0xe92f9c (8 bytes)
  e92f9c: mov    x1, xzr                                  
  e92fa0: b      #0x17dbb2c                               ; strange.extensions.mediation.impl.Mediator$$OnRegister

===== BootMediator$$<>xLuaBaseProxy_OnRemove @ 0xe92fa4 (8 bytes)
  e92fa4: mov    x1, xzr                                  
  e92fa8: b      #0x17dbb98                               ; strange.extensions.mediation.impl.Mediator$$OnRemove

===== BootMediator$$<BeginDownloadAsset>b__11_0 @ 0xe92f94 (8 bytes)
  e92f94: mov    w1, #2                                   
  e92f98: b      #0xe91024                                ; BootMediator$$OnVersionCheckFinished

===== BootMediator$$BeginBoot @ 0xe90b1c (280 bytes)
  e90b1c: str    x21, [sp, #-0x30]!                       
  e90b20: stp    x20, x19, [sp, #0x10]                    
  e90b24: stp    x29, x30, [sp, #0x20]                    
  e90b28: add    x29, sp, #0x20                           
  e90b2c: adrp   x20, #0x31cd000                          
  e90b30: ldrb   w8, [x20, #0x565]                        
  e90b34: mov    x19, x0                                  
  e90b38: tbnz   w8, #0, #0xe90b54                        
  e90b3c: adrp   x8, #0x2fc5000                           
  e90b40: ldr    x8, [x8, #0x880]                         
  e90b44: ldr    w0, [x8]                                 
  e90b48: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e90b4c: mov    w8, #1                                   
  e90b50: strb   w8, [x20, #0x565]                        
  e90b54: adrp   x8, #0x3030000                           
  e90b58: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e90b5c: ldr    x8, [x8]                                 
  e90b60: ldr    x8, [x8, #0xb8]                          
  e90b64: ldr    x0, [x8, #0x20]                          
  e90b68: cbz    x0, #0xe90b84                            
  e90b6c: mov    x1, x19                                  
  e90b70: ldp    x29, x30, [sp, #0x20]                    
  e90b74: ldp    x20, x19, [sp, #0x10]                    
  e90b78: mov    x2, xzr                                  
  e90b7c: ldr    x21, [sp], #0x30                         
  e90b80: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e90b84: mov    x0, x19                                  
  e90b88: bl     #0xe90110                                ; BootMediator$$get_view
  e90b8c: mov    x20, x0                                  
  e90b90: cbnz   x20, #0xe90b98                           
  e90b94: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90b98: mov    x0, x20                                  
  e90b9c: bl     #0xe90c34                                ; BootView$$CompareVersion
  e90ba0: adrp   x8, #0x303a000                           
  e90ba4: ldr    x8, [x8, #0xcd0]                         ; META VersionChecker_TypeInfo
  e90ba8: ldr    x0, [x8]                                 
  e90bac: ldrb   w8, [x0, #0x127]                         
  e90bb0: tbz    w8, #1, #0xe90bc0                        
  e90bb4: ldr    w8, [x0, #0xd8]                          
  e90bb8: cbnz   w8, #0xe90bc0                            
  e90bbc: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90bc0: mov    x0, xzr                                  
  e90bc4: bl     #0x11f7de8                               ; VersionChecker$$Get
  e90bc8: adrp   x8, #0x3039000                           
  e90bcc: ldr    x8, [x8, #0x730]                         ; META System.Action<VersionCheckEvent>_TypeInfo
  e90bd0: mov    x20, x0                                  
  e90bd4: ldr    x8, [x8]                                 
  e90bd8: mov    x0, x8                                   
  e90bdc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90be0: adrp   x8, #0x3055000                           
  e90be4: adrp   x9, #0x2ff0000                           
  e90be8: ldr    x8, [x8, #0x5c8]                         ; MMETH Method$BootMediator.OnVersionCheckFinished()
  e90bec: ldr    x9, [x9, #0x1a0]                         ; MMETH Method$System.Action<VersionCheckEvent>..ctor()
  e90bf0: mov    x1, x19                                  
  e90bf4: mov    x21, x0                                  
  e90bf8: ldr    x2, [x8]                                 
  e90bfc: ldr    x3, [x9]                                 
  e90c00: bl     #0x1f6e110                               ; System.Action<VersionCheckEvent>$$.ctor
  e90c04: cbnz   x20, #0xe90c10                           
  e90c08: mov    x0, xzr                                  
  e90c0c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90c10: mov    x0, x20                                  
  e90c14: mov    x1, x21                                  
  e90c18: mov    x2, xzr                                  
  e90c1c: bl     #0x11f7e88                               ; VersionChecker$$Initialize
  e90c20: mov    x0, x19                                  
  e90c24: ldp    x29, x30, [sp, #0x20]                    
  e90c28: ldp    x20, x19, [sp, #0x10]                    
  e90c2c: ldr    x21, [sp], #0x30                         
  e90c30: b      #0xe90d48                                ; BootMediator$$RemoveOldVersion

===== BootMediator$$BeginDownloadAsset @ 0xe91318 (228 bytes)
  e91318: str    x21, [sp, #-0x30]!                       
  e9131c: stp    x20, x19, [sp, #0x10]                    
  e91320: stp    x29, x30, [sp, #0x20]                    
  e91324: add    x29, sp, #0x20                           
  e91328: adrp   x20, #0x31cd000                          
  e9132c: ldrb   w8, [x20, #0x569]                        
  e91330: mov    x19, x0                                  
  e91334: tbnz   w8, #0, #0xe91350                        
  e91338: adrp   x8, #0x301f000                           
  e9133c: ldr    x8, [x8, #0x1d8]                         
  e91340: ldr    w0, [x8]                                 
  e91344: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91348: mov    w8, #1                                   
  e9134c: strb   w8, [x20, #0x569]                        
  e91350: adrp   x8, #0x3030000                           
  e91354: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91358: ldr    x8, [x8]                                 
  e9135c: ldr    x8, [x8, #0xb8]                          
  e91360: ldr    x0, [x8, #0x40]                          
  e91364: cbz    x0, #0xe91380                            
  e91368: mov    x1, x19                                  
  e9136c: ldp    x29, x30, [sp, #0x20]                    
  e91370: ldp    x20, x19, [sp, #0x10]                    
  e91374: mov    x2, xzr                                  
  e91378: ldr    x21, [sp], #0x30                         
  e9137c: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e91380: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e91384: adrp   x8, #0x305b000                           
  e91388: ldr    x8, [x8, #0x7c8]                         ; META System.Action_TypeInfo
  e9138c: mov    x20, x0                                  
  e91390: ldr    x8, [x8]                                 
  e91394: mov    x0, x8                                   
  e91398: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e9139c: adrp   x8, #0x2fcd000                           
  e913a0: ldr    x8, [x8, #0x78]                          ; MMETH Method$BootMediator.<BeginDownloadAsset>b__11_0()
  e913a4: mov    x1, x19                                  
  e913a8: mov    x3, xzr                                  
  e913ac: mov    x21, x0                                  
  e913b0: ldr    x2, [x8]                                 
  e913b4: bl     #0x19b1360                               ; System.Action$$.ctor
  e913b8: cbnz   x20, #0xe913c4                           
  e913bc: mov    x0, xzr                                  
  e913c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e913c4: mov    x0, x20                                  
  e913c8: mov    x1, x21                                  
  e913cc: mov    x2, xzr                                  
  e913d0: bl     #0x1b7ed30                               ; UniCore.UpdateManager$$BeginDownload
  e913d4: mov    x0, x19                                  
  e913d8: bl     #0xe90110                                ; BootMediator$$get_view
  e913dc: mov    x19, x0                                  
  e913e0: cbnz   x19, #0xe913e8                           
  e913e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e913e8: mov    x0, x19                                  
  e913ec: ldp    x29, x30, [sp, #0x20]                    
  e913f0: ldp    x20, x19, [sp, #0x10]                    
  e913f4: ldr    x21, [sp], #0x30                         
  e913f8: b      #0xe91e7c                                ; BootView$$UpdateProgress

===== BootMediator$$CachedFileFolder @ 0xe92d70 (264 bytes)
  e92d70: stp    x20, x19, [sp, #-0x20]!                  
  e92d74: stp    x29, x30, [sp, #0x10]                    
  e92d78: add    x29, sp, #0x10                           
  e92d7c: adrp   x20, #0x31cd000                          
  e92d80: ldrb   w8, [x20, #0x578]                        
  e92d84: mov    x19, x0                                  
  e92d88: tbnz   w8, #0, #0xe92da4                        
  e92d8c: adrp   x8, #0x2fc9000                           
  e92d90: ldr    x8, [x8, #0xa0]                          
  e92d94: ldr    w0, [x8]                                 
  e92d98: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92d9c: mov    w8, #1                                   
  e92da0: strb   w8, [x20, #0x578]                        
  e92da4: adrp   x8, #0x3030000                           
  e92da8: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92dac: ldr    x8, [x8]                                 
  e92db0: ldr    x8, [x8, #0xb8]                          
  e92db4: ldr    x0, [x8, #0xb8]                          
  e92db8: cbz    x0, #0xe92dd0                            
  e92dbc: ldp    x29, x30, [sp, #0x10]                    
  e92dc0: mov    x1, x19                                  
  e92dc4: mov    x2, xzr                                  
  e92dc8: ldp    x20, x19, [sp], #0x20                    
  e92dcc: b      #0xca7420                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp109
  e92dd0: adrp   x19, #0x302c000                          
  e92dd4: ldr    x19, [x19, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  e92dd8: ldr    x0, [x19]                                
  e92ddc: ldrb   w8, [x0, #0x127]                         
  e92de0: tbz    w8, #1, #0xe92df4                        
  e92de4: ldr    w8, [x0, #0xd8]                          
  e92de8: cbnz   w8, #0xe92df4                            
  e92dec: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92df0: ldr    x0, [x19]                                
  e92df4: ldr    x8, [x0, #0xb8]                          
  e92df8: mov    x0, xzr                                  
  e92dfc: ldr    x19, [x8, #8]                            
  e92e00: bl     #0x1e6cd04                               ; UnityEngine.Application$$get_isMobilePlatform
  e92e04: tbz    w0, #0, #0xe92e58                        
  e92e08: adrp   x8, #0x3049000                           
  e92e0c: ldr    x8, [x8, #0x350]                         ; META UniCore.FileUtils_TypeInfo
  e92e10: ldr    x0, [x8]                                 
  e92e14: ldrb   w8, [x0, #0x127]                         
  e92e18: tbz    w8, #1, #0xe92e28                        
  e92e1c: ldr    w8, [x0, #0xd8]                          
  e92e20: cbnz   w8, #0xe92e28                            
  e92e24: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92e28: mov    x0, xzr                                  
  e92e2c: bl     #0x1352ff4                               ; UniCore.FileUtils$$get_PersistentDataPath
  e92e30: adrp   x8, #0x3015000                           
  e92e34: ldr    x8, [x8, #0x748]                         ; STR "{0}/Updates/{1}"
  e92e38: ldp    x29, x30, [sp, #0x10]                    
  e92e3c: mov    x1, x0                                   
  e92e40: mov    x2, x19                                  
  e92e44: ldr    x8, [x8]                                 
  e92e48: mov    x3, xzr                                  
  e92e4c: mov    x0, x8                                   
  e92e50: ldp    x20, x19, [sp], #0x20                    
  e92e54: b      #0x1c6d67c                               ; System.String$$Format
  e92e58: adrp   x8, #0x301c000                           
  e92e5c: ldr    x8, [x8, #0x560]                         ; STR "Updates/{0}"
  e92e60: ldp    x29, x30, [sp, #0x10]                    
  e92e64: mov    x1, x19                                  
  e92e68: mov    x2, xzr                                  
  e92e6c: ldr    x0, [x8]                                 
  e92e70: ldp    x20, x19, [sp], #0x20                    
  e92e74: b      #0x1c6d4d8                               ; System.String$$Format

===== BootMediator$$CachedFilePath @ 0xe92e78 (164 bytes)
  e92e78: str    x21, [sp, #-0x30]!                       
  e92e7c: stp    x20, x19, [sp, #0x10]                    
  e92e80: stp    x29, x30, [sp, #0x20]                    
  e92e84: add    x29, sp, #0x20                           
  e92e88: adrp   x21, #0x31cd000                          
  e92e8c: ldrb   w8, [x21, #0x579]                        
  e92e90: mov    x19, x1                                  
  e92e94: mov    x20, x0                                  
  e92e98: tbnz   w8, #0, #0xe92eb4                        
  e92e9c: adrp   x8, #0x3054000                           
  e92ea0: ldr    x8, [x8, #0x580]                         
  e92ea4: ldr    w0, [x8]                                 
  e92ea8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92eac: mov    w8, #1                                   
  e92eb0: strb   w8, [x21, #0x579]                        
  e92eb4: adrp   x8, #0x3030000                           
  e92eb8: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92ebc: ldr    x8, [x8]                                 
  e92ec0: ldr    x8, [x8, #0xb8]                          
  e92ec4: ldr    x0, [x8, #0xc0]                          
  e92ec8: cbz    x0, #0xe92ee8                            
  e92ecc: mov    x1, x20                                  
  e92ed0: mov    x2, x19                                  
  e92ed4: ldp    x29, x30, [sp, #0x20]                    
  e92ed8: ldp    x20, x19, [sp, #0x10]                    
  e92edc: mov    x3, xzr                                  
  e92ee0: ldr    x21, [sp], #0x30                         
  e92ee4: b      #0xcb5adc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp211
  e92ee8: mov    x0, x20                                  
  e92eec: bl     #0xe92d70                                ; BootMediator$$CachedFileFolder
  e92ef0: adrp   x8, #0x2fe1000                           
  e92ef4: ldr    x8, [x8, #0xf28]                         ; STR "{0}/{1}"
  e92ef8: mov    x2, x19                                  
  e92efc: ldp    x29, x30, [sp, #0x20]                    
  e92f00: ldp    x20, x19, [sp, #0x10]                    
  e92f04: ldr    x8, [x8]                                 
  e92f08: mov    x1, x0                                   
  e92f0c: mov    x3, xzr                                  
  e92f10: mov    x0, x8                                   
  e92f14: ldr    x21, [sp], #0x30                         
  e92f18: b      #0x1c6d67c                               ; System.String$$Format

===== BootMediator$$DownLoadServerList @ 0xe91188 (400 bytes)
  e91188: str    x21, [sp, #-0x30]!                       
  e9118c: stp    x20, x19, [sp, #0x10]                    
  e91190: stp    x29, x30, [sp, #0x20]                    
  e91194: add    x29, sp, #0x20                           
  e91198: adrp   x20, #0x31cd000                          
  e9119c: ldrb   w8, [x20, #0x568]                        
  e911a0: mov    x19, x0                                  
  e911a4: tbnz   w8, #0, #0xe911c0                        
  e911a8: adrp   x8, #0x2ff2000                           
  e911ac: ldr    x8, [x8, #0xb10]                         
  e911b0: ldr    w0, [x8]                                 
  e911b4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e911b8: mov    w8, #1                                   
  e911bc: strb   w8, [x20, #0x568]                        
  e911c0: adrp   x8, #0x3030000                           
  e911c4: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e911c8: ldr    x8, [x8]                                 
  e911cc: ldr    x8, [x8, #0xb8]                          
  e911d0: ldr    x0, [x8, #0x38]                          
  e911d4: cbz    x0, #0xe911f0                            
  e911d8: mov    x1, x19                                  
  e911dc: ldp    x29, x30, [sp, #0x20]                    
  e911e0: ldp    x20, x19, [sp, #0x10]                    
  e911e4: mov    x2, xzr                                  
  e911e8: ldr    x21, [sp], #0x30                         
  e911ec: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e911f0: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e911f4: mov    x20, x0                                  
  e911f8: cbnz   x20, #0xe91200                           
  e911fc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91200: mov    x0, x20                                  
  e91204: mov    x1, xzr                                  
  e91208: bl     #0x1b7ef28                               ; UniCore.UpdateManager$$GetError
  e9120c: mov    x1, xzr                                  
  e91210: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  e91214: tbz    w0, #0, #0xe91304                        
  e91218: mov    x0, x19                                  
  e9121c: bl     #0xe90110                                ; BootMediator$$get_view
  e91220: mov    x20, x0                                  
  e91224: cbnz   x20, #0xe9122c                           
  e91228: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e9122c: adrp   x8, #0x303e000                           
  e91230: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  e91234: ldr    x20, [x20, #0x58]                        
  e91238: ldr    x0, [x8]                                 
  e9123c: ldrb   w8, [x0, #0x127]                         
  e91240: tbz    w8, #1, #0xe91250                        
  e91244: ldr    w8, [x0, #0xd8]                          
  e91248: cbnz   w8, #0xe91250                            
  e9124c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e91250: adrp   x8, #0x3048000                           
  e91254: ldr    x8, [x8, #0x380]                         ; STR "GLOBAL_SERVERLIST_DOWNLOADING"
  e91258: mov    x1, xzr                                  
  e9125c: ldr    x0, [x8]                                 
  e91260: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  e91264: mov    x21, x0                                  
  e91268: cbnz   x20, #0xe91274                           
  e9126c: mov    x0, xzr                                  
  e91270: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91274: ldr    x8, [x20]                                
  e91278: mov    x0, x20                                  
  e9127c: mov    x1, x21                                  
  e91280: ldr    x9, [x8, #0x5b8]                         
  e91284: ldr    x2, [x8, #0x5c0]                         
  e91288: blr    x9                                       
  e9128c: mov    x0, xzr                                  
  e91290: bl     #0x10ac128                               ; Downloader$$Get
  e91294: adrp   x8, #0x3073000                           
  e91298: ldr    x8, [x8, #0x798]                         ; META System.Action<string>_TypeInfo
  e9129c: mov    x20, x0                                  
  e912a0: ldr    x8, [x8]                                 
  e912a4: mov    x0, x8                                   
  e912a8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e912ac: adrp   x8, #0x2fc7000                           
  e912b0: adrp   x9, #0x3038000                           
  e912b4: ldr    x8, [x8, #0xbb0]                         ; MMETH Method$BootMediator.OnGetServerList()
  e912b8: ldr    x9, [x9, #0x860]                         ; MMETH Method$System.Action<string>..ctor()
  e912bc: mov    x1, x19                                  
  e912c0: mov    x21, x0                                  
  e912c4: ldr    x2, [x8]                                 
  e912c8: ldr    x3, [x9]                                 
  e912cc: bl     #0x1f6f4d8                               ; System.Action<ImplicitBinder.ImplicitBindingVO>$$.ctor
  e912d0: cbnz   x20, #0xe912dc                           
  e912d4: mov    x0, xzr                                  
  e912d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e912dc: adrp   x8, #0x2feb000                           
  e912e0: ldr    x8, [x8, #0xe8]                          ; STR "serverlist.txt"
  e912e4: mov    x0, x20                                  
  e912e8: ldp    x29, x30, [sp, #0x20]                    
  e912ec: ldp    x20, x19, [sp, #0x10]                    
  e912f0: ldr    x1, [x8]                                 
  e912f4: mov    x2, x21                                  
  e912f8: mov    x3, xzr                                  
  e912fc: ldr    x21, [sp], #0x30                         
  e91300: b      #0x10ac318                               ; Downloader$$DownloadAndCacheText
  e91304: mov    x0, x19                                  
  e91308: ldp    x29, x30, [sp, #0x20]                    
  e9130c: ldp    x20, x19, [sp, #0x10]                    
  e91310: ldr    x21, [sp], #0x30                         
  e91314: b      #0xe915a4                                ; BootMediator$$Reboot

===== BootMediator$$DownloadApk @ 0xe91694 (444 bytes)
  e91694: str    x21, [sp, #-0x30]!                       
  e91698: stp    x20, x19, [sp, #0x10]                    
  e9169c: stp    x29, x30, [sp, #0x20]                    
  e916a0: add    x29, sp, #0x20                           
  e916a4: adrp   x20, #0x31cd000                          
  e916a8: ldrb   w8, [x20, #0x56c]                        
  e916ac: mov    x19, x0                                  
  e916b0: tbnz   w8, #0, #0xe916cc                        
  e916b4: adrp   x8, #0x2fc0000                           
  e916b8: ldr    x8, [x8, #0x7e0]                         
  e916bc: ldr    w0, [x8]                                 
  e916c0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e916c4: mov    w8, #1                                   
  e916c8: strb   w8, [x20, #0x56c]                        
  e916cc: adrp   x8, #0x3030000                           
  e916d0: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e916d4: ldr    x8, [x8]                                 
  e916d8: ldr    x8, [x8, #0xb8]                          
  e916dc: ldr    x0, [x8, #0x58]                          
  e916e0: cbz    x0, #0xe916fc                            
  e916e4: mov    x1, x19                                  
  e916e8: ldp    x29, x30, [sp, #0x20]                    
  e916ec: ldp    x20, x19, [sp, #0x10]                    
  e916f0: mov    x2, xzr                                  
  e916f4: ldr    x21, [sp], #0x30                         
  e916f8: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e916fc: mov    x0, x19                                  
  e91700: mov    x1, xzr                                  
  e91704: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e91708: adrp   x8, #0x305a000                           
  e9170c: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  e91710: mov    x19, x0                                  
  e91714: mov    w1, #2                                   
  e91718: ldr    x8, [x8]                                 
  e9171c: mov    x0, x8                                   
  e91720: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e91724: mov    x20, x0                                  
  e91728: cbnz   x20, #0xe91730                           
  e9172c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91730: adrp   x21, #0x2fee000                          
  e91734: ldr    x21, [x21, #0x468]                       ; STR "UPDATE_DOWNLOAD_APK"
  e91738: ldr    x0, [x21]                                
  e9173c: cbz    x0, #0xe91760                            
  e91740: ldr    x8, [x20]                                
  e91744: ldr    x1, [x8, #0x40]                          
  e91748: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e9174c: cbnz   x0, #0xe91760                            
  e91750: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e91754: mov    x1, xzr                                  
  e91758: mov    x2, xzr                                  
  e9175c: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91760: ldr    w8, [x20, #0x18]                         
  e91764: ldr    x21, [x21]                               
  e91768: cbnz   w8, #0xe9177c                            
  e9176c: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e91770: mov    x1, xzr                                  
  e91774: mov    x2, xzr                                  
  e91778: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e9177c: str    x21, [x20, #0x20]                        
  e91780: adrp   x8, #0x303a000                           
  e91784: ldr    x8, [x8, #0xcd0]                         ; META VersionChecker_TypeInfo
  e91788: ldr    x0, [x8]                                 
  e9178c: ldrb   w8, [x0, #0x127]                         
  e91790: tbz    w8, #1, #0xe917a0                        
  e91794: ldr    w8, [x0, #0xd8]                          
  e91798: cbnz   w8, #0xe917a0                            
  e9179c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e917a0: mov    x0, xzr                                  
  e917a4: bl     #0x11f7de8                               ; VersionChecker$$Get
  e917a8: mov    x21, x0                                  
  e917ac: cbnz   x21, #0xe917b4                           
  e917b0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e917b4: mov    x0, x21                                  
  e917b8: mov    x1, xzr                                  
  e917bc: bl     #0x11f7a78                               ; VersionChecker$$get_AppSize
  e917c0: adrp   x8, #0x3070000                           
  e917c4: ldr    x8, [x8, #0xd20]                         ; META long_TypeInfo
  e917c8: str    x0, [sp, #8]                             
  e917cc: add    x1, sp, #8                               
  e917d0: ldr    x8, [x8]                                 
  e917d4: mov    x0, x8                                   
  e917d8: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e917dc: mov    x21, x0                                  
  e917e0: cbz    x21, #0xe91808                           
  e917e4: ldr    x8, [x20]                                
  e917e8: mov    x0, x21                                  
  e917ec: ldr    x1, [x8, #0x40]                          
  e917f0: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e917f4: cbnz   x0, #0xe91808                            
  e917f8: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e917fc: mov    x1, xzr                                  
  e91800: mov    x2, xzr                                  
  e91804: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91808: ldr    w8, [x20, #0x18]                         
  e9180c: cmp    w8, #1                                   
  e91810: b.hi   #0xe91824                                
  e91814: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e91818: mov    x1, xzr                                  
  e9181c: mov    x2, xzr                                  
  e91820: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91824: str    x21, [x20, #0x28]                        
  e91828: adrp   x8, #0x2ff5000                           
  e9182c: ldr    x8, [x8, #0xec0]                         ; MMETH Method$EventDispatcherExtension.Open<UpdateMessage>()
  e91830: mov    x0, x19                                  
  e91834: mov    x1, x20                                  
  e91838: ldr    x2, [x8]                                 
  e9183c: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  e91840: ldp    x29, x30, [sp, #0x20]                    
  e91844: ldp    x20, x19, [sp, #0x10]                    
  e91848: ldr    x21, [sp], #0x30                         
  e9184c: ret                                             

===== BootMediator$$DownloadLargeFile @ 0xe92444 (204 bytes)
  e92444: str    x21, [sp, #-0x30]!                       
  e92448: stp    x20, x19, [sp, #0x10]                    
  e9244c: stp    x29, x30, [sp, #0x20]                    
  e92450: add    x29, sp, #0x20                           
  e92454: adrp   x21, #0x31cd000                          
  e92458: ldrb   w8, [x21, #0x576]                        
  e9245c: mov    x19, x1                                  
  e92460: mov    x20, x0                                  
  e92464: tbnz   w8, #0, #0xe92480                        
  e92468: adrp   x8, #0x2fdd000                           
  e9246c: ldr    x8, [x8, #0xe08]                         
  e92470: ldr    w0, [x8]                                 
  e92474: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92478: mov    w8, #1                                   
  e9247c: strb   w8, [x21, #0x576]                        
  e92480: adrp   x8, #0x3030000                           
  e92484: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92488: ldr    x8, [x8]                                 
  e9248c: ldr    x8, [x8, #0xb8]                          
  e92490: ldr    x0, [x8, #0xa8]                          
  e92494: cbz    x0, #0xe924b4                            
  e92498: mov    x1, x20                                  
  e9249c: mov    x2, x19                                  
  e924a0: ldp    x29, x30, [sp, #0x20]                    
  e924a4: ldp    x20, x19, [sp, #0x10]                    
  e924a8: mov    x3, xzr                                  
  e924ac: ldr    x21, [sp], #0x30                         
  e924b0: b      #0xcb1db8                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp184
  e924b4: adrp   x8, #0x300e000                           
  e924b8: ldr    x8, [x8, #0x270]                         ; META BootMediator.<DownloadLargeFile>d__24_TypeInfo
  e924bc: ldr    x0, [x8]                                 
  e924c0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e924c4: mov    x1, xzr                                  
  e924c8: mov    x21, x0                                  
  e924cc: bl     #0x1ca54c0                               ; System.Object$$.ctor
  e924d0: str    wzr, [x21, #0x10]                        
  e924d4: cbz    x21, #0xe924e0                           
  e924d8: str    x20, [x21, #0x28]                        
  e924dc: b      #0xe924f8                                
  e924e0: mov    x0, xzr                                  
  e924e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e924e8: mov    w8, #0x28                                
  e924ec: mov    x0, xzr                                  
  e924f0: str    x20, [x8]                                
  e924f4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e924f8: str    x19, [x21, #0x20]                        
  e924fc: ldp    x29, x30, [sp, #0x20]                    
  e92500: ldp    x20, x19, [sp, #0x10]                    
  e92504: mov    x0, x21                                  
  e92508: ldr    x21, [sp], #0x30                         
  e9250c: ret                                             

===== BootMediator$$InitializationCompleted @ 0xe91e04 (120 bytes)
  e91e04: stp    x20, x19, [sp, #-0x20]!                  
  e91e08: stp    x29, x30, [sp, #0x10]                    
  e91e0c: add    x29, sp, #0x10                           
  e91e10: adrp   x20, #0x31cd000                          
  e91e14: ldrb   w8, [x20, #0x572]                        
  e91e18: mov    x19, x0                                  
  e91e1c: tbnz   w8, #0, #0xe91e38                        
  e91e20: adrp   x8, #0x3035000                           
  e91e24: ldr    x8, [x8, #0xd60]                         
  e91e28: ldr    w0, [x8]                                 
  e91e2c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91e30: mov    w8, #1                                   
  e91e34: strb   w8, [x20, #0x572]                        
  e91e38: adrp   x8, #0x3030000                           
  e91e3c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91e40: ldr    x8, [x8]                                 
  e91e44: ldr    x8, [x8, #0xb8]                          
  e91e48: ldr    x0, [x8, #0x88]                          
  e91e4c: cbz    x0, #0xe91e64                            
  e91e50: ldp    x29, x30, [sp, #0x10]                    
  e91e54: mov    x1, x19                                  
  e91e58: mov    x2, xzr                                  
  e91e5c: ldp    x20, x19, [sp], #0x20                    
  e91e60: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e91e64: mov    x0, x19                                  
  e91e68: bl     #0xe926a8                                ; BootMediator$$LoadLuaScripts
  e91e6c: ldp    x29, x30, [sp, #0x10]                    
  e91e70: mov    x0, x19                                  
  e91e74: ldp    x20, x19, [sp], #0x20                    
  e91e78: b      #0xe92824                                ; BootMediator$$LoadConfig

===== BootMediator$$InstallApk @ 0xe91850 (272 bytes)
  e91850: str    x21, [sp, #-0x30]!                       
  e91854: stp    x20, x19, [sp, #0x10]                    
  e91858: stp    x29, x30, [sp, #0x20]                    
  e9185c: add    x29, sp, #0x20                           
  e91860: adrp   x20, #0x31cd000                          
  e91864: ldrb   w8, [x20, #0x56d]                        
  e91868: mov    x19, x0                                  
  e9186c: tbnz   w8, #0, #0xe91888                        
  e91870: adrp   x8, #0x305c000                           
  e91874: ldr    x8, [x8, #0x838]                         
  e91878: ldr    w0, [x8]                                 
  e9187c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91880: mov    w8, #1                                   
  e91884: strb   w8, [x20, #0x56d]                        
  e91888: adrp   x8, #0x3030000                           
  e9188c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91890: ldr    x8, [x8]                                 
  e91894: ldr    x8, [x8, #0xb8]                          
  e91898: ldr    x0, [x8, #0x60]                          
  e9189c: cbz    x0, #0xe918b8                            
  e918a0: mov    x1, x19                                  
  e918a4: ldp    x29, x30, [sp, #0x20]                    
  e918a8: ldp    x20, x19, [sp, #0x10]                    
  e918ac: mov    x2, xzr                                  
  e918b0: ldr    x21, [sp], #0x30                         
  e918b4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e918b8: mov    x0, x19                                  
  e918bc: mov    x1, xzr                                  
  e918c0: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e918c4: adrp   x8, #0x305a000                           
  e918c8: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  e918cc: mov    x19, x0                                  
  e918d0: mov    w1, #1                                   
  e918d4: ldr    x8, [x8]                                 
  e918d8: mov    x0, x8                                   
  e918dc: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e918e0: mov    x20, x0                                  
  e918e4: cbnz   x20, #0xe918ec                           
  e918e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e918ec: adrp   x21, #0x306f000                          
  e918f0: ldr    x21, [x21, #0xc98]                       ; STR "UPDATE_INSTALL_APK"
  e918f4: ldr    x0, [x21]                                
  e918f8: cbz    x0, #0xe9191c                            
  e918fc: ldr    x8, [x20]                                
  e91900: ldr    x1, [x8, #0x40]                          
  e91904: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e91908: cbnz   x0, #0xe9191c                            
  e9190c: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e91910: mov    x1, xzr                                  
  e91914: mov    x2, xzr                                  
  e91918: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e9191c: ldr    w8, [x20, #0x18]                         
  e91920: ldr    x21, [x21]                               
  e91924: cbnz   w8, #0xe91938                            
  e91928: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e9192c: mov    x1, xzr                                  
  e91930: mov    x2, xzr                                  
  e91934: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91938: str    x21, [x20, #0x20]                        
  e9193c: adrp   x8, #0x2ff5000                           
  e91940: ldr    x8, [x8, #0xec0]                         ; MMETH Method$EventDispatcherExtension.Open<UpdateMessage>()
  e91944: mov    x0, x19                                  
  e91948: mov    x1, x20                                  
  e9194c: ldp    x29, x30, [sp, #0x20]                    
  e91950: ldr    x2, [x8]                                 
  e91954: ldp    x20, x19, [sp, #0x10]                    
  e91958: ldr    x21, [sp], #0x30                         
  e9195c: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== BootMediator$$JumpToAndroidMarket @ 0xe91a70 (272 bytes)
  e91a70: str    x21, [sp, #-0x30]!                       
  e91a74: stp    x20, x19, [sp, #0x10]                    
  e91a78: stp    x29, x30, [sp, #0x20]                    
  e91a7c: add    x29, sp, #0x20                           
  e91a80: adrp   x20, #0x31cd000                          
  e91a84: ldrb   w8, [x20, #0x56f]                        
  e91a88: mov    x19, x0                                  
  e91a8c: tbnz   w8, #0, #0xe91aa8                        
  e91a90: adrp   x8, #0x2fee000                           
  e91a94: ldr    x8, [x8, #0x660]                         
  e91a98: ldr    w0, [x8]                                 
  e91a9c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91aa0: mov    w8, #1                                   
  e91aa4: strb   w8, [x20, #0x56f]                        
  e91aa8: adrp   x8, #0x3030000                           
  e91aac: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91ab0: ldr    x8, [x8]                                 
  e91ab4: ldr    x8, [x8, #0xb8]                          
  e91ab8: ldr    x0, [x8, #0x70]                          
  e91abc: cbz    x0, #0xe91ad8                            
  e91ac0: mov    x1, x19                                  
  e91ac4: ldp    x29, x30, [sp, #0x20]                    
  e91ac8: ldp    x20, x19, [sp, #0x10]                    
  e91acc: mov    x2, xzr                                  
  e91ad0: ldr    x21, [sp], #0x30                         
  e91ad4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e91ad8: mov    x0, x19                                  
  e91adc: mov    x1, xzr                                  
  e91ae0: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e91ae4: adrp   x8, #0x305a000                           
  e91ae8: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  e91aec: mov    x19, x0                                  
  e91af0: mov    w1, #1                                   
  e91af4: ldr    x8, [x8]                                 
  e91af8: mov    x0, x8                                   
  e91afc: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e91b00: mov    x20, x0                                  
  e91b04: cbnz   x20, #0xe91b0c                           
  e91b08: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91b0c: adrp   x21, #0x303b000                          
  e91b10: ldr    x21, [x21, #0x448]                       ; STR "UPDATE_DOWNLOAD_ANDROID"
  e91b14: ldr    x0, [x21]                                
  e91b18: cbz    x0, #0xe91b3c                            
  e91b1c: ldr    x8, [x20]                                
  e91b20: ldr    x1, [x8, #0x40]                          
  e91b24: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e91b28: cbnz   x0, #0xe91b3c                            
  e91b2c: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e91b30: mov    x1, xzr                                  
  e91b34: mov    x2, xzr                                  
  e91b38: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91b3c: ldr    w8, [x20, #0x18]                         
  e91b40: ldr    x21, [x21]                               
  e91b44: cbnz   w8, #0xe91b58                            
  e91b48: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e91b4c: mov    x1, xzr                                  
  e91b50: mov    x2, xzr                                  
  e91b54: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91b58: str    x21, [x20, #0x20]                        
  e91b5c: adrp   x8, #0x2ff5000                           
  e91b60: ldr    x8, [x8, #0xec0]                         ; MMETH Method$EventDispatcherExtension.Open<UpdateMessage>()
  e91b64: mov    x0, x19                                  
  e91b68: mov    x1, x20                                  
  e91b6c: ldp    x29, x30, [sp, #0x20]                    
  e91b70: ldr    x2, [x8]                                 
  e91b74: ldp    x20, x19, [sp, #0x10]                    
  e91b78: ldr    x21, [sp], #0x30                         
  e91b7c: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== BootMediator$$JumpToAppStore @ 0xe91960 (272 bytes)
  e91960: str    x21, [sp, #-0x30]!                       
  e91964: stp    x20, x19, [sp, #0x10]                    
  e91968: stp    x29, x30, [sp, #0x20]                    
  e9196c: add    x29, sp, #0x20                           
  e91970: adrp   x20, #0x31cd000                          
  e91974: ldrb   w8, [x20, #0x56e]                        
  e91978: mov    x19, x0                                  
  e9197c: tbnz   w8, #0, #0xe91998                        
  e91980: adrp   x8, #0x2ff8000                           
  e91984: ldr    x8, [x8, #0x328]                         
  e91988: ldr    w0, [x8]                                 
  e9198c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91990: mov    w8, #1                                   
  e91994: strb   w8, [x20, #0x56e]                        
  e91998: adrp   x8, #0x3030000                           
  e9199c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e919a0: ldr    x8, [x8]                                 
  e919a4: ldr    x8, [x8, #0xb8]                          
  e919a8: ldr    x0, [x8, #0x68]                          
  e919ac: cbz    x0, #0xe919c8                            
  e919b0: mov    x1, x19                                  
  e919b4: ldp    x29, x30, [sp, #0x20]                    
  e919b8: ldp    x20, x19, [sp, #0x10]                    
  e919bc: mov    x2, xzr                                  
  e919c0: ldr    x21, [sp], #0x30                         
  e919c4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e919c8: mov    x0, x19                                  
  e919cc: mov    x1, xzr                                  
  e919d0: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e919d4: adrp   x8, #0x305a000                           
  e919d8: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  e919dc: mov    x19, x0                                  
  e919e0: mov    w1, #1                                   
  e919e4: ldr    x8, [x8]                                 
  e919e8: mov    x0, x8                                   
  e919ec: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e919f0: mov    x20, x0                                  
  e919f4: cbnz   x20, #0xe919fc                           
  e919f8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e919fc: adrp   x21, #0x3043000                          
  e91a00: ldr    x21, [x21, #0x888]                       ; STR "UPDATE_DOWNLOAD_IOS"
  e91a04: ldr    x0, [x21]                                
  e91a08: cbz    x0, #0xe91a2c                            
  e91a0c: ldr    x8, [x20]                                
  e91a10: ldr    x1, [x8, #0x40]                          
  e91a14: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e91a18: cbnz   x0, #0xe91a2c                            
  e91a1c: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e91a20: mov    x1, xzr                                  
  e91a24: mov    x2, xzr                                  
  e91a28: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91a2c: ldr    w8, [x20, #0x18]                         
  e91a30: ldr    x21, [x21]                               
  e91a34: cbnz   w8, #0xe91a48                            
  e91a38: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e91a3c: mov    x1, xzr                                  
  e91a40: mov    x2, xzr                                  
  e91a44: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91a48: str    x21, [x20, #0x20]                        
  e91a4c: adrp   x8, #0x2ff5000                           
  e91a50: ldr    x8, [x8, #0xec0]                         ; MMETH Method$EventDispatcherExtension.Open<UpdateMessage>()
  e91a54: mov    x0, x19                                  
  e91a58: mov    x1, x20                                  
  e91a5c: ldp    x29, x30, [sp, #0x20]                    
  e91a60: ldr    x2, [x8]                                 
  e91a64: ldp    x20, x19, [sp, #0x10]                    
  e91a68: ldr    x21, [sp], #0x30                         
  e91a6c: b      #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>

===== BootMediator$$LoadConfig @ 0xe92824 (316 bytes)
  e92824: stp    x20, x19, [sp, #-0x20]!                  
  e92828: stp    x29, x30, [sp, #0x10]                    
  e9282c: add    x29, sp, #0x10                           
  e92830: adrp   x20, #0x31cd000                          
  e92834: ldrb   w8, [x20, #0x574]                        
  e92838: mov    x19, x0                                  
  e9283c: tbnz   w8, #0, #0xe92858                        
  e92840: adrp   x8, #0x3029000                           
  e92844: ldr    x8, [x8, #0x218]                         
  e92848: ldr    w0, [x8]                                 
  e9284c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92850: mov    w8, #1                                   
  e92854: strb   w8, [x20, #0x574]                        
  e92858: adrp   x8, #0x3030000                           
  e9285c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92860: ldr    x8, [x8]                                 
  e92864: ldr    x8, [x8, #0xb8]                          
  e92868: ldr    x0, [x8, #0x98]                          
  e9286c: cbz    x0, #0xe92884                            
  e92870: ldp    x29, x30, [sp, #0x10]                    
  e92874: mov    x1, x19                                  
  e92878: mov    x2, xzr                                  
  e9287c: ldp    x20, x19, [sp], #0x20                    
  e92880: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e92884: mov    x0, x19                                  
  e92888: bl     #0xe90110                                ; BootMediator$$get_view
  e9288c: mov    x20, x0                                  
  e92890: cbnz   x20, #0xe92898                           
  e92894: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92898: mov    x0, x20                                  
  e9289c: bl     #0xe92960                                ; BootView$$LoadProgress
  e928a0: mov    x0, x19                                  
  e928a4: bl     #0xe92bac                                ; BootMediator$$LoadLocalManifest
  e928a8: mov    x20, x0                                  
  e928ac: cbnz   x20, #0xe928b4                           
  e928b0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e928b4: mov    x0, x20                                  
  e928b8: mov    x1, xzr                                  
  e928bc: bl     #0x1b7fb18                               ; UniCore.UpdateManifest$$get_version
  e928c0: adrp   x8, #0x2ff9000                           
  e928c4: ldr    x8, [x8, #0x18]                          ; STR "ResVersion"
  e928c8: mov    w1, w0                                   
  e928cc: mov    x2, xzr                                  
  e928d0: ldr    x8, [x8]                                 
  e928d4: mov    x0, x8                                   
  e928d8: bl     #0x1be6d80                               ; UnityEngine.PlayerPrefs$$SetInt
  e928dc: adrp   x8, #0x303e000                           
  e928e0: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  e928e4: ldr    x0, [x8]                                 
  e928e8: ldrb   w8, [x0, #0x127]                         
  e928ec: tbz    w8, #1, #0xe928fc                        
  e928f0: ldr    w8, [x0, #0xd8]                          
  e928f4: cbnz   w8, #0xe928fc                            
  e928f8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e928fc: adrp   x8, #0x2ffa000                           
  e92900: ldr    x8, [x8, #0xa0]                          ; STR "GLOBAL"
  e92904: mov    x1, xzr                                  
  e92908: ldr    x0, [x8]                                 
  e9290c: bl     #0x1356dc0                               ; UniCore.GameStrings$$LoadCategory
  e92910: adrp   x8, #0x303a000                           
  e92914: ldr    x8, [x8, #0x248]                         ; STR "CHARACTERINFO"
  e92918: mov    x1, xzr                                  
  e9291c: ldr    x0, [x8]                                 
  e92920: bl     #0x1356dc0                               ; UniCore.GameStrings$$LoadCategory
  e92924: adrp   x8, #0x301e000                           
  e92928: ldr    x8, [x8, #0x628]                         ; STR "GUILDBATTLE"
  e9292c: mov    x1, xzr                                  
  e92930: ldr    x0, [x8]                                 
  e92934: bl     #0x1356dc0                               ; UniCore.GameStrings$$LoadCategory
  e92938: mov    x0, xzr                                  
  e9293c: bl     #0x1120ee4                               ; ConfigFactory$$LoadAsync
  e92940: mov    x0, x19                                  
  e92944: bl     #0xe92c78                                ; BootMediator$$WaitForLoad
  e92948: ldp    x29, x30, [sp, #0x10]                    
  e9294c: mov    x1, x0                                   
  e92950: mov    x0, x19                                  
  e92954: mov    x2, xzr                                  
  e92958: ldp    x20, x19, [sp], #0x20                    
  e9295c: b      #0x1be12e8                               ; UnityEngine.MonoBehaviour$$StartCoroutine

===== BootMediator$$LoadLocalManifest @ 0xe92bac (204 bytes)
  e92bac: stp    x20, x19, [sp, #-0x20]!                  
  e92bb0: stp    x29, x30, [sp, #0x10]                    
  e92bb4: add    x29, sp, #0x10                           
  e92bb8: adrp   x19, #0x31cd000                          
  e92bbc: ldrb   w8, [x19, #0x57a]                        
  e92bc0: mov    x20, x0                                  
  e92bc4: tbnz   w8, #0, #0xe92be0                        
  e92bc8: adrp   x8, #0x300f000                           
  e92bcc: ldr    x8, [x8, #0x5e0]                         
  e92bd0: ldr    w0, [x8]                                 
  e92bd4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92bd8: mov    w8, #1                                   
  e92bdc: strb   w8, [x19, #0x57a]                        
  e92be0: adrp   x8, #0x3030000                           
  e92be4: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92be8: ldr    x8, [x8]                                 
  e92bec: ldr    x8, [x8, #0xb8]                          
  e92bf0: ldr    x0, [x8, #0xc8]                          
  e92bf4: cbz    x0, #0xe92c0c                            
  e92bf8: ldp    x29, x30, [sp, #0x10]                    
  e92bfc: mov    x1, x20                                  
  e92c00: mov    x2, xzr                                  
  e92c04: ldp    x20, x19, [sp], #0x20                    
  e92c08: b      #0xcd3c8c                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp422
  e92c0c: adrp   x8, #0x3019000                           
  e92c10: ldr    x8, [x8, #0x698]                         ; META UniCore.UpdateManifest_TypeInfo
  e92c14: ldr    x0, [x8]                                 
  e92c18: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e92c1c: mov    x1, xzr                                  
  e92c20: mov    x19, x0                                  
  e92c24: bl     #0x1b80eb8                               ; UniCore.UpdateManifest$$.ctor
  e92c28: adrp   x8, #0x3028000                           
  e92c2c: ldr    x8, [x8, #0x828]                         ; STR "update.txt"
  e92c30: mov    x0, x20                                  
  e92c34: ldr    x1, [x8]                                 
  e92c38: bl     #0xe92e78                                ; BootMediator$$CachedFilePath
  e92c3c: mov    x1, xzr                                  
  e92c40: mov    x20, x0                                  
  e92c44: bl     #0x17f5738                               ; System.IO.File$$Exists
  e92c48: tbz    w0, #0, #0xe92c68                        
  e92c4c: cbnz   x19, #0xe92c58                           
  e92c50: mov    x0, xzr                                  
  e92c54: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92c58: mov    x0, x19                                  
  e92c5c: mov    x1, x20                                  
  e92c60: mov    x2, xzr                                  
  e92c64: bl     #0x1b81068                               ; UniCore.UpdateManifest$$Load
  e92c68: ldp    x29, x30, [sp, #0x10]                    
  e92c6c: mov    x0, x19                                  
  e92c70: ldp    x20, x19, [sp], #0x20                    
  e92c74: ret                                             

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

===== BootMediator$$OnGetServerList @ 0xe91b80 (384 bytes)
  e91b80: sub    sp, sp, #0x40                            
  e91b84: stp    x22, x21, [sp, #0x10]                    
  e91b88: stp    x20, x19, [sp, #0x20]                    
  e91b8c: stp    x29, x30, [sp, #0x30]                    
  e91b90: add    x29, sp, #0x30                           
  e91b94: adrp   x21, #0x31cd000                          
  e91b98: ldrb   w8, [x21, #0x567]                        
  e91b9c: mov    x20, x1                                  
  e91ba0: mov    x19, x0                                  
  e91ba4: tbnz   w8, #0, #0xe91bc0                        
  e91ba8: adrp   x8, #0x2ff9000                           
  e91bac: ldr    x8, [x8, #0xd98]                         
  e91bb0: ldr    w0, [x8]                                 
  e91bb4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91bb8: mov    w8, #1                                   
  e91bbc: strb   w8, [x21, #0x567]                        
  e91bc0: adrp   x8, #0x3030000                           
  e91bc4: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91bc8: ldr    x8, [x8]                                 
  e91bcc: ldr    x8, [x8, #0xb8]                          
  e91bd0: ldr    x0, [x8, #0x30]                          
  e91bd4: cbz    x0, #0xe91bf8                            
  e91bd8: mov    x1, x19                                  
  e91bdc: mov    x2, x20                                  
  e91be0: ldp    x29, x30, [sp, #0x30]                    
  e91be4: ldp    x20, x19, [sp, #0x20]                    
  e91be8: ldp    x22, x21, [sp, #0x10]                    
  e91bec: mov    x3, xzr                                  
  e91bf0: add    sp, sp, #0x40                            
  e91bf4: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e91bf8: mov    x0, x20                                  
  e91bfc: mov    x1, xzr                                  
  e91c00: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  e91c04: tbz    w0, #0, #0xe91c34                        
  e91c08: mov    x0, x19                                  
  e91c0c: bl     #0xe90110                                ; BootMediator$$get_view
  e91c10: mov    x19, x0                                  
  e91c14: cbnz   x19, #0xe91c1c                           
  e91c18: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91c1c: mov    x0, x19                                  
  e91c20: ldp    x29, x30, [sp, #0x30]                    
  e91c24: ldp    x20, x19, [sp, #0x20]                    
  e91c28: ldp    x22, x21, [sp, #0x10]                    
  e91c2c: add    sp, sp, #0x40                            
  e91c30: b      #0xe91d00                                ; BootView$$ServerListDownLoadFailedTip
  e91c34: mov    x0, x19                                  
  e91c38: mov    x1, xzr                                  
  e91c3c: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e91c40: adrp   x8, #0x3011000                           
  e91c44: ldr    x8, [x8, #0x730]                         ; META LoginEvent_TypeInfo
  e91c48: mov    x21, x0                                  
  e91c4c: add    x1, sp, #0xc                             
  e91c50: ldr    x0, [x8]                                 
  e91c54: mov    w8, #0xe                                 
  e91c58: str    w8, [sp, #0xc]                           
  e91c5c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e91c60: mov    x22, x0                                  
  e91c64: cbnz   x21, #0xe91c70                           
  e91c68: mov    x0, xzr                                  
  e91c6c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91c70: adrp   x10, #0x2fde000                          
  e91c74: ldr    x8, [x21]                                
  e91c78: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  e91c7c: ldrh   w9, [x8, #0x11e]                         
  e91c80: ldr    x1, [x10]                                
  e91c84: cbz    x9, #0xe91cb0                            
  e91c88: ldr    x11, [x8, #0xb0]                         
  e91c8c: mov    x10, xzr                                 
  e91c90: add    x11, x11, #8                             
  e91c94: ldur   x12, [x11, #-8]                          
  e91c98: cmp    x12, x1                                  
  e91c9c: b.eq   #0xe91cc0                                
  e91ca0: add    x10, x10, #1                             
  e91ca4: cmp    x10, x9                                  
  e91ca8: add    x11, x11, #0x10                          
  e91cac: b.lo   #0xe91c94                                
  e91cb0: mov    w2, #1                                   
  e91cb4: mov    x0, x21                                  
  e91cb8: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e91cbc: b      #0xe91cd0                                
  e91cc0: ldr    w9, [x11]                                
  e91cc4: add    w9, w9, #1                               
  e91cc8: add    x8, x8, w9, uxtw #4                      
  e91ccc: add    x0, x8, #0x128                           
  e91cd0: ldp    x8, x3, [x0]                             
  e91cd4: mov    x0, x21                                  
  e91cd8: mov    x1, x22                                  
  e91cdc: mov    x2, x20                                  
  e91ce0: blr    x8                                       
  e91ce4: mov    x0, x19                                  
  e91ce8: bl     #0xe91e04                                ; BootMediator$$InitializationCompleted
  e91cec: ldp    x29, x30, [sp, #0x30]                    
  e91cf0: ldp    x20, x19, [sp, #0x20]                    
  e91cf4: ldp    x22, x21, [sp, #0x10]                    
  e91cf8: add    sp, sp, #0x40                            
  e91cfc: ret                                             

===== BootMediator$$OnRegister @ 0xe90180 (1220 bytes)
  e90180: sub    sp, sp, #0x60                            
  e90184: str    x25, [sp, #0x10]                         
  e90188: stp    x24, x23, [sp, #0x20]                    
  e9018c: stp    x22, x21, [sp, #0x30]                    
  e90190: stp    x20, x19, [sp, #0x40]                    
  e90194: stp    x29, x30, [sp, #0x50]                    
  e90198: add    x29, sp, #0x50                           
  e9019c: adrp   x20, #0x31cd000                          
  e901a0: ldrb   w8, [x20, #0x563]                        
  e901a4: mov    x19, x0                                  
  e901a8: tbnz   w8, #0, #0xe901c4                        
  e901ac: adrp   x8, #0x3021000                           
  e901b0: ldr    x8, [x8, #0xa48]                         
  e901b4: ldr    w0, [x8]                                 
  e901b8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e901bc: mov    w8, #1                                   
  e901c0: strb   w8, [x20, #0x563]                        
  e901c4: adrp   x8, #0x3030000                           
  e901c8: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e901cc: ldr    x8, [x8]                                 
  e901d0: ldr    x8, [x8, #0xb8]                          
  e901d4: ldr    x0, [x8, #0x10]                          
  e901d8: cbz    x0, #0xe90200                            
  e901dc: mov    x1, x19                                  
  e901e0: ldp    x29, x30, [sp, #0x50]                    
  e901e4: ldp    x20, x19, [sp, #0x40]                    
  e901e8: ldp    x22, x21, [sp, #0x30]                    
  e901ec: ldp    x24, x23, [sp, #0x20]                    
  e901f0: ldr    x25, [sp, #0x10]                         
  e901f4: mov    x2, xzr                                  
  e901f8: add    sp, sp, #0x60                            
  e901fc: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e90200: mov    x0, x19                                  
  e90204: mov    x1, xzr                                  
  e90208: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e9020c: adrp   x23, #0x3011000                          
  e90210: ldr    x23, [x23, #0x730]                       ; META LoginEvent_TypeInfo
  e90214: mov    x20, x0                                  
  e90218: mov    w8, #2                                   
  e9021c: add    x1, sp, #0x1c                            
  e90220: ldr    x0, [x23]                                
  e90224: str    w8, [sp, #0x1c]                          
  e90228: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e9022c: adrp   x24, #0x3023000                          
  e90230: ldr    x24, [x24, #0x1c8]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback_TypeInfo
  e90234: mov    x21, x0                                  
  e90238: ldr    x8, [x24]                                
  e9023c: mov    x0, x8                                   
  e90240: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90244: adrp   x8, #0x3057000                           
  e90248: ldr    x8, [x8, #0x2d0]                         ; MMETH Method$BootMediator.OnUpdateConfirm()
  e9024c: mov    x1, x19                                  
  e90250: mov    x3, xzr                                  
  e90254: mov    x22, x0                                  
  e90258: ldr    x2, [x8]                                 
  e9025c: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e90260: cbnz   x20, #0xe9026c                           
  e90264: mov    x0, xzr                                  
  e90268: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e9026c: adrp   x25, #0x3069000                          
  e90270: ldr    x8, [x20]                                
  e90274: ldr    x25, [x25, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  e90278: ldrh   w9, [x8, #0x11e]                         
  e9027c: ldr    x1, [x25]                                
  e90280: cbz    x9, #0xe902ac                            
  e90284: ldr    x11, [x8, #0xb0]                         
  e90288: mov    x10, xzr                                 
  e9028c: add    x11, x11, #8                             
  e90290: ldur   x12, [x11, #-8]                          
  e90294: cmp    x12, x1                                  
  e90298: b.eq   #0xe902bc                                
  e9029c: add    x10, x10, #1                             
  e902a0: cmp    x10, x9                                  
  e902a4: add    x11, x11, #0x10                          
  e902a8: b.lo   #0xe90290                                
  e902ac: mov    w2, #2                                   
  e902b0: mov    x0, x20                                  
  e902b4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e902b8: b      #0xe902cc                                
  e902bc: ldr    w9, [x11]                                
  e902c0: add    w9, w9, #2                               
  e902c4: add    x8, x8, w9, uxtw #4                      
  e902c8: add    x0, x8, #0x128                           
  e902cc: ldp    x8, x3, [x0]                             
  e902d0: mov    x0, x20                                  
  e902d4: mov    x1, x21                                  
  e902d8: mov    x2, x22                                  
  e902dc: blr    x8                                       
  e902e0: mov    x0, x19                                  
  e902e4: mov    x1, xzr                                  
  e902e8: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e902ec: mov    x20, x0                                  
  e902f0: ldr    x0, [x23]                                
  e902f4: mov    w8, #3                                   
  e902f8: add    x1, sp, #0x18                            
  e902fc: str    w8, [sp, #0x18]                          
  e90300: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e90304: ldr    x8, [x24]                                
  e90308: mov    x21, x0                                  
  e9030c: mov    x0, x8                                   
  e90310: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90314: adrp   x8, #0x2fe6000                           
  e90318: ldr    x8, [x8, #0x320]                         ; MMETH Method$BootMediator.OnUpdateCancel()
  e9031c: mov    x1, x19                                  
  e90320: mov    x3, xzr                                  
  e90324: mov    x22, x0                                  
  e90328: ldr    x2, [x8]                                 
  e9032c: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e90330: cbnz   x20, #0xe9033c                           
  e90334: mov    x0, xzr                                  
  e90338: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e9033c: ldr    x8, [x20]                                
  e90340: ldr    x1, [x25]                                
  e90344: ldrh   w9, [x8, #0x11e]                         
  e90348: cbz    x9, #0xe90374                            
  e9034c: ldr    x11, [x8, #0xb0]                         
  e90350: mov    x10, xzr                                 
  e90354: add    x11, x11, #8                             
  e90358: ldur   x12, [x11, #-8]                          
  e9035c: cmp    x12, x1                                  
  e90360: b.eq   #0xe90384                                
  e90364: add    x10, x10, #1                             
  e90368: cmp    x10, x9                                  
  e9036c: add    x11, x11, #0x10                          
  e90370: b.lo   #0xe90358                                
  e90374: mov    w2, #2                                   
  e90378: mov    x0, x20                                  
  e9037c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90380: b      #0xe90394                                
  e90384: ldr    w9, [x11]                                
  e90388: add    w9, w9, #2                               
  e9038c: add    x8, x8, w9, uxtw #4                      
  e90390: add    x0, x8, #0x128                           
  e90394: ldp    x8, x3, [x0]                             
  e90398: mov    x0, x20                                  
  e9039c: mov    x1, x21                                  
  e903a0: mov    x2, x22                                  
  e903a4: blr    x8                                       
  e903a8: mov    x0, x19                                  
  e903ac: mov    x1, xzr                                  
  e903b0: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e903b4: mov    x20, x0                                  
  e903b8: ldr    x0, [x23]                                
  e903bc: mov    w8, #4                                   
  e903c0: add    x1, sp, #0xc                             
  e903c4: str    w8, [sp, #0xc]                           
  e903c8: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e903cc: ldr    x8, [x24]                                
  e903d0: mov    x21, x0                                  
  e903d4: mov    x0, x8                                   
  e903d8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e903dc: adrp   x8, #0x3071000                           
  e903e0: ldr    x8, [x8, #0x360]                         ; MMETH Method$BootMediator.InitializationCompleted()
  e903e4: mov    x1, x19                                  
  e903e8: mov    x3, xzr                                  
  e903ec: mov    x22, x0                                  
  e903f0: ldr    x2, [x8]                                 
  e903f4: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e903f8: cbnz   x20, #0xe90404                           
  e903fc: mov    x0, xzr                                  
  e90400: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90404: ldr    x8, [x20]                                
  e90408: ldr    x1, [x25]                                
  e9040c: ldrh   w9, [x8, #0x11e]                         
  e90410: cbz    x9, #0xe9043c                            
  e90414: ldr    x11, [x8, #0xb0]                         
  e90418: mov    x10, xzr                                 
  e9041c: add    x11, x11, #8                             
  e90420: ldur   x12, [x11, #-8]                          
  e90424: cmp    x12, x1                                  
  e90428: b.eq   #0xe9044c                                
  e9042c: add    x10, x10, #1                             
  e90430: cmp    x10, x9                                  
  e90434: add    x11, x11, #0x10                          
  e90438: b.lo   #0xe90420                                
  e9043c: mov    w2, #2                                   
  e90440: mov    x0, x20                                  
  e90444: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90448: b      #0xe9045c                                
  e9044c: ldr    w9, [x11]                                
  e90450: add    w9, w9, #2                               
  e90454: add    x8, x8, w9, uxtw #4                      
  e90458: add    x0, x8, #0x128                           
  e9045c: ldp    x8, x3, [x0]                             
  e90460: mov    x0, x20                                  
  e90464: mov    x1, x21                                  
  e90468: mov    x2, x22                                  
  e9046c: blr    x8                                       
  e90470: mov    x0, x19                                  
  e90474: bl     #0xe90110                                ; BootMediator$$get_view
  e90478: mov    x20, x0                                  
  e9047c: cbnz   x20, #0xe90484                           
  e90480: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90484: mov    x0, x20                                  
  e90488: mov    x1, xzr                                  
  e9048c: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  e90490: mov    x20, x0                                  
  e90494: ldr    x0, [x23]                                
  e90498: mov    w8, #1                                   
  e9049c: add    x1, sp, #8                               
  e904a0: str    w8, [sp, #8]                             
  e904a4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e904a8: ldr    x8, [x24]                                
  e904ac: mov    x21, x0                                  
  e904b0: mov    x0, x8                                   
  e904b4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e904b8: adrp   x8, #0x2fc6000                           
  e904bc: ldr    x8, [x8, #0xcd0]                         ; MMETH Method$BootMediator.BeginBoot()
  e904c0: mov    x1, x19                                  
  e904c4: mov    x3, xzr                                  
  e904c8: mov    x22, x0                                  
  e904cc: ldr    x2, [x8]                                 
  e904d0: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e904d4: cbnz   x20, #0xe904e0                           
  e904d8: mov    x0, xzr                                  
  e904dc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e904e0: ldr    x8, [x20]                                
  e904e4: ldr    x1, [x25]                                
  e904e8: ldrh   w9, [x8, #0x11e]                         
  e904ec: cbz    x9, #0xe90518                            
  e904f0: ldr    x11, [x8, #0xb0]                         
  e904f4: mov    x10, xzr                                 
  e904f8: add    x11, x11, #8                             
  e904fc: ldur   x12, [x11, #-8]                          
  e90500: cmp    x12, x1                                  
  e90504: b.eq   #0xe90528                                
  e90508: add    x10, x10, #1                             
  e9050c: cmp    x10, x9                                  
  e90510: add    x11, x11, #0x10                          
  e90514: b.lo   #0xe904fc                                
  e90518: mov    w2, #2                                   
  e9051c: mov    x0, x20                                  
  e90520: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90524: b      #0xe90538                                
  e90528: ldr    w9, [x11]                                
  e9052c: add    w9, w9, #2                               
  e90530: add    x8, x8, w9, uxtw #4                      
  e90534: add    x0, x8, #0x128                           
  e90538: ldp    x8, x3, [x0]                             
  e9053c: mov    x0, x20                                  
  e90540: mov    x1, x21                                  
  e90544: mov    x2, x22                                  
  e90548: blr    x8                                       
  e9054c: mov    x0, x19                                  
  e90550: bl     #0xe90110                                ; BootMediator$$get_view
  e90554: mov    x20, x0                                  
  e90558: cbnz   x20, #0xe90560                           
  e9055c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90560: mov    x0, x20                                  
  e90564: mov    x1, xzr                                  
  e90568: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  e9056c: mov    x20, x0                                  
  e90570: ldr    x0, [x23]                                
  e90574: mov    w8, #9                                   
  e90578: add    x1, sp, #4                               
  e9057c: str    w8, [sp, #4]                             
  e90580: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e90584: ldr    x8, [x24]                                
  e90588: mov    x21, x0                                  
  e9058c: mov    x0, x8                                   
  e90590: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90594: adrp   x8, #0x3012000                           
  e90598: ldr    x8, [x8, #0xd20]                         ; MMETH Method$BootMediator.DownLoadServerList()
  e9059c: mov    x1, x19                                  
  e905a0: mov    x3, xzr                                  
  e905a4: mov    x22, x0                                  
  e905a8: ldr    x2, [x8]                                 
  e905ac: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e905b0: cbnz   x20, #0xe905bc                           
  e905b4: mov    x0, xzr                                  
  e905b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e905bc: ldr    x8, [x20]                                
  e905c0: ldr    x1, [x25]                                
  e905c4: ldrh   w9, [x8, #0x11e]                         
  e905c8: cbz    x9, #0xe905f4                            
  e905cc: ldr    x11, [x8, #0xb0]                         
  e905d0: mov    x10, xzr                                 
  e905d4: add    x11, x11, #8                             
  e905d8: ldur   x12, [x11, #-8]                          
  e905dc: cmp    x12, x1                                  
  e905e0: b.eq   #0xe90604                                
  e905e4: add    x10, x10, #1                             
  e905e8: cmp    x10, x9                                  
  e905ec: add    x11, x11, #0x10                          
  e905f0: b.lo   #0xe905d8                                
  e905f4: mov    w2, #2                                   
  e905f8: mov    x0, x20                                  
  e905fc: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90600: b      #0xe90614                                
  e90604: ldr    w9, [x11]                                
  e90608: add    w9, w9, #2                               
  e9060c: add    x8, x8, w9, uxtw #4                      
  e90610: add    x0, x8, #0x128                           
  e90614: ldp    x8, x3, [x0]                             
  e90618: mov    x0, x20                                  
  e9061c: mov    x1, x21                                  
  e90620: mov    x2, x22                                  
  e90624: blr    x8                                       
  e90628: ldp    x29, x30, [sp, #0x50]                    
  e9062c: ldp    x20, x19, [sp, #0x40]                    
  e90630: ldp    x22, x21, [sp, #0x30]                    
  e90634: ldp    x24, x23, [sp, #0x20]                    
  e90638: ldr    x25, [sp, #0x10]                         
  e9063c: add    sp, sp, #0x60                            
  e90640: ret                                             

===== BootMediator$$OnRemove @ 0xe90644 (1240 bytes)
  e90644: sub    sp, sp, #0x60                            
  e90648: str    x25, [sp, #0x10]                         
  e9064c: stp    x24, x23, [sp, #0x20]                    
  e90650: stp    x22, x21, [sp, #0x30]                    
  e90654: stp    x20, x19, [sp, #0x40]                    
  e90658: stp    x29, x30, [sp, #0x50]                    
  e9065c: add    x29, sp, #0x50                           
  e90660: adrp   x20, #0x31cd000                          
  e90664: ldrb   w8, [x20, #0x564]                        
  e90668: mov    x19, x0                                  
  e9066c: tbnz   w8, #0, #0xe90688                        
  e90670: adrp   x8, #0x2fe8000                           
  e90674: ldr    x8, [x8, #0x5e8]                         
  e90678: ldr    w0, [x8]                                 
  e9067c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e90680: mov    w8, #1                                   
  e90684: strb   w8, [x20, #0x564]                        
  e90688: adrp   x8, #0x3030000                           
  e9068c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e90690: ldr    x8, [x8]                                 
  e90694: ldr    x8, [x8, #0xb8]                          
  e90698: ldr    x0, [x8, #0x18]                          
  e9069c: cbz    x0, #0xe906c4                            
  e906a0: mov    x1, x19                                  
  e906a4: ldp    x29, x30, [sp, #0x50]                    
  e906a8: ldp    x20, x19, [sp, #0x40]                    
  e906ac: ldp    x22, x21, [sp, #0x30]                    
  e906b0: ldp    x24, x23, [sp, #0x20]                    
  e906b4: ldr    x25, [sp, #0x10]                         
  e906b8: mov    x2, xzr                                  
  e906bc: add    sp, sp, #0x60                            
  e906c0: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e906c4: mov    x0, x19                                  
  e906c8: mov    x1, xzr                                  
  e906cc: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e906d0: adrp   x23, #0x3011000                          
  e906d4: ldr    x23, [x23, #0x730]                       ; META LoginEvent_TypeInfo
  e906d8: mov    x20, x0                                  
  e906dc: mov    w8, #2                                   
  e906e0: add    x1, sp, #0x1c                            
  e906e4: ldr    x0, [x23]                                
  e906e8: str    w8, [sp, #0x1c]                          
  e906ec: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e906f0: adrp   x24, #0x3023000                          
  e906f4: ldr    x24, [x24, #0x1c8]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback_TypeInfo
  e906f8: mov    x21, x0                                  
  e906fc: ldr    x8, [x24]                                
  e90700: mov    x0, x8                                   
  e90704: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90708: adrp   x8, #0x3057000                           
  e9070c: ldr    x8, [x8, #0x2d0]                         ; MMETH Method$BootMediator.OnUpdateConfirm()
  e90710: mov    x1, x19                                  
  e90714: mov    x3, xzr                                  
  e90718: mov    x22, x0                                  
  e9071c: ldr    x2, [x8]                                 
  e90720: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e90724: cbnz   x20, #0xe90730                           
  e90728: mov    x0, xzr                                  
  e9072c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90730: adrp   x25, #0x3069000                          
  e90734: ldr    x8, [x20]                                
  e90738: ldr    x25, [x25, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  e9073c: ldrh   w9, [x8, #0x11e]                         
  e90740: ldr    x1, [x25]                                
  e90744: cbz    x9, #0xe90770                            
  e90748: ldr    x11, [x8, #0xb0]                         
  e9074c: mov    x10, xzr                                 
  e90750: add    x11, x11, #8                             
  e90754: ldur   x12, [x11, #-8]                          
  e90758: cmp    x12, x1                                  
  e9075c: b.eq   #0xe90780                                
  e90760: add    x10, x10, #1                             
  e90764: cmp    x10, x9                                  
  e90768: add    x11, x11, #0x10                          
  e9076c: b.lo   #0xe90754                                
  e90770: mov    w2, #4                                   
  e90774: mov    x0, x20                                  
  e90778: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e9077c: b      #0xe90790                                
  e90780: ldr    w9, [x11]                                
  e90784: add    w9, w9, #4                               
  e90788: add    x8, x8, w9, uxtw #4                      
  e9078c: add    x0, x8, #0x128                           
  e90790: ldp    x8, x3, [x0]                             
  e90794: mov    x0, x20                                  
  e90798: mov    x1, x21                                  
  e9079c: mov    x2, x22                                  
  e907a0: blr    x8                                       
  e907a4: mov    x0, x19                                  
  e907a8: mov    x1, xzr                                  
  e907ac: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e907b0: mov    x20, x0                                  
  e907b4: ldr    x0, [x23]                                
  e907b8: mov    w8, #3                                   
  e907bc: add    x1, sp, #0x18                            
  e907c0: str    w8, [sp, #0x18]                          
  e907c4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e907c8: ldr    x8, [x24]                                
  e907cc: mov    x21, x0                                  
  e907d0: mov    x0, x8                                   
  e907d4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e907d8: adrp   x8, #0x2fe6000                           
  e907dc: ldr    x8, [x8, #0x320]                         ; MMETH Method$BootMediator.OnUpdateCancel()
  e907e0: mov    x1, x19                                  
  e907e4: mov    x3, xzr                                  
  e907e8: mov    x22, x0                                  
  e907ec: ldr    x2, [x8]                                 
  e907f0: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e907f4: cbnz   x20, #0xe90800                           
  e907f8: mov    x0, xzr                                  
  e907fc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90800: ldr    x8, [x20]                                
  e90804: ldr    x1, [x25]                                
  e90808: ldrh   w9, [x8, #0x11e]                         
  e9080c: cbz    x9, #0xe90838                            
  e90810: ldr    x11, [x8, #0xb0]                         
  e90814: mov    x10, xzr                                 
  e90818: add    x11, x11, #8                             
  e9081c: ldur   x12, [x11, #-8]                          
  e90820: cmp    x12, x1                                  
  e90824: b.eq   #0xe90848                                
  e90828: add    x10, x10, #1                             
  e9082c: cmp    x10, x9                                  
  e90830: add    x11, x11, #0x10                          
  e90834: b.lo   #0xe9081c                                
  e90838: mov    w2, #4                                   
  e9083c: mov    x0, x20                                  
  e90840: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90844: b      #0xe90858                                
  e90848: ldr    w9, [x11]                                
  e9084c: add    w9, w9, #4                               
  e90850: add    x8, x8, w9, uxtw #4                      
  e90854: add    x0, x8, #0x128                           
  e90858: ldp    x8, x3, [x0]                             
  e9085c: mov    x0, x20                                  
  e90860: mov    x1, x21                                  
  e90864: mov    x2, x22                                  
  e90868: blr    x8                                       
  e9086c: mov    x0, x19                                  
  e90870: mov    x1, xzr                                  
  e90874: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e90878: mov    x20, x0                                  
  e9087c: ldr    x0, [x23]                                
  e90880: mov    w8, #4                                   
  e90884: add    x1, sp, #0xc                             
  e90888: str    w8, [sp, #0xc]                           
  e9088c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e90890: ldr    x8, [x24]                                
  e90894: mov    x21, x0                                  
  e90898: mov    x0, x8                                   
  e9089c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e908a0: adrp   x8, #0x3071000                           
  e908a4: ldr    x8, [x8, #0x360]                         ; MMETH Method$BootMediator.InitializationCompleted()
  e908a8: mov    x1, x19                                  
  e908ac: mov    x3, xzr                                  
  e908b0: mov    x22, x0                                  
  e908b4: ldr    x2, [x8]                                 
  e908b8: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e908bc: cbnz   x20, #0xe908c8                           
  e908c0: mov    x0, xzr                                  
  e908c4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e908c8: ldr    x8, [x20]                                
  e908cc: ldr    x1, [x25]                                
  e908d0: ldrh   w9, [x8, #0x11e]                         
  e908d4: cbz    x9, #0xe90900                            
  e908d8: ldr    x11, [x8, #0xb0]                         
  e908dc: mov    x10, xzr                                 
  e908e0: add    x11, x11, #8                             
  e908e4: ldur   x12, [x11, #-8]                          
  e908e8: cmp    x12, x1                                  
  e908ec: b.eq   #0xe90910                                
  e908f0: add    x10, x10, #1                             
  e908f4: cmp    x10, x9                                  
  e908f8: add    x11, x11, #0x10                          
  e908fc: b.lo   #0xe908e4                                
  e90900: mov    w2, #4                                   
  e90904: mov    x0, x20                                  
  e90908: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e9090c: b      #0xe90920                                
  e90910: ldr    w9, [x11]                                
  e90914: add    w9, w9, #4                               
  e90918: add    x8, x8, w9, uxtw #4                      
  e9091c: add    x0, x8, #0x128                           
  e90920: ldp    x8, x3, [x0]                             
  e90924: mov    x0, x20                                  
  e90928: mov    x1, x21                                  
  e9092c: mov    x2, x22                                  
  e90930: blr    x8                                       
  e90934: mov    x0, x19                                  
  e90938: bl     #0xe90110                                ; BootMediator$$get_view
  e9093c: mov    x20, x0                                  
  e90940: cbnz   x20, #0xe90948                           
  e90944: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90948: mov    x0, x20                                  
  e9094c: mov    x1, xzr                                  
  e90950: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  e90954: mov    x20, x0                                  
  e90958: ldr    x0, [x23]                                
  e9095c: mov    w8, #1                                   
  e90960: add    x1, sp, #8                               
  e90964: str    w8, [sp, #8]                             
  e90968: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e9096c: ldr    x8, [x24]                                
  e90970: mov    x21, x0                                  
  e90974: mov    x0, x8                                   
  e90978: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e9097c: adrp   x8, #0x2fc6000                           
  e90980: ldr    x8, [x8, #0xcd0]                         ; MMETH Method$BootMediator.BeginBoot()
  e90984: mov    x1, x19                                  
  e90988: mov    x3, xzr                                  
  e9098c: mov    x22, x0                                  
  e90990: ldr    x2, [x8]                                 
  e90994: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e90998: cbnz   x20, #0xe909a4                           
  e9099c: mov    x0, xzr                                  
  e909a0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e909a4: ldr    x8, [x20]                                
  e909a8: ldr    x1, [x25]                                
  e909ac: ldrh   w9, [x8, #0x11e]                         
  e909b0: cbz    x9, #0xe909dc                            
  e909b4: ldr    x11, [x8, #0xb0]                         
  e909b8: mov    x10, xzr                                 
  e909bc: add    x11, x11, #8                             
  e909c0: ldur   x12, [x11, #-8]                          
  e909c4: cmp    x12, x1                                  
  e909c8: b.eq   #0xe909ec                                
  e909cc: add    x10, x10, #1                             
  e909d0: cmp    x10, x9                                  
  e909d4: add    x11, x11, #0x10                          
  e909d8: b.lo   #0xe909c0                                
  e909dc: mov    w2, #4                                   
  e909e0: mov    x0, x20                                  
  e909e4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e909e8: b      #0xe909fc                                
  e909ec: ldr    w9, [x11]                                
  e909f0: add    w9, w9, #4                               
  e909f4: add    x8, x8, w9, uxtw #4                      
  e909f8: add    x0, x8, #0x128                           
  e909fc: ldp    x8, x3, [x0]                             
  e90a00: mov    x0, x20                                  
  e90a04: mov    x1, x21                                  
  e90a08: mov    x2, x22                                  
  e90a0c: blr    x8                                       
  e90a10: mov    x0, x19                                  
  e90a14: bl     #0xe90110                                ; BootMediator$$get_view
  e90a18: mov    x20, x0                                  
  e90a1c: cbnz   x20, #0xe90a24                           
  e90a20: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90a24: mov    x0, x20                                  
  e90a28: mov    x1, xzr                                  
  e90a2c: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  e90a30: mov    x20, x0                                  
  e90a34: ldr    x0, [x23]                                
  e90a38: mov    w8, #9                                   
  e90a3c: add    x1, sp, #4                               
  e90a40: str    w8, [sp, #4]                             
  e90a44: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e90a48: ldr    x8, [x24]                                
  e90a4c: mov    x21, x0                                  
  e90a50: mov    x0, x8                                   
  e90a54: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e90a58: adrp   x8, #0x3012000                           
  e90a5c: ldr    x8, [x8, #0xd20]                         ; MMETH Method$BootMediator.DownLoadServerList()
  e90a60: mov    x1, x19                                  
  e90a64: mov    x3, xzr                                  
  e90a68: mov    x22, x0                                  
  e90a6c: ldr    x2, [x8]                                 
  e90a70: bl     #0x17cea24                               ; strange.extensions.dispatcher.eventdispatcher.api.EmptyCallback$$.ctor
  e90a74: cbnz   x20, #0xe90a80                           
  e90a78: mov    x0, xzr                                  
  e90a7c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90a80: ldr    x8, [x20]                                
  e90a84: ldr    x1, [x25]                                
  e90a88: ldrh   w9, [x8, #0x11e]                         
  e90a8c: cbz    x9, #0xe90ab8                            
  e90a90: ldr    x11, [x8, #0xb0]                         
  e90a94: mov    x10, xzr                                 
  e90a98: add    x11, x11, #8                             
  e90a9c: ldur   x12, [x11, #-8]                          
  e90aa0: cmp    x12, x1                                  
  e90aa4: b.eq   #0xe90ac8                                
  e90aa8: add    x10, x10, #1                             
  e90aac: cmp    x10, x9                                  
  e90ab0: add    x11, x11, #0x10                          
  e90ab4: b.lo   #0xe90a9c                                
  e90ab8: mov    w2, #4                                   
  e90abc: mov    x0, x20                                  
  e90ac0: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  e90ac4: b      #0xe90ad8                                
  e90ac8: ldr    w9, [x11]                                
  e90acc: add    w9, w9, #4                               
  e90ad0: add    x8, x8, w9, uxtw #4                      
  e90ad4: add    x0, x8, #0x128                           
  e90ad8: ldp    x8, x3, [x0]                             
  e90adc: mov    x0, x20                                  
  e90ae0: mov    x1, x21                                  
  e90ae4: mov    x2, x22                                  
  e90ae8: blr    x8                                       
  e90aec: ldr    x0, [x19, #0x30]                         
  e90af0: cbz    x0, #0xe90b00                            
  e90af4: mov    x1, xzr                                  
  e90af8: bl     #0x107c100                               ; RequestState$$Close
  e90afc: str    xzr, [x19, #0x30]                        
  e90b00: ldp    x29, x30, [sp, #0x50]                    
  e90b04: ldp    x20, x19, [sp, #0x40]                    
  e90b08: ldp    x22, x21, [sp, #0x30]                    
  e90b0c: ldp    x24, x23, [sp, #0x20]                    
  e90b10: ldr    x25, [sp, #0x10]                         
  e90b14: add    sp, sp, #0x60                            
  e90b18: ret                                             

===== BootMediator$$OnUpdateCancel @ 0xe92510 (408 bytes)
  e92510: str    x21, [sp, #-0x30]!                       
  e92514: stp    x20, x19, [sp, #0x10]                    
  e92518: stp    x29, x30, [sp, #0x20]                    
  e9251c: add    x29, sp, #0x20                           
  e92520: adrp   x20, #0x31cd000                          
  e92524: ldrb   w8, [x20, #0x571]                        
  e92528: mov    x19, x0                                  
  e9252c: tbnz   w8, #0, #0xe92548                        
  e92530: adrp   x8, #0x3043000                           
  e92534: ldr    x8, [x8, #0xc38]                         
  e92538: ldr    w0, [x8]                                 
  e9253c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92540: mov    w8, #1                                   
  e92544: strb   w8, [x20, #0x571]                        
  e92548: adrp   x8, #0x3030000                           
  e9254c: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92550: ldr    x8, [x8]                                 
  e92554: ldr    x8, [x8, #0xb8]                          
  e92558: ldr    x0, [x8, #0x80]                          
  e9255c: cbz    x0, #0xe92578                            
  e92560: mov    x1, x19                                  
  e92564: ldp    x29, x30, [sp, #0x20]                    
  e92568: ldp    x20, x19, [sp, #0x10]                    
  e9256c: mov    x2, xzr                                  
  e92570: ldr    x21, [sp], #0x30                         
  e92574: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e92578: adrp   x21, #0x303a000                          
  e9257c: ldr    x21, [x21, #0xcd0]                       ; META VersionChecker_TypeInfo
  e92580: ldr    x0, [x21]                                
  e92584: ldrb   w8, [x0, #0x127]                         
  e92588: tbz    w8, #1, #0xe92598                        
  e9258c: ldr    w8, [x0, #0xd8]                          
  e92590: cbnz   w8, #0xe92598                            
  e92594: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92598: mov    x0, xzr                                  
  e9259c: bl     #0x11f7de8                               ; VersionChecker$$Get
  e925a0: mov    x20, x0                                  
  e925a4: cbnz   x20, #0xe925ac                           
  e925a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e925ac: mov    x0, x20                                  
  e925b0: mov    x1, xzr                                  
  e925b4: bl     #0x11f7b00                               ; VersionChecker$$get_IsUpdateApp
  e925b8: tbz    w0, #0, #0xe9263c                        
  e925bc: ldr    x0, [x21]                                
  e925c0: ldrb   w8, [x0, #0x127]                         
  e925c4: tbz    w8, #1, #0xe925d4                        
  e925c8: ldr    w8, [x0, #0xd8]                          
  e925cc: cbnz   w8, #0xe925d4                            
  e925d0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e925d4: mov    x0, xzr                                  
  e925d8: bl     #0x11f7de8                               ; VersionChecker$$Get
  e925dc: mov    x19, x0                                  
  e925e0: cbnz   x19, #0xe925e8                           
  e925e4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e925e8: mov    x0, x19                                  
  e925ec: mov    x1, xzr                                  
  e925f0: bl     #0x11f7b88                               ; VersionChecker$$get_IsForceUpdate
  e925f4: tbnz   w0, #0, #0xe92660                        
  e925f8: ldr    x0, [x21]                                
  e925fc: ldrb   w8, [x0, #0x127]                         
  e92600: tbz    w8, #1, #0xe92610                        
  e92604: ldr    w8, [x0, #0xd8]                          
  e92608: cbnz   w8, #0xe92610                            
  e9260c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92610: mov    x0, xzr                                  
  e92614: bl     #0x11f7de8                               ; VersionChecker$$Get
  e92618: mov    x19, x0                                  
  e9261c: cbnz   x19, #0xe92624                           
  e92620: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92624: mov    x0, x19                                  
  e92628: ldp    x29, x30, [sp, #0x20]                    
  e9262c: ldp    x20, x19, [sp, #0x10]                    
  e92630: mov    x1, xzr                                  
  e92634: ldr    x21, [sp], #0x30                         
  e92638: b      #0x11f87e8                               ; VersionChecker$$CheckResVersion
  e9263c: mov    x0, xzr                                  
  e92640: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e92644: mov    x20, x0                                  
  e92648: cbnz   x20, #0xe92650                           
  e9264c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92650: mov    x0, x20                                  
  e92654: mov    x1, xzr                                  
  e92658: bl     #0x1b7e5d8                               ; UniCore.UpdateManager$$get_updateIsRequired
  e9265c: tbz    w0, #0, #0xe92674                        
  e92660: ldp    x29, x30, [sp, #0x20]                    
  e92664: ldp    x20, x19, [sp, #0x10]                    
  e92668: mov    x0, xzr                                  
  e9266c: ldr    x21, [sp], #0x30                         
  e92670: b      #0x1e6cc4c                               ; UnityEngine.Application$$Quit
  e92674: mov    x0, xzr                                  
  e92678: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e9267c: mov    x20, x0                                  
  e92680: cbnz   x20, #0xe92688                           
  e92684: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92688: mov    x0, x20                                  
  e9268c: mov    x1, xzr                                  
  e92690: bl     #0x1b7efe0                               ; UniCore.UpdateManager$$StopWaitingForUpdate
  e92694: mov    x0, x19                                  
  e92698: ldp    x29, x30, [sp, #0x20]                    
  e9269c: ldp    x20, x19, [sp, #0x10]                    
  e926a0: ldr    x21, [sp], #0x30                         
  e926a4: b      #0xe91e04                                ; BootMediator$$InitializationCompleted

===== BootMediator$$OnUpdateConfirm @ 0xe92298 (428 bytes)
  e92298: str    x21, [sp, #-0x30]!                       
  e9229c: stp    x20, x19, [sp, #0x10]                    
  e922a0: stp    x29, x30, [sp, #0x20]                    
  e922a4: add    x29, sp, #0x20                           
  e922a8: adrp   x20, #0x31cd000                          
  e922ac: ldrb   w8, [x20, #0x570]                        
  e922b0: mov    x19, x0                                  
  e922b4: tbnz   w8, #0, #0xe922d0                        
  e922b8: adrp   x8, #0x3001000                           
  e922bc: ldr    x8, [x8, #0x7f0]                         
  e922c0: ldr    w0, [x8]                                 
  e922c4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e922c8: mov    w8, #1                                   
  e922cc: strb   w8, [x20, #0x570]                        
  e922d0: adrp   x8, #0x3030000                           
  e922d4: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e922d8: ldr    x8, [x8]                                 
  e922dc: ldr    x8, [x8, #0xb8]                          
  e922e0: ldr    x0, [x8, #0x78]                          
  e922e4: cbz    x0, #0xe92300                            
  e922e8: mov    x1, x19                                  
  e922ec: ldp    x29, x30, [sp, #0x20]                    
  e922f0: ldp    x20, x19, [sp, #0x10]                    
  e922f4: mov    x2, xzr                                  
  e922f8: ldr    x21, [sp], #0x30                         
  e922fc: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e92300: adrp   x21, #0x303a000                          
  e92304: ldr    x21, [x21, #0xcd0]                       ; META VersionChecker_TypeInfo
  e92308: ldr    x0, [x21]                                
  e9230c: ldrb   w8, [x0, #0x127]                         
  e92310: tbz    w8, #1, #0xe92320                        
  e92314: ldr    w8, [x0, #0xd8]                          
  e92318: cbnz   w8, #0xe92320                            
  e9231c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e92320: mov    x0, xzr                                  
  e92324: bl     #0x11f7de8                               ; VersionChecker$$Get
  e92328: mov    x20, x0                                  
  e9232c: cbnz   x20, #0xe92334                           
  e92330: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92334: mov    x0, x20                                  
  e92338: mov    x1, xzr                                  
  e9233c: bl     #0x11f7b00                               ; VersionChecker$$get_IsUpdateApp
  e92340: tbz    w0, #0, #0xe923d0                        
  e92344: ldr    x0, [x21]                                
  e92348: ldrb   w8, [x0, #0x127]                         
  e9234c: tbz    w8, #1, #0xe9235c                        
  e92350: ldr    w8, [x0, #0xd8]                          
  e92354: cbnz   w8, #0xe9235c                            
  e92358: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e9235c: mov    x0, xzr                                  
  e92360: bl     #0x11f7de8                               ; VersionChecker$$Get
  e92364: mov    x20, x0                                  
  e92368: cbnz   x20, #0xe92370                           
  e9236c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92370: mov    x0, x20                                  
  e92374: mov    x1, xzr                                  
  e92378: bl     #0x11f7c10                               ; VersionChecker$$get_IsJumpBrowser
  e9237c: ldr    x8, [x21]                                
  e92380: ldrh   w9, [x8, #0x126]                         
  e92384: tbz    w0, #0, #0xe923e8                        
  e92388: tbz    w9, #9, #0xe9239c                        
  e9238c: ldr    w9, [x8, #0xd8]                          
  e92390: cbnz   w9, #0xe9239c                            
  e92394: mov    x0, x8                                   
  e92398: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e9239c: mov    x0, xzr                                  
  e923a0: bl     #0x11f7de8                               ; VersionChecker$$Get
  e923a4: mov    x19, x0                                  
  e923a8: cbnz   x19, #0xe923b0                           
  e923ac: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e923b0: mov    x0, x19                                  
  e923b4: mov    x1, xzr                                  
  e923b8: bl     #0x11f79f0                               ; VersionChecker$$get_AppUrl
  e923bc: ldp    x29, x30, [sp, #0x20]                    
  e923c0: ldp    x20, x19, [sp, #0x10]                    
  e923c4: mov    x1, xzr                                  
  e923c8: ldr    x21, [sp], #0x30                         
  e923cc: b      #0x1e6d030                               ; UnityEngine.Application$$OpenURL
  e923d0: mov    x0, x19                                  
  e923d4: ldp    x29, x30, [sp, #0x20]                    
  e923d8: ldp    x20, x19, [sp, #0x10]                    
  e923dc: mov    w1, #5                                   
  e923e0: ldr    x21, [sp], #0x30                         
  e923e4: b      #0xe91024                                ; BootMediator$$OnVersionCheckFinished
  e923e8: tbz    w9, #9, #0xe923fc                        
  e923ec: ldr    w9, [x8, #0xd8]                          
  e923f0: cbnz   w9, #0xe923fc                            
  e923f4: mov    x0, x8                                   
  e923f8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e923fc: mov    x0, xzr                                  
  e92400: bl     #0x11f7de8                               ; VersionChecker$$Get
  e92404: mov    x20, x0                                  
  e92408: cbnz   x20, #0xe92410                           
  e9240c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92410: mov    x0, x20                                  
  e92414: mov    x1, xzr                                  
  e92418: bl     #0x11f79f0                               ; VersionChecker$$get_AppUrl
  e9241c: mov    x1, x0                                   
  e92420: mov    x0, x19                                  
  e92424: bl     #0xe92444                                ; BootMediator$$DownloadLargeFile
  e92428: mov    x1, x0                                   
  e9242c: mov    x0, x19                                  
  e92430: ldp    x29, x30, [sp, #0x20]                    
  e92434: ldp    x20, x19, [sp, #0x10]                    
  e92438: mov    x2, xzr                                  
  e9243c: ldr    x21, [sp], #0x30                         
  e92440: b      #0x1be12e8                               ; UnityEngine.MonoBehaviour$$StartCoroutine

===== BootMediator$$OnVersionCheckFinished @ 0xe91024 (356 bytes)
  e91024: str    x21, [sp, #-0x30]!                       
  e91028: stp    x20, x19, [sp, #0x10]                    
  e9102c: stp    x29, x30, [sp, #0x20]                    
  e91030: add    x29, sp, #0x20                           
  e91034: adrp   x21, #0x31cd000                          
  e91038: ldrb   w8, [x21, #0x566]                        
  e9103c: mov    w20, w1                                  
  e91040: mov    x19, x0                                  
  e91044: tbnz   w8, #0, #0xe91060                        
  e91048: adrp   x8, #0x3056000                           
  e9104c: ldr    x8, [x8, #0xfc8]                         
  e91050: ldr    w0, [x8]                                 
  e91054: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e91058: mov    w8, #1                                   
  e9105c: strb   w8, [x21, #0x566]                        
  e91060: adrp   x8, #0x3030000                           
  e91064: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e91068: ldr    x8, [x8]                                 
  e9106c: ldr    x8, [x8, #0xb8]                          
  e91070: ldr    x0, [x8, #0x28]                          
  e91074: cbz    x0, #0xe91094                            
  e91078: mov    x1, x19                                  
  e9107c: mov    w2, w20                                  
  e91080: ldp    x29, x30, [sp, #0x20]                    
  e91084: ldp    x20, x19, [sp, #0x10]                    
  e91088: mov    x3, xzr                                  
  e9108c: ldr    x21, [sp], #0x30                         
  e91090: b      #0xcd3abc                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp421
  e91094: adrp   x8, #0x2fc4000                           
  e91098: ldr    x8, [x8, #0x990]                         ; META VersionCheckEvent_TypeInfo
  e9109c: add    x1, sp, #0xc                             
  e910a0: str    w20, [sp, #0xc]                          
  e910a4: ldr    x0, [x8]                                 
  e910a8: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e910ac: adrp   x8, #0x2fef000                           
  e910b0: ldr    x8, [x8, #0xe48]                         ; STR "OnVersionCheckFinished	"
  e910b4: mov    x1, x0                                   
  e910b8: mov    x2, xzr                                  
  e910bc: ldr    x8, [x8]                                 
  e910c0: mov    x0, x8                                   
  e910c4: bl     #0x1c75688                               ; System.String$$Concat
  e910c8: adrp   x8, #0x2fe9000                           
  e910cc: ldr    x8, [x8, #0xb80]                         ; META UnityEngine.Debug_TypeInfo
  e910d0: mov    x21, x0                                  
  e910d4: ldr    x8, [x8]                                 
  e910d8: ldrb   w9, [x8, #0x127]                         
  e910dc: tbz    w9, #1, #0xe910f0                        
  e910e0: ldr    w9, [x8, #0xd8]                          
  e910e4: cbnz   w9, #0xe910f0                            
  e910e8: mov    x0, x8                                   
  e910ec: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e910f0: mov    x0, x21                                  
  e910f4: mov    x1, xzr                                  
  e910f8: bl     #0x1e699ac                               ; UnityEngine.Debug$$Log
  e910fc: sub    w8, w20, #2                              
  e91100: cmp    w8, #8                                   
  e91104: b.hi   #0xe91178                                
  e91108: adrp   x9, #0x253c000                           
  e9110c: add    x9, x9, #0xb2c                           
  e91110: ldrsw  x8, [x9, x8, lsl #2]                     
  e91114: add    x8, x8, x9                               
  e91118: br     x8                                       
  e9111c: mov    x0, x19                                  
  e91120: bl     #0xe915a4                                ; BootMediator$$Reboot
  e91124: b      #0xe91178                                
  e91128: mov    x0, x19                                  
  e9112c: bl     #0xe91188                                ; BootMediator$$DownLoadServerList
  e91130: b      #0xe91178                                
  e91134: mov    x0, x19                                  
  e91138: bl     #0xe91694                                ; BootMediator$$DownloadApk
  e9113c: b      #0xe91178                                
  e91140: mov    x0, x19                                  
  e91144: bl     #0xe913fc                                ; BootMediator$$UpdateAsset
  e91148: b      #0xe91178                                
  e9114c: mov    x0, x19                                  
  e91150: bl     #0xe91318                                ; BootMediator$$BeginDownloadAsset
  e91154: b      #0xe91178                                
  e91158: mov    x0, x19                                  
  e9115c: bl     #0xe91850                                ; BootMediator$$InstallApk
  e91160: b      #0xe91178                                
  e91164: mov    x0, x19                                  
  e91168: bl     #0xe91960                                ; BootMediator$$JumpToAppStore
  e9116c: b      #0xe91178                                
  e91170: mov    x0, x19                                  
  e91174: bl     #0xe91a70                                ; BootMediator$$JumpToAndroidMarket
  e91178: ldp    x29, x30, [sp, #0x20]                    
  e9117c: ldp    x20, x19, [sp, #0x10]                    
  e91180: ldr    x21, [sp], #0x30                         
  e91184: ret                                             

===== BootMediator$$Reboot @ 0xe915a4 (240 bytes)
  e915a4: str    x21, [sp, #-0x30]!                       
  e915a8: stp    x20, x19, [sp, #0x10]                    
  e915ac: stp    x29, x30, [sp, #0x20]                    
  e915b0: add    x29, sp, #0x20                           
  e915b4: adrp   x20, #0x31cd000                          
  e915b8: ldrb   w8, [x20, #0x56b]                        
  e915bc: mov    x19, x0                                  
  e915c0: tbnz   w8, #0, #0xe915dc                        
  e915c4: adrp   x8, #0x302c000                           
  e915c8: ldr    x8, [x8, #0x5e0]                         
  e915cc: ldr    w0, [x8]                                 
  e915d0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e915d4: mov    w8, #1                                   
  e915d8: strb   w8, [x20, #0x56b]                        
  e915dc: adrp   x8, #0x3030000                           
  e915e0: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e915e4: ldr    x8, [x8]                                 
  e915e8: ldr    x8, [x8, #0xb8]                          
  e915ec: ldr    x0, [x8, #0x50]                          
  e915f0: cbz    x0, #0xe9160c                            
  e915f4: mov    x1, x19                                  
  e915f8: ldp    x29, x30, [sp, #0x20]                    
  e915fc: ldp    x20, x19, [sp, #0x10]                    
  e91600: mov    x2, xzr                                  
  e91604: ldr    x21, [sp], #0x30                         
  e91608: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e9160c: bl     #0x1269298                               ; CommonTipView$$Get
  e91610: adrp   x8, #0x303e000                           
  e91614: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  e91618: mov    x20, x0                                  
  e9161c: ldr    x8, [x8]                                 
  e91620: ldrb   w9, [x8, #0x127]                         
  e91624: tbz    w9, #1, #0xe91638                        
  e91628: ldr    w9, [x8, #0xd8]                          
  e9162c: cbnz   w9, #0xe91638                            
  e91630: mov    x0, x8                                   
  e91634: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e91638: adrp   x8, #0x3002000                           
  e9163c: ldr    x8, [x8, #0xd50]                         ; STR "UPDATE_GET_VERSION_ERROR"
  e91640: mov    x1, xzr                                  
  e91644: ldr    x0, [x8]                                 
  e91648: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  e9164c: mov    x21, x0                                  
  e91650: cbnz   x20, #0xe9165c                           
  e91654: mov    x0, xzr                                  
  e91658: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e9165c: mov    x0, x20                                  
  e91660: mov    x1, x21                                  
  e91664: mov    x2, xzr                                  
  e91668: bl     #0x126a774                               ; CommonTipView$$PopCenterTipWnd
  e9166c: mov    x0, x19                                  
  e91670: bl     #0xe90110                                ; BootMediator$$get_view
  e91674: mov    x19, x0                                  
  e91678: cbnz   x19, #0xe91680                           
  e9167c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91680: mov    x0, x19                                  
  e91684: ldp    x29, x30, [sp, #0x20]                    
  e91688: ldp    x20, x19, [sp, #0x10]                    
  e9168c: ldr    x21, [sp], #0x30                         
  e91690: b      #0xe92198                                ; BootView$$VersionCompareFailedTip

===== BootMediator$$RemoveOldVersion @ 0xe90d48 (732 bytes)
  e90d48: stp    x24, x23, [sp, #-0x40]!                  
  e90d4c: stp    x22, x21, [sp, #0x10]                    
  e90d50: stp    x20, x19, [sp, #0x20]                    
  e90d54: stp    x29, x30, [sp, #0x30]                    
  e90d58: add    x29, sp, #0x30                           
  e90d5c: adrp   x20, #0x31cd000                          
  e90d60: ldrb   w8, [x20, #0x577]                        
  e90d64: mov    x19, x0                                  
  e90d68: tbnz   w8, #0, #0xe90d84                        
  e90d6c: adrp   x8, #0x2fd2000                           
  e90d70: ldr    x8, [x8, #0x9f0]                         
  e90d74: ldr    w0, [x8]                                 
  e90d78: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e90d7c: mov    w8, #1                                   
  e90d80: strb   w8, [x20, #0x577]                        
  e90d84: adrp   x8, #0x3030000                           
  e90d88: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e90d8c: ldr    x8, [x8]                                 
  e90d90: ldr    x8, [x8, #0xb8]                          
  e90d94: ldr    x0, [x8, #0xb0]                          
  e90d98: cbz    x0, #0xe90db8                            
  e90d9c: mov    x1, x19                                  
  e90da0: ldp    x29, x30, [sp, #0x30]                    
  e90da4: ldp    x20, x19, [sp, #0x20]                    
  e90da8: ldp    x22, x21, [sp, #0x10]                    
  e90dac: mov    x2, xzr                                  
  e90db0: ldp    x24, x23, [sp], #0x40                    
  e90db4: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e90db8: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e90dbc: adrp   x8, #0x2fcb000                           
  e90dc0: ldr    x8, [x8, #0x9e8]                         ; META UnityEngine.Object_TypeInfo
  e90dc4: mov    x19, x0                                  
  e90dc8: ldr    x8, [x8]                                 
  e90dcc: ldrb   w9, [x8, #0x127]                         
  e90dd0: tbz    w9, #1, #0xe90de4                        
  e90dd4: ldr    w9, [x8, #0xd8]                          
  e90dd8: cbnz   w9, #0xe90de4                            
  e90ddc: mov    x0, x8                                   
  e90de0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90de4: mov    x0, x19                                  
  e90de8: mov    x1, xzr                                  
  e90dec: mov    x2, xzr                                  
  e90df0: bl     #0x1bd861c                               ; UnityEngine.Object$$op_Equality
  e90df4: tbnz   w0, #0, #0xe90f4c                        
  e90df8: mov    x0, xzr                                  
  e90dfc: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e90e00: mov    x19, x0                                  
  e90e04: cbnz   x19, #0xe90e0c                           
  e90e08: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90e0c: mov    x0, x19                                  
  e90e10: mov    x1, xzr                                  
  e90e14: bl     #0x1b7ef30                               ; UniCore.UpdateManager$$CachedFileFolder
  e90e18: adrp   x21, #0x2fe5000                          
  e90e1c: ldr    x21, [x21, #0x7f0]                       ; META System.IO.Path_TypeInfo
  e90e20: mov    x19, x0                                  
  e90e24: ldr    x8, [x21]                                
  e90e28: ldrb   w9, [x8, #0x127]                         
  e90e2c: tbz    w9, #1, #0xe90e40                        
  e90e30: ldr    w9, [x8, #0xd8]                          
  e90e34: cbnz   w9, #0xe90e40                            
  e90e38: mov    x0, x8                                   
  e90e3c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90e40: mov    x0, x19                                  
  e90e44: mov    x1, xzr                                  
  e90e48: bl     #0x17f7e18                               ; System.IO.Path$$GetDirectoryName
  e90e4c: mov    x1, xzr                                  
  e90e50: mov    x19, x0                                  
  e90e54: bl     #0x17f6ab4                               ; System.IO.Directory$$Exists
  e90e58: tbz    w0, #0, #0xe90f4c                        
  e90e5c: mov    x0, x19                                  
  e90e60: mov    x1, xzr                                  
  e90e64: bl     #0x17f51dc                               ; System.IO.Directory$$GetDirectories
  e90e68: mov    x19, x0                                  
  e90e6c: cbnz   x19, #0xe90e78                           
  e90e70: mov    x0, xzr                                  
  e90e74: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e90e78: ldr    x8, [x19, #0x18]                         
  e90e7c: cmp    w8, #2                                   
  e90e80: b.lt   #0xe90f4c                                
  e90e84: adrp   x22, #0x302c000                          
  e90e88: ldr    x22, [x22, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  e90e8c: mov    w20, wzr                                 
  e90e90: cmp    w20, w8                                  
  e90e94: b.lo   #0xe90ea8                                
  e90e98: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e90e9c: mov    x1, xzr                                  
  e90ea0: mov    x2, xzr                                  
  e90ea4: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e90ea8: sxtw   x23, w20                                 
  e90eac: add    x24, x19, x23, lsl #3                    
  e90eb0: ldr    x20, [x24, #0x20]!                       
  e90eb4: ldr    x0, [x21]                                
  e90eb8: ldrb   w8, [x0, #0x127]                         
  e90ebc: tbz    w8, #1, #0xe90ecc                        
  e90ec0: ldr    w8, [x0, #0xd8]                          
  e90ec4: cbnz   w8, #0xe90ecc                            
  e90ec8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90ecc: mov    x0, x20                                  
  e90ed0: mov    x1, xzr                                  
  e90ed4: bl     #0x17f7328                               ; System.IO.Path$$GetFileName
  e90ed8: mov    x20, x0                                  
  e90edc: ldr    x0, [x22]                                
  e90ee0: ldrb   w8, [x0, #0x127]                         
  e90ee4: tbz    w8, #1, #0xe90ef8                        
  e90ee8: ldr    w8, [x0, #0xd8]                          
  e90eec: cbnz   w8, #0xe90ef8                            
  e90ef0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90ef4: ldr    x0, [x22]                                
  e90ef8: ldr    x8, [x0, #0xb8]                          
  e90efc: ldr    x1, [x8, #8]                             
  e90f00: mov    x0, x20                                  
  e90f04: mov    x2, xzr                                  
  e90f08: bl     #0x1c6fe98                               ; System.String$$op_Equality
  e90f0c: tbnz   w0, #0, #0xe90f3c                        
  e90f10: ldr    w8, [x19, #0x18]                         
  e90f14: cmp    w23, w8                                  
  e90f18: b.lo   #0xe90f2c                                
  e90f1c: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e90f20: mov    x1, xzr                                  
  e90f24: mov    x2, xzr                                  
  e90f28: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e90f2c: ldr    x0, [x24]                                
  e90f30: mov    w1, #1                                   
  e90f34: mov    x2, xzr                                  
  e90f38: bl     #0x17f6a20                               ; System.IO.Directory$$Delete
  e90f3c: ldr    x8, [x19, #0x18]                         
  e90f40: add    w20, w23, #1                             
  e90f44: cmp    w20, w8                                  
  e90f48: b.lt   #0xe90e90                                
  e90f4c: ldp    x29, x30, [sp, #0x30]                    
  e90f50: ldp    x20, x19, [sp, #0x20]                    
  e90f54: ldp    x22, x21, [sp, #0x10]                    
  e90f58: ldp    x24, x23, [sp], #0x40                    
  e90f5c: ret                                             
  e90f60: b      #0xe90f7c                                
  e90f64: b      #0xe90f7c                                
  e90f68: b      #0xe90f7c                                
  e90f6c: b      #0xe90f7c                                
  e90f70: b      #0xe90f7c                                
  e90f74: b      #0xe90f7c                                
  e90f78: b      #0xe90f7c                                
  e90f7c: mov    x19, x0                                  
  e90f80: cmp    w1, #1                                   
  e90f84: b.ne   #0xe91018                                
  e90f88: mov    x0, x19                                  
  e90f8c: bl     #0xa05f60                                
  e90f90: mov    x20, x0                                  
  e90f94: adrp   x8, #0x3022000                           
  e90f98: ldr    x19, [x20]                               
  e90f9c: ldr    x8, [x8, #0x9b8]                         ; META System.Exception_TypeInfo
  e90fa0: ldr    x1, [x19]                                
  e90fa4: ldr    x0, [x8]                                 
  e90fa8: bl     #0xbe247c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x3644
  e90fac: tbz    w0, #0, #0xe90ff0                        
  e90fb0: bl     #0xa057f0                                
  e90fb4: adrp   x8, #0x2fe9000                           
  e90fb8: ldr    x8, [x8, #0xb80]                         ; META UnityEngine.Debug_TypeInfo
  e90fbc: ldr    x0, [x8]                                 
  e90fc0: ldrb   w8, [x0, #0x127]                         
  e90fc4: tbz    w8, #1, #0xe90fd4                        
  e90fc8: ldr    w8, [x0, #0xd8]                          
  e90fcc: cbnz   w8, #0xe90fd4                            
  e90fd0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  e90fd4: mov    x0, x19                                  
  e90fd8: ldp    x29, x30, [sp, #0x30]                    
  e90fdc: ldp    x20, x19, [sp, #0x20]                    
  e90fe0: ldp    x22, x21, [sp, #0x10]                    
  e90fe4: mov    x1, xzr                                  
  e90fe8: ldp    x24, x23, [sp], #0x40                    
  e90fec: b      #0x1e6e38c                               ; UnityEngine.Debug$$LogException
  e90ff0: mov    w0, #8                                   
  e90ff4: bl     #0xa051c0                                
  e90ff8: ldr    x8, [x20]                                
  e90ffc: str    x8, [x0]                                 
  e91000: adrp   x1, #0x2f37000                           
  e91004: add    x1, x1, #0x610                           
  e91008: mov    x2, xzr                                  
  e9100c: bl     #0xa05d70                                
  e91010: mov    x19, x0                                  
  e91014: bl     #0xa057f0                                
  e91018: mov    x0, x19                                  
  e9101c: bl     #0xa056e0                                
  e91020: bl     #0xb37d00                                ; ? near 0xb37cac+0x54

===== BootMediator$$UpdateAsset @ 0xe913fc (424 bytes)
  e913fc: str    x21, [sp, #-0x30]!                       
  e91400: stp    x20, x19, [sp, #0x10]                    
  e91404: stp    x29, x30, [sp, #0x20]                    
  e91408: add    x29, sp, #0x20                           
  e9140c: adrp   x20, #0x31cd000                          
  e91410: ldrb   w8, [x20, #0x56a]                        
  e91414: mov    x19, x0                                  
  e91418: tbnz   w8, #0, #0xe91434                        
  e9141c: adrp   x8, #0x2fcc000                           
  e91420: ldr    x8, [x8, #0xd18]                         
  e91424: ldr    w0, [x8]                                 
  e91428: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e9142c: mov    w8, #1                                   
  e91430: strb   w8, [x20, #0x56a]                        
  e91434: adrp   x8, #0x3030000                           
  e91438: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e9143c: ldr    x8, [x8]                                 
  e91440: ldr    x8, [x8, #0xb8]                          
  e91444: ldr    x0, [x8, #0x48]                          
  e91448: cbz    x0, #0xe91464                            
  e9144c: mov    x1, x19                                  
  e91450: ldp    x29, x30, [sp, #0x20]                    
  e91454: ldp    x20, x19, [sp, #0x10]                    
  e91458: mov    x2, xzr                                  
  e9145c: ldr    x21, [sp], #0x30                         
  e91460: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  e91464: mov    x0, x19                                  
  e91468: mov    x1, xzr                                  
  e9146c: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  e91470: adrp   x8, #0x305a000                           
  e91474: ldr    x8, [x8, #0xe48]                         ; META object[]_TypeInfo
  e91478: mov    x19, x0                                  
  e9147c: mov    w1, #2                                   
  e91480: ldr    x8, [x8]                                 
  e91484: mov    x0, x8                                   
  e91488: bl     #0xc2be34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x4cffc
  e9148c: mov    x20, x0                                  
  e91490: cbnz   x20, #0xe91498                           
  e91494: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91498: adrp   x21, #0x3040000                          
  e9149c: ldr    x21, [x21, #0x3e8]                       ; STR "UPDATE_DOWNLOAD_ASSET"
  e914a0: ldr    x0, [x21]                                
  e914a4: cbz    x0, #0xe914c8                            
  e914a8: ldr    x8, [x20]                                
  e914ac: ldr    x1, [x8, #0x40]                          
  e914b0: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e914b4: cbnz   x0, #0xe914c8                            
  e914b8: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e914bc: mov    x1, xzr                                  
  e914c0: mov    x2, xzr                                  
  e914c4: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e914c8: ldr    w8, [x20, #0x18]                         
  e914cc: ldr    x21, [x21]                               
  e914d0: cbnz   w8, #0xe914e4                            
  e914d4: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e914d8: mov    x1, xzr                                  
  e914dc: mov    x2, xzr                                  
  e914e0: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e914e4: mov    x0, xzr                                  
  e914e8: str    x21, [x20, #0x20]                        
  e914ec: bl     #0x1b7e68c                               ; UniCore.UpdateManager$$Get
  e914f0: mov    x21, x0                                  
  e914f4: cbnz   x21, #0xe914fc                           
  e914f8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e914fc: mov    x0, x21                                  
  e91500: mov    x1, xzr                                  
  e91504: bl     #0x1b7edd4                               ; UniCore.UpdateManager$$GetProgress
  e91508: mov    x21, x0                                  
  e9150c: cbnz   x21, #0xe91514                           
  e91510: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e91514: adrp   x9, #0x300b000                           
  e91518: ldr    w8, [x21, #0x10]                         
  e9151c: ldr    x9, [x9, #0x800]                         ; META int_TypeInfo
  e91520: add    x1, sp, #0xc                             
  e91524: str    w8, [sp, #0xc]                           
  e91528: ldr    x0, [x9]                                 
  e9152c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  e91530: mov    x21, x0                                  
  e91534: cbz    x21, #0xe9155c                           
  e91538: ldr    x8, [x20]                                
  e9153c: mov    x0, x21                                  
  e91540: ldr    x1, [x8, #0x40]                          
  e91544: bl     #0xc2585c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46a24
  e91548: cbnz   x0, #0xe9155c                            
  e9154c: bl     #0xc171a0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x38368
  e91550: mov    x1, xzr                                  
  e91554: mov    x2, xzr                                  
  e91558: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e9155c: ldr    w8, [x20, #0x18]                         
  e91560: cmp    w8, #1                                   
  e91564: b.hi   #0xe91578                                
  e91568: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  e9156c: mov    x1, xzr                                  
  e91570: mov    x2, xzr                                  
  e91574: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  e91578: str    x21, [x20, #0x28]                        
  e9157c: adrp   x8, #0x2ff5000                           
  e91580: ldr    x8, [x8, #0xec0]                         ; MMETH Method$EventDispatcherExtension.Open<UpdateMessage>()
  e91584: mov    x0, x19                                  
  e91588: mov    x1, x20                                  
  e9158c: ldr    x2, [x8]                                 
  e91590: bl     #0x12a83c8                               ; EventDispatcherExtension$$Open<WinView>
  e91594: ldp    x29, x30, [sp, #0x20]                    
  e91598: ldp    x20, x19, [sp, #0x10]                    
  e9159c: ldr    x21, [sp], #0x30                         
  e915a0: ret                                             

===== BootMediator$$WaitForLoad @ 0xe92c78 (160 bytes)
  e92c78: stp    x20, x19, [sp, #-0x20]!                  
  e92c7c: stp    x29, x30, [sp, #0x10]                    
  e92c80: add    x29, sp, #0x10                           
  e92c84: adrp   x20, #0x31cd000                          
  e92c88: ldrb   w8, [x20, #0x575]                        
  e92c8c: mov    x19, x0                                  
  e92c90: tbnz   w8, #0, #0xe92cac                        
  e92c94: adrp   x8, #0x3008000                           
  e92c98: ldr    x8, [x8, #0x6b0]                         
  e92c9c: ldr    w0, [x8]                                 
  e92ca0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e92ca4: mov    w8, #1                                   
  e92ca8: strb   w8, [x20, #0x575]                        
  e92cac: adrp   x8, #0x3030000                           
  e92cb0: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e92cb4: ldr    x8, [x8]                                 
  e92cb8: ldr    x8, [x8, #0xb8]                          
  e92cbc: ldr    x0, [x8, #0xa0]                          
  e92cc0: cbz    x0, #0xe92cd8                            
  e92cc4: ldp    x29, x30, [sp, #0x10]                    
  e92cc8: mov    x1, x19                                  
  e92ccc: mov    x2, xzr                                  
  e92cd0: ldp    x20, x19, [sp], #0x20                    
  e92cd4: b      #0xca4ee4                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp91
  e92cd8: adrp   x8, #0x3014000                           
  e92cdc: ldr    x8, [x8, #0xfa0]                         ; META BootMediator.<WaitForLoad>d__23_TypeInfo
  e92ce0: ldr    x0, [x8]                                 
  e92ce4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  e92ce8: mov    x1, xzr                                  
  e92cec: mov    x20, x0                                  
  e92cf0: bl     #0x1ca54c0                               ; System.Object$$.ctor
  e92cf4: str    wzr, [x20, #0x10]                        
  e92cf8: cbnz   x20, #0xe92d04                           
  e92cfc: mov    x0, xzr                                  
  e92d00: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  e92d04: str    x19, [x20, #0x20]                        
  e92d08: ldp    x29, x30, [sp, #0x10]                    
  e92d0c: mov    x0, x20                                  
  e92d10: ldp    x20, x19, [sp], #0x20                    
  e92d14: ret                                             

===== BootMediator$$get_view @ 0xe90110 (112 bytes)
  e90110: stp    x20, x19, [sp, #-0x20]!                  
  e90114: stp    x29, x30, [sp, #0x10]                    
  e90118: add    x29, sp, #0x10                           
  e9011c: adrp   x20, #0x31cd000                          
  e90120: ldrb   w8, [x20, #0x562]                        
  e90124: mov    x19, x0                                  
  e90128: tbnz   w8, #0, #0xe90144                        
  e9012c: adrp   x8, #0x3004000                           
  e90130: ldr    x8, [x8, #0x178]                         
  e90134: ldr    w0, [x8]                                 
  e90138: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e9013c: mov    w8, #1                                   
  e90140: strb   w8, [x20, #0x562]                        
  e90144: adrp   x8, #0x3030000                           
  e90148: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e9014c: ldr    x8, [x8]                                 
  e90150: ldr    x8, [x8, #0xb8]                          
  e90154: ldr    x0, [x8, #8]                             
  e90158: cbz    x0, #0xe90170                            
  e9015c: ldp    x29, x30, [sp, #0x10]                    
  e90160: mov    x1, x19                                  
  e90164: mov    x2, xzr                                  
  e90168: ldp    x20, x19, [sp], #0x20                    
  e9016c: b      #0xcd3834                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp420
  e90170: ldr    x0, [x19, #0x28]                         
  e90174: ldp    x29, x30, [sp, #0x10]                    
  e90178: ldp    x20, x19, [sp], #0x20                    
  e9017c: ret                                             

===== BootMediator$$set_view @ 0xe9008c (132 bytes)
  e9008c: str    x21, [sp, #-0x30]!                       
  e90090: stp    x20, x19, [sp, #0x10]                    
  e90094: stp    x29, x30, [sp, #0x20]                    
  e90098: add    x29, sp, #0x20                           
  e9009c: adrp   x21, #0x31cd000                          
  e900a0: ldrb   w8, [x21, #0x561]                        
  e900a4: mov    x19, x1                                  
  e900a8: mov    x20, x0                                  
  e900ac: tbnz   w8, #0, #0xe900c8                        
  e900b0: adrp   x8, #0x2fd6000                           
  e900b4: ldr    x8, [x8, #0xc78]                         
  e900b8: ldr    w0, [x8]                                 
  e900bc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  e900c0: mov    w8, #1                                   
  e900c4: strb   w8, [x21, #0x561]                        
  e900c8: adrp   x8, #0x3030000                           
  e900cc: ldr    x8, [x8, #0xea8]                         ; META BootMediator_TypeInfo
  e900d0: ldr    x8, [x8]                                 
  e900d4: ldr    x8, [x8, #0xb8]                          
  e900d8: ldr    x0, [x8]                                 
  e900dc: cbz    x0, #0xe900fc                            
  e900e0: mov    x1, x20                                  
  e900e4: mov    x2, x19                                  
  e900e8: ldp    x29, x30, [sp, #0x20]                    
  e900ec: ldp    x20, x19, [sp, #0x10]                    
  e900f0: mov    x3, xzr                                  
  e900f4: ldr    x21, [sp], #0x30                         
  e900f8: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  e900fc: str    x19, [x20, #0x28]                        
  e90100: ldp    x29, x30, [sp, #0x20]                    
  e90104: ldp    x20, x19, [sp, #0x10]                    
  e90108: ldr    x21, [sp], #0x30                         
  e9010c: ret                                             

===== ServerListMediator$$OnRegister @ 0xf21408 (928 bytes)
  f21408: sub    sp, sp, #0x60                            
  f2140c: str    x25, [sp, #0x10]                         
  f21410: stp    x24, x23, [sp, #0x20]                    
  f21414: stp    x22, x21, [sp, #0x30]                    
  f21418: stp    x20, x19, [sp, #0x40]                    
  f2141c: stp    x29, x30, [sp, #0x50]                    
  f21420: add    x29, sp, #0x50                           
  f21424: adrp   x20, #0x31cd000                          
  f21428: ldrb   w8, [x20, #0xae8]                        
  f2142c: mov    x19, x0                                  
  f21430: tbnz   w8, #0, #0xf2144c                        
  f21434: adrp   x8, #0x2fec000                           
  f21438: ldr    x8, [x8, #0x230]                         
  f2143c: ldr    w0, [x8]                                 
  f21440: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f21444: mov    w8, #1                                   
  f21448: strb   w8, [x20, #0xae8]                        
  f2144c: adrp   x8, #0x2feb000                           
  f21450: ldr    x8, [x8, #0xe10]                         ; META ServerListMediator_TypeInfo
  f21454: ldr    x8, [x8]                                 
  f21458: ldr    x8, [x8, #0xb8]                          
  f2145c: ldr    x0, [x8, #0x10]                          
  f21460: cbz    x0, #0xf21488                            
  f21464: mov    x1, x19                                  
  f21468: ldp    x29, x30, [sp, #0x50]                    
  f2146c: ldp    x20, x19, [sp, #0x40]                    
  f21470: ldp    x22, x21, [sp, #0x30]                    
  f21474: ldp    x24, x23, [sp, #0x20]                    
  f21478: ldr    x25, [sp, #0x10]                         
  f2147c: mov    x2, xzr                                  
  f21480: add    sp, sp, #0x60                            
  f21484: b      #0xc9a448                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp6
  f21488: mov    x0, x19                                  
  f2148c: bl     #0xf21398                                ; ServerListMediator$$get_view
  f21490: mov    x20, x0                                  
  f21494: cbnz   x20, #0xf2149c                           
  f21498: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f2149c: mov    x0, x20                                  
  f214a0: mov    x1, xzr                                  
  f214a4: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  f214a8: adrp   x23, #0x3011000                          
  f214ac: ldr    x23, [x23, #0x730]                       ; META LoginEvent_TypeInfo
  f214b0: mov    x20, x0                                  
  f214b4: mov    w8, #0xa                                 
  f214b8: add    x1, sp, #0x1c                            
  f214bc: ldr    x0, [x23]                                
  f214c0: str    w8, [sp, #0x1c]                          
  f214c4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f214c8: adrp   x24, #0x302a000                          
  f214cc: ldr    x24, [x24, #0x3a0]                       ; META strange.extensions.dispatcher.eventdispatcher.api.EventCallback_TypeInfo
  f214d0: mov    x21, x0                                  
  f214d4: ldr    x8, [x24]                                
  f214d8: mov    x0, x8                                   
  f214dc: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f214e0: adrp   x8, #0x3051000                           
  f214e4: ldr    x8, [x8, #0x858]                         ; MMETH Method$ServerListMediator.OnZoneSelected()
  f214e8: mov    x1, x19                                  
  f214ec: mov    x3, xzr                                  
  f214f0: mov    x22, x0                                  
  f214f4: ldr    x2, [x8]                                 
  f214f8: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  f214fc: cbnz   x20, #0xf21508                           
  f21500: mov    x0, xzr                                  
  f21504: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f21508: adrp   x25, #0x3069000                          
  f2150c: ldr    x8, [x20]                                
  f21510: ldr    x25, [x25, #0x638]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEventDispatcher_TypeInfo
  f21514: ldrh   w9, [x8, #0x11e]                         
  f21518: ldr    x1, [x25]                                
  f2151c: cbz    x9, #0xf21548                            
  f21520: ldr    x11, [x8, #0xb0]                         
  f21524: mov    x10, xzr                                 
  f21528: add    x11, x11, #8                             
  f2152c: ldur   x12, [x11, #-8]                          
  f21530: cmp    x12, x1                                  
  f21534: b.eq   #0xf21558                                
  f21538: add    x10, x10, #1                             
  f2153c: cmp    x10, x9                                  
  f21540: add    x11, x11, #0x10                          
  f21544: b.lo   #0xf2152c                                
  f21548: mov    w2, #1                                   
  f2154c: mov    x0, x20                                  
  f21550: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f21554: b      #0xf21568                                
  f21558: ldr    w9, [x11]                                
  f2155c: add    w9, w9, #1                               
  f21560: add    x8, x8, w9, uxtw #4                      
  f21564: add    x0, x8, #0x128                           
  f21568: ldp    x8, x3, [x0]                             
  f2156c: mov    x0, x20                                  
  f21570: mov    x1, x21                                  
  f21574: mov    x2, x22                                  
  f21578: blr    x8                                       
  f2157c: mov    x0, x19                                  
  f21580: bl     #0xf21398                                ; ServerListMediator$$get_view
  f21584: mov    x20, x0                                  
  f21588: cbnz   x20, #0xf21590                           
  f2158c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f21590: mov    x0, x20                                  
  f21594: mov    x1, xzr                                  
  f21598: bl     #0x17da41c                               ; strange.extensions.mediation.impl.EventView$$get_dispatcher
  f2159c: mov    x20, x0                                  
  f215a0: ldr    x0, [x23]                                
  f215a4: mov    w8, #0xb                                 
  f215a8: add    x1, sp, #0x18                            
  f215ac: str    w8, [sp, #0x18]                          
  f215b0: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f215b4: ldr    x8, [x24]                                
  f215b8: mov    x21, x0                                  
  f215bc: mov    x0, x8                                   
  f215c0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f215c4: adrp   x8, #0x3055000                           
  f215c8: ldr    x8, [x8, #0xc88]                         ; MMETH Method$ServerListMediator.OnServerSelected()
  f215cc: mov    x1, x19                                  
  f215d0: mov    x3, xzr                                  
  f215d4: mov    x22, x0                                  
  f215d8: ldr    x2, [x8]                                 
  f215dc: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  f215e0: cbnz   x20, #0xf215ec                           
  f215e4: mov    x0, xzr                                  
  f215e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f215ec: ldr    x8, [x20]                                
  f215f0: ldr    x1, [x25]                                
  f215f4: ldrh   w9, [x8, #0x11e]                         
  f215f8: cbz    x9, #0xf21624                            
  f215fc: ldr    x11, [x8, #0xb0]                         
  f21600: mov    x10, xzr                                 
  f21604: add    x11, x11, #8                             
  f21608: ldur   x12, [x11, #-8]                          
  f2160c: cmp    x12, x1                                  
  f21610: b.eq   #0xf21634                                
  f21614: add    x10, x10, #1                             
  f21618: cmp    x10, x9                                  
  f2161c: add    x11, x11, #0x10                          
  f21620: b.lo   #0xf21608                                
  f21624: mov    w2, #1                                   
  f21628: mov    x0, x20                                  
  f2162c: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f21630: b      #0xf21644                                
  f21634: ldr    w9, [x11]                                
  f21638: add    w9, w9, #1                               
  f2163c: add    x8, x8, w9, uxtw #4                      
  f21640: add    x0, x8, #0x128                           
  f21644: ldp    x8, x3, [x0]                             
  f21648: mov    x0, x20                                  
  f2164c: mov    x1, x21                                  
  f21650: mov    x2, x22                                  
  f21654: blr    x8                                       
  f21658: mov    x0, x19                                  
  f2165c: mov    x1, xzr                                  
  f21660: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  f21664: mov    x20, x0                                  
  f21668: ldr    x0, [x23]                                
  f2166c: mov    w8, #0xe                                 
  f21670: add    x1, sp, #0xc                             
  f21674: str    w8, [sp, #0xc]                           
  f21678: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f2167c: ldr    x8, [x24]                                
  f21680: mov    x21, x0                                  
  f21684: mov    x0, x8                                   
  f21688: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f2168c: adrp   x8, #0x2fe5000                           
  f21690: ldr    x8, [x8, #0x110]                         ; MMETH Method$ServerListMediator.OnServerListDownLoad()
  f21694: mov    x1, x19                                  
  f21698: mov    x3, xzr                                  
  f2169c: mov    x22, x0                                  
  f216a0: ldr    x2, [x8]                                 
  f216a4: bl     #0x17cee74                               ; strange.extensions.dispatcher.eventdispatcher.api.EventCallback$$.ctor
  f216a8: cbnz   x20, #0xf216b4                           
  f216ac: mov    x0, xzr                                  
  f216b0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f216b4: ldr    x8, [x20]                                
  f216b8: ldr    x1, [x25]                                
  f216bc: ldrh   w9, [x8, #0x11e]                         
  f216c0: cbz    x9, #0xf216ec                            
  f216c4: ldr    x11, [x8, #0xb0]                         
  f216c8: mov    x10, xzr                                 
  f216cc: add    x11, x11, #8                             
  f216d0: ldur   x12, [x11, #-8]                          
  f216d4: cmp    x12, x1                                  
  f216d8: b.eq   #0xf216fc                                
  f216dc: add    x10, x10, #1                             
  f216e0: cmp    x10, x9                                  
  f216e4: add    x11, x11, #0x10                          
  f216e8: b.lo   #0xf216d0                                
  f216ec: mov    w2, #1                                   
  f216f0: mov    x0, x20                                  
  f216f4: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f216f8: b      #0xf2170c                                
  f216fc: ldr    w9, [x11]                                
  f21700: add    w9, w9, #1                               
  f21704: add    x8, x8, w9, uxtw #4                      
  f21708: add    x0, x8, #0x128                           
  f2170c: ldp    x8, x3, [x0]                             
  f21710: mov    x0, x20                                  
  f21714: mov    x1, x21                                  
  f21718: mov    x2, x22                                  
  f2171c: blr    x8                                       
  f21720: mov    x0, xzr                                  
  f21724: bl     #0x10ac128                               ; Downloader$$Get
  f21728: adrp   x8, #0x3073000                           
  f2172c: ldr    x8, [x8, #0x798]                         ; META System.Action<string>_TypeInfo
  f21730: mov    x20, x0                                  
  f21734: ldr    x8, [x8]                                 
  f21738: mov    x0, x8                                   
  f2173c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f21740: adrp   x8, #0x2ffc000                           
  f21744: adrp   x9, #0x3038000                           
  f21748: ldr    x8, [x8, #0x468]                         ; MMETH Method$ServerListMediator.InitServerList()
  f2174c: ldr    x9, [x9, #0x860]                         ; MMETH Method$System.Action<string>..ctor()
  f21750: mov    x1, x19                                  
  f21754: mov    x21, x0                                  
  f21758: ldr    x2, [x8]                                 
  f2175c: ldr    x3, [x9]                                 
  f21760: bl     #0x1f6f4d8                               ; System.Action<ImplicitBinder.ImplicitBindingVO>$$.ctor
  f21764: cbnz   x20, #0xf21770                           
  f21768: mov    x0, xzr                                  
  f2176c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f21770: adrp   x8, #0x2feb000                           
  f21774: ldr    x8, [x8, #0xe8]                          ; STR "serverlist.txt"
  f21778: mov    x0, x20                                  
  f2177c: mov    x2, x21                                  
  f21780: mov    x3, xzr                                  
  f21784: ldr    x1, [x8]                                 
  f21788: bl     #0x10ac318                               ; Downloader$$DownloadAndCacheText
  f2178c: ldp    x29, x30, [sp, #0x50]                    
  f21790: ldp    x20, x19, [sp, #0x40]                    
  f21794: ldp    x22, x21, [sp, #0x30]                    
  f21798: ldp    x24, x23, [sp, #0x20]                    
  f2179c: ldr    x25, [sp, #0x10]                         
  f217a0: add    sp, sp, #0x60                            
  f217a4: ret                                             

===== ServerListMediator$$OnServerListDownLoad @ 0xf220cc (284 bytes)
  f220cc: str    x21, [sp, #-0x30]!                       
  f220d0: stp    x20, x19, [sp, #0x10]                    
  f220d4: stp    x29, x30, [sp, #0x20]                    
  f220d8: add    x29, sp, #0x20                           
  f220dc: adrp   x21, #0x31cd000                          
  f220e0: ldrb   w8, [x21, #0xaec]                        
  f220e4: mov    x20, x1                                  
  f220e8: mov    x19, x0                                  
  f220ec: tbnz   w8, #0, #0xf22108                        
  f220f0: adrp   x8, #0x3022000                           
  f220f4: ldr    x8, [x8, #0x1b0]                         
  f220f8: ldr    w0, [x8]                                 
  f220fc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f22100: mov    w8, #1                                   
  f22104: strb   w8, [x21, #0xaec]                        
  f22108: adrp   x8, #0x2feb000                           
  f2210c: ldr    x8, [x8, #0xe10]                         ; META ServerListMediator_TypeInfo
  f22110: ldr    x8, [x8]                                 
  f22114: ldr    x8, [x8, #0xb8]                          
  f22118: ldr    x0, [x8, #0x30]                          
  f2211c: cbz    x0, #0xf2213c                            
  f22120: mov    x1, x19                                  
  f22124: mov    x2, x20                                  
  f22128: ldp    x29, x30, [sp, #0x20]                    
  f2212c: ldp    x20, x19, [sp, #0x10]                    
  f22130: mov    x3, xzr                                  
  f22134: ldr    x21, [sp], #0x30                         
  f22138: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  f2213c: cbnz   x20, #0xf22148                           
  f22140: mov    x0, xzr                                  
  f22144: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22148: adrp   x10, #0x2ff0000                          
  f2214c: ldr    x8, [x20]                                
  f22150: ldr    x10, [x10, #0x820]                       ; META strange.extensions.dispatcher.eventdispatcher.api.IEvent_TypeInfo
  f22154: ldrh   w9, [x8, #0x11e]                         
  f22158: ldr    x1, [x10]                                
  f2215c: cbz    x9, #0xf22188                            
  f22160: ldr    x11, [x8, #0xb0]                         
  f22164: mov    x10, xzr                                 
  f22168: add    x11, x11, #8                             
  f2216c: ldur   x12, [x11, #-8]                          
  f22170: cmp    x12, x1                                  
  f22174: b.eq   #0xf22198                                
  f22178: add    x10, x10, #1                             
  f2217c: cmp    x10, x9                                  
  f22180: add    x11, x11, #0x10                          
  f22184: b.lo   #0xf2216c                                
  f22188: mov    w2, #4                                   
  f2218c: mov    x0, x20                                  
  f22190: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f22194: b      #0xf221a8                                
  f22198: ldr    w9, [x11]                                
  f2219c: add    w9, w9, #4                               
  f221a0: add    x8, x8, w9, uxtw #4                      
  f221a4: add    x0, x8, #0x128                           
  f221a8: ldp    x8, x1, [x0]                             
  f221ac: mov    x0, x20                                  
  f221b0: blr    x8                                       
  f221b4: mov    x20, x0                                  
  f221b8: cbnz   x20, #0xf221c0                           
  f221bc: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f221c0: ldr    x8, [x20]                                
  f221c4: mov    x0, x20                                  
  f221c8: ldp    x9, x1, [x8, #0x158]                     
  f221cc: blr    x9                                       
  f221d0: mov    x1, x0                                   
  f221d4: mov    x0, x19                                  
  f221d8: ldp    x29, x30, [sp, #0x20]                    
  f221dc: ldp    x20, x19, [sp, #0x10]                    
  f221e0: ldr    x21, [sp], #0x30                         
  f221e4: b      #0xf221e8                                ; ServerListMediator$$InitServerList
