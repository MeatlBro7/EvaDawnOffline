
===== SceneLoading$$.ctor @ 0xf1e4c4 (104 bytes)
  f1e4c4: stp    x20, x19, [sp, #-0x20]!                  
  f1e4c8: stp    x29, x30, [sp, #0x10]                    
  f1e4cc: add    x29, sp, #0x10                           
  f1e4d0: adrp   x20, #0x31cd000                          
  f1e4d4: ldrb   w8, [x20, #0xac4]                        
  f1e4d8: mov    x19, x0                                  
  f1e4dc: tbnz   w8, #0, #0xf1e4f8                        
  f1e4e0: adrp   x8, #0x3072000                           
  f1e4e4: ldr    x8, [x8, #0x4f8]                         
  f1e4e8: ldr    w0, [x8]                                 
  f1e4ec: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e4f0: mov    w8, #1                                   
  f1e4f4: strb   w8, [x20, #0xac4]                        
  f1e4f8: adrp   x8, #0x2ffe000                           
  f1e4fc: ldr    x8, [x8, #0xc20]                         ; META System.Text.StringBuilder_TypeInfo
  f1e500: ldr    x0, [x8]                                 
  f1e504: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1e508: mov    x1, xzr                                  
  f1e50c: mov    x20, x0                                  
  f1e510: bl     #0x1df2650                               ; System.Text.StringBuilder$$.ctor
  f1e514: str    x20, [x19, #0x78]                        
  f1e518: ldp    x29, x30, [sp, #0x10]                    
  f1e51c: mov    x0, x19                                  
  f1e520: mov    x1, xzr                                  
  f1e524: ldp    x20, x19, [sp], #0x20                    
  f1e528: b      #0x1be0dd4                               ; UnityEngine.MonoBehaviour$$.ctor

===== SceneLoading$$Awake @ 0xf1de90 (296 bytes)
  f1de90: stp    x20, x19, [sp, #-0x20]!                  
  f1de94: stp    x29, x30, [sp, #0x10]                    
  f1de98: add    x29, sp, #0x10                           
  f1de9c: adrp   x20, #0x31cd000                          
  f1dea0: ldrb   w8, [x20, #0xabd]                        
  f1dea4: mov    x19, x0                                  
  f1dea8: tbnz   w8, #0, #0xf1dec4                        
  f1deac: adrp   x8, #0x3010000                           
  f1deb0: ldr    x8, [x8, #0x2e8]                         
  f1deb4: ldr    w0, [x8]                                 
  f1deb8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1debc: mov    w8, #1                                   
  f1dec0: strb   w8, [x20, #0xabd]                        
  f1dec4: adrp   x8, #0x2fc9000                           
  f1dec8: ldr    x8, [x8, #0x4c0]                         ; META SceneLoading_TypeInfo
  f1decc: ldr    x8, [x8]                                 
  f1ded0: ldr    x8, [x8, #0xb8]                          
  f1ded4: str    x19, [x8]                                
  f1ded8: adrp   x8, #0x304e000                           
  f1dedc: ldr    x8, [x8, #0xd90]                         ; META UniCore.SceneMgr.ScenePreUnloadCallback_TypeInfo
  f1dee0: ldr    x0, [x8]                                 
  f1dee4: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1dee8: adrp   x8, #0x3051000                           
  f1deec: ldr    x8, [x8, #0x2a0]                         ; MMETH Method$SceneLoading.ScenePreUnloadEvent()
  f1def0: mov    x1, x19                                  
  f1def4: mov    x3, xzr                                  
  f1def8: mov    x20, x0                                  
  f1defc: ldr    x2, [x8]                                 
  f1df00: bl     #0x19ea64c                               ; UniCore.SceneMgr.ScenePreUnloadCallback$$.ctor
  f1df04: adrp   x8, #0x3033000                           
  f1df08: ldr    x8, [x8, #0x638]                         ; META UniCore.SceneMgr_TypeInfo
  f1df0c: ldr    x0, [x8]                                 
  f1df10: ldrb   w8, [x0, #0x127]                         
  f1df14: tbz    w8, #1, #0xf1df24                        
  f1df18: ldr    w8, [x0, #0xd8]                          
  f1df1c: cbnz   w8, #0xf1df24                            
  f1df20: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1df24: mov    x0, x20                                  
  f1df28: mov    x1, xzr                                  
  f1df2c: bl     #0x143da40                               ; UniCore.SceneMgr$$RegisterScenePreUnloadEvent
  f1df30: adrp   x8, #0x2fec000                           
  f1df34: ldr    x8, [x8, #0x300]                         ; META UniCore.SceneMgr.ScenePreLoadCallback_TypeInfo
  f1df38: ldr    x0, [x8]                                 
  f1df3c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1df40: adrp   x8, #0x2ff5000                           
  f1df44: ldr    x8, [x8, #0xd18]                         ; MMETH Method$SceneLoading.ScenePreLoadEvent()
  f1df48: mov    x1, x19                                  
  f1df4c: mov    x3, xzr                                  
  f1df50: mov    x20, x0                                  
  f1df54: ldr    x2, [x8]                                 
  f1df58: bl     #0x19e9da8                               ; UniCore.SceneMgr.ScenePreLoadCallback$$.ctor
  f1df5c: mov    x0, x20                                  
  f1df60: mov    x1, xzr                                  
  f1df64: bl     #0x143e0f8                               ; UniCore.SceneMgr$$RegisterScenePreLoadEvent
  f1df68: adrp   x8, #0x3058000                           
  f1df6c: ldr    x8, [x8, #0x230]                         ; META UniCore.SceneMgr.SceneLoadedCallback_TypeInfo
  f1df70: ldr    x0, [x8]                                 
  f1df74: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1df78: adrp   x8, #0x3063000                           
  f1df7c: ldr    x8, [x8, #0x6f8]                         ; MMETH Method$SceneLoading.SceneLoaded()
  f1df80: mov    x1, x19                                  
  f1df84: mov    x3, xzr                                  
  f1df88: mov    x20, x0                                  
  f1df8c: ldr    x2, [x8]                                 
  f1df90: bl     #0x19e9504                               ; UniCore.SceneMgr.SceneLoadedCallback$$.ctor
  f1df94: mov    x0, x20                                  
  f1df98: mov    x1, xzr                                  
  f1df9c: bl     #0x143e454                               ; UniCore.SceneMgr$$RegisterSceneLoadedEvent
  f1dfa0: mov    x0, xzr                                  
  f1dfa4: bl     #0xdfd2b8                                ; AssetLoaderEx$$LoadLoadingTextures
  f1dfa8: str    x0, [x19, #0x38]                         
  f1dfac: ldp    x29, x30, [sp, #0x10]                    
  f1dfb0: ldp    x20, x19, [sp], #0x20                    
  f1dfb4: ret                                             

===== SceneLoading$$DelayClear @ 0xf1e16c (96 bytes)
  f1e16c: str    x19, [sp, #-0x20]!                       
  f1e170: stp    x29, x30, [sp, #0x10]                    
  f1e174: add    x29, sp, #0x10                           
  f1e178: adrp   x19, #0x31cd000                          
  f1e17c: ldrb   w8, [x19, #0xac1]                        
  f1e180: tbnz   w8, #0, #0xf1e19c                        
  f1e184: adrp   x8, #0x3054000                           
  f1e188: ldr    x8, [x8, #0x7c0]                         
  f1e18c: ldr    w0, [x8]                                 
  f1e190: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e194: mov    w8, #1                                   
  f1e198: strb   w8, [x19, #0xac1]                        
  f1e19c: adrp   x8, #0x3051000                           
  f1e1a0: ldr    x8, [x8, #0x810]                         ; META SceneLoading.<DelayClear>d__25_TypeInfo
  f1e1a4: ldr    x0, [x8]                                 
  f1e1a8: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1e1ac: mov    x1, xzr                                  
  f1e1b0: mov    x19, x0                                  
  f1e1b4: bl     #0x1ca54c0                               ; System.Object$$.ctor
  f1e1b8: str    wzr, [x19, #0x10]                        
  f1e1bc: ldp    x29, x30, [sp, #0x10]                    
  f1e1c0: mov    x0, x19                                  
  f1e1c4: ldr    x19, [sp], #0x20                         
  f1e1c8: ret                                             

===== SceneLoading$$Get @ 0xf1d744 (80 bytes)
  f1d744: str    x19, [sp, #-0x20]!                       
  f1d748: stp    x29, x30, [sp, #0x10]                    
  f1d74c: add    x29, sp, #0x10                           
  f1d750: adrp   x19, #0x31cd000                          
  f1d754: ldrb   w8, [x19, #0xab9]                        
  f1d758: tbnz   w8, #0, #0xf1d774                        
  f1d75c: adrp   x8, #0x3054000                           
  f1d760: ldr    x8, [x8, #0x808]                         
  f1d764: ldr    w0, [x8]                                 
  f1d768: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1d76c: mov    w8, #1                                   
  f1d770: strb   w8, [x19, #0xab9]                        
  f1d774: adrp   x8, #0x2fc9000                           
  f1d778: ldr    x8, [x8, #0x4c0]                         ; META SceneLoading_TypeInfo
  f1d77c: ldp    x29, x30, [sp, #0x10]                    
  f1d780: ldr    x8, [x8]                                 
  f1d784: ldr    x8, [x8, #0xb8]                          
  f1d788: ldr    x0, [x8]                                 
  f1d78c: ldr    x19, [sp], #0x20                         
  f1d790: ret                                             

===== SceneLoading$$OnDestroy @ 0xf1dfb8 (280 bytes)
  f1dfb8: stp    x20, x19, [sp, #-0x20]!                  
  f1dfbc: stp    x29, x30, [sp, #0x10]                    
  f1dfc0: add    x29, sp, #0x10                           
  f1dfc4: adrp   x20, #0x31cd000                          
  f1dfc8: ldrb   w8, [x20, #0xabe]                        
  f1dfcc: mov    x19, x0                                  
  f1dfd0: tbnz   w8, #0, #0xf1dfec                        
  f1dfd4: adrp   x8, #0x2fca000                           
  f1dfd8: ldr    x8, [x8, #0x468]                         
  f1dfdc: ldr    w0, [x8]                                 
  f1dfe0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1dfe4: mov    w8, #1                                   
  f1dfe8: strb   w8, [x20, #0xabe]                        
  f1dfec: adrp   x8, #0x2fc9000                           
  f1dff0: ldr    x8, [x8, #0x4c0]                         ; META SceneLoading_TypeInfo
  f1dff4: ldr    x8, [x8]                                 
  f1dff8: ldr    x8, [x8, #0xb8]                          
  f1dffc: str    xzr, [x8]                                
  f1e000: adrp   x8, #0x304e000                           
  f1e004: ldr    x8, [x8, #0xd90]                         ; META UniCore.SceneMgr.ScenePreUnloadCallback_TypeInfo
  f1e008: ldr    x0, [x8]                                 
  f1e00c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1e010: adrp   x8, #0x3051000                           
  f1e014: ldr    x8, [x8, #0x2a0]                         ; MMETH Method$SceneLoading.ScenePreUnloadEvent()
  f1e018: mov    x1, x19                                  
  f1e01c: mov    x3, xzr                                  
  f1e020: mov    x20, x0                                  
  f1e024: ldr    x2, [x8]                                 
  f1e028: bl     #0x19ea64c                               ; UniCore.SceneMgr.ScenePreUnloadCallback$$.ctor
  f1e02c: adrp   x8, #0x3033000                           
  f1e030: ldr    x8, [x8, #0x638]                         ; META UniCore.SceneMgr_TypeInfo
  f1e034: ldr    x0, [x8]                                 
  f1e038: ldrb   w8, [x0, #0x127]                         
  f1e03c: tbz    w8, #1, #0xf1e04c                        
  f1e040: ldr    w8, [x0, #0xd8]                          
  f1e044: cbnz   w8, #0xf1e04c                            
  f1e048: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1e04c: mov    x0, x20                                  
  f1e050: mov    x1, xzr                                  
  f1e054: bl     #0x143dc1c                               ; UniCore.SceneMgr$$UnregisterScenePreUnloadEvent
  f1e058: adrp   x8, #0x2fec000                           
  f1e05c: ldr    x8, [x8, #0x300]                         ; META UniCore.SceneMgr.ScenePreLoadCallback_TypeInfo
  f1e060: ldr    x0, [x8]                                 
  f1e064: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1e068: adrp   x8, #0x2ff5000                           
  f1e06c: ldr    x8, [x8, #0xd18]                         ; MMETH Method$SceneLoading.ScenePreLoadEvent()
  f1e070: mov    x1, x19                                  
  f1e074: mov    x3, xzr                                  
  f1e078: mov    x20, x0                                  
  f1e07c: ldr    x2, [x8]                                 
  f1e080: bl     #0x19e9da8                               ; UniCore.SceneMgr.ScenePreLoadCallback$$.ctor
  f1e084: mov    x0, x20                                  
  f1e088: mov    x1, xzr                                  
  f1e08c: bl     #0x143e2d4                               ; UniCore.SceneMgr$$UnregisterScenePreLoadEvent
  f1e090: adrp   x8, #0x3058000                           
  f1e094: ldr    x8, [x8, #0x230]                         ; META UniCore.SceneMgr.SceneLoadedCallback_TypeInfo
  f1e098: ldr    x0, [x8]                                 
  f1e09c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1e0a0: adrp   x8, #0x3063000                           
  f1e0a4: ldr    x8, [x8, #0x6f8]                         ; MMETH Method$SceneLoading.SceneLoaded()
  f1e0a8: mov    x1, x19                                  
  f1e0ac: mov    x3, xzr                                  
  f1e0b0: mov    x20, x0                                  
  f1e0b4: ldr    x2, [x8]                                 
  f1e0b8: bl     #0x19e9504                               ; UniCore.SceneMgr.SceneLoadedCallback$$.ctor
  f1e0bc: ldp    x29, x30, [sp, #0x10]                    
  f1e0c0: mov    x0, x20                                  
  f1e0c4: mov    x1, xzr                                  
  f1e0c8: ldp    x20, x19, [sp], #0x20                    
  f1e0cc: b      #0x143e630                               ; UniCore.SceneMgr$$UnregisterSceneLoadedEvent

===== SceneLoading$$SceneLoaded @ 0xf1e310 (256 bytes)
  f1e310: stp    x20, x19, [sp, #-0x20]!                  
  f1e314: stp    x29, x30, [sp, #0x10]                    
  f1e318: add    x29, sp, #0x10                           
  f1e31c: adrp   x20, #0x31cd000                          
  f1e320: ldrb   w8, [x20, #0xac2]                        
  f1e324: mov    x19, x0                                  
  f1e328: tbnz   w8, #0, #0xf1e344                        
  f1e32c: adrp   x8, #0x3022000                           
  f1e330: ldr    x8, [x8, #0x128]                         
  f1e334: ldr    w0, [x8]                                 
  f1e338: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e33c: mov    w8, #1                                   
  f1e340: strb   w8, [x20, #0xac2]                        
  f1e344: mov    x0, x19                                  
  f1e348: mov    w1, wzr                                  
  f1e34c: strb   wzr, [x19, #0x5c]                        
  f1e350: strb   wzr, [x19, #0x54]                        
  f1e354: bl     #0xf1d794                                ; SceneLoading$$Show
  f1e358: ldr    x20, [x19, #0x28]                        
  f1e35c: cbnz   x20, #0xf1e368                           
  f1e360: mov    x0, xzr                                  
  f1e364: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e368: mov    x0, x20                                  
  f1e36c: mov    x1, xzr                                  
  f1e370: bl     #0x1bd65bc                               ; UnityEngine.GameObject$$get_activeSelf
  f1e374: tbz    w0, #0, #0xf1e398                        
  f1e378: ldr    x19, [x19, #0x28]                        
  f1e37c: cbnz   x19, #0xf1e388                           
  f1e380: mov    x0, xzr                                  
  f1e384: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e388: mov    x0, x19                                  
  f1e38c: mov    w1, wzr                                  
  f1e390: mov    x2, xzr                                  
  f1e394: bl     #0x1bd6548                               ; UnityEngine.GameObject$$SetActive
  f1e398: mov    x0, xzr                                  
  f1e39c: bl     #0xd9dfa4                                ; ClickEffect$$Get
  f1e3a0: adrp   x8, #0x2fcb000                           
  f1e3a4: ldr    x8, [x8, #0x9e8]                         ; META UnityEngine.Object_TypeInfo
  f1e3a8: mov    x19, x0                                  
  f1e3ac: ldr    x8, [x8]                                 
  f1e3b0: ldrb   w9, [x8, #0x127]                         
  f1e3b4: tbz    w9, #1, #0xf1e3c8                        
  f1e3b8: ldr    w9, [x8, #0xd8]                          
  f1e3bc: cbnz   w9, #0xf1e3c8                            
  f1e3c0: mov    x0, x8                                   
  f1e3c4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1e3c8: mov    x0, x19                                  
  f1e3cc: mov    x1, xzr                                  
  f1e3d0: mov    x2, xzr                                  
  f1e3d4: bl     #0x1be4cc8                               ; UnityEngine.Object$$op_Inequality
  f1e3d8: tbz    w0, #0, #0xf1e404                        
  f1e3dc: mov    x0, xzr                                  
  f1e3e0: bl     #0xd9dfa4                                ; ClickEffect$$Get
  f1e3e4: mov    x19, x0                                  
  f1e3e8: cbnz   x19, #0xf1e3f0                           
  f1e3ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e3f0: ldp    x29, x30, [sp, #0x10]                    
  f1e3f4: mov    x0, x19                                  
  f1e3f8: mov    x1, xzr                                  
  f1e3fc: ldp    x20, x19, [sp], #0x20                    
  f1e400: b      #0xd9e098                                ; ClickEffect$$StopEffect
  f1e404: ldp    x29, x30, [sp, #0x10]                    
  f1e408: ldp    x20, x19, [sp], #0x20                    
  f1e40c: ret                                             

===== SceneLoading$$ScenePreLoadEvent @ 0xf1e1cc (280 bytes)
  f1e1cc: stp    x22, x21, [sp, #-0x30]!                  
  f1e1d0: stp    x20, x19, [sp, #0x10]                    
  f1e1d4: stp    x29, x30, [sp, #0x20]                    
  f1e1d8: add    x29, sp, #0x20                           
  f1e1dc: adrp   x22, #0x31cd000                          
  f1e1e0: ldrb   w8, [x22, #0xac0]                        
  f1e1e4: mov    x21, x2                                  
  f1e1e8: mov    x20, x1                                  
  f1e1ec: mov    x19, x0                                  
  f1e1f0: tbnz   w8, #0, #0xf1e20c                        
  f1e1f4: adrp   x8, #0x3000000                           
  f1e1f8: ldr    x8, [x8, #0xfa0]                         
  f1e1fc: ldr    w0, [x8]                                 
  f1e200: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e204: mov    w8, #1                                   
  f1e208: strb   w8, [x22, #0xac0]                        
  f1e20c: strb   wzr, [x19, #0x5c]                        
  f1e210: adrp   x22, #0x3078000                          
  f1e214: ldr    x22, [x22, #0xe48]                       ; STR "Gameplay"
  f1e218: ldr    x0, [x22]                                
  f1e21c: cbnz   x0, #0xf1e228                            
  f1e220: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e224: ldr    x0, [x22]                                
  f1e228: mov    x1, x21                                  
  f1e22c: mov    x2, xzr                                  
  f1e230: bl     #0x1c6e20c                               ; System.String$$Equals
  f1e234: tbz    w0, #0, #0xf1e240                        
  f1e238: mov    w8, #1                                   
  f1e23c: b      #0xf1e268                                
  f1e240: adrp   x22, #0x3000000                          
  f1e244: ldr    x22, [x22, #0x8d8]                       ; STR "Base"
  f1e248: ldr    x0, [x22]                                
  f1e24c: cbnz   x0, #0xf1e258                            
  f1e250: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e254: ldr    x0, [x22]                                
  f1e258: mov    x1, x21                                  
  f1e25c: mov    x2, xzr                                  
  f1e260: bl     #0x1c6e20c                               ; System.String$$Equals
  f1e264: and    w8, w0, #1                               
  f1e268: fmov   s0, #1.00000000                          
  f1e26c: mov    x0, xzr                                  
  f1e270: strb   w8, [x19, #0x54]                         
  f1e274: str    wzr, [x19, #0x58]                        
  f1e278: bl     #0x1c64ba4                               ; UnityEngine.Time$$set_timeScale
  f1e27c: cbz    x20, #0xf1e290                           
  f1e280: mov    w1, #1                                   
  f1e284: mov    x0, x19                                  
  f1e288: bl     #0xf1d794                                ; SceneLoading$$Show
  f1e28c: b      #0xf1e2b0                                
  f1e290: ldr    x19, [x19, #0x28]                        
  f1e294: cbnz   x19, #0xf1e2a0                           
  f1e298: mov    x0, xzr                                  
  f1e29c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e2a0: mov    w1, #1                                   
  f1e2a4: mov    x0, x19                                  
  f1e2a8: mov    x2, xzr                                  
  f1e2ac: bl     #0x1bd6548                               ; UnityEngine.GameObject$$SetActive
  f1e2b0: adrp   x8, #0x300e000                           
  f1e2b4: ldr    x8, [x8, #0x768]                         ; META WindowView_TypeInfo
  f1e2b8: ldr    x0, [x8]                                 
  f1e2bc: ldrb   w8, [x0, #0x127]                         
  f1e2c0: tbz    w8, #1, #0xf1e2d0                        
  f1e2c4: ldr    w8, [x0, #0xd8]                          
  f1e2c8: cbnz   w8, #0xf1e2d0                            
  f1e2cc: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1e2d0: ldp    x29, x30, [sp, #0x20]                    
  f1e2d4: ldp    x20, x19, [sp, #0x10]                    
  f1e2d8: mov    x0, xzr                                  
  f1e2dc: ldp    x22, x21, [sp], #0x30                    
  f1e2e0: b      #0x124dd3c                               ; WindowView$$Cleanup

===== SceneLoading$$ScenePreUnloadEvent @ 0xf1e0d0 (156 bytes)
  f1e0d0: str    x21, [sp, #-0x30]!                       
  f1e0d4: stp    x20, x19, [sp, #0x10]                    
  f1e0d8: stp    x29, x30, [sp, #0x20]                    
  f1e0dc: add    x29, sp, #0x20                           
  f1e0e0: adrp   x21, #0x31cd000                          
  f1e0e4: ldrb   w8, [x21, #0xabf]                        
  f1e0e8: mov    x20, x1                                  
  f1e0ec: mov    x19, x0                                  
  f1e0f0: tbnz   w8, #0, #0xf1e10c                        
  f1e0f4: adrp   x8, #0x2fc9000                           
  f1e0f8: ldr    x8, [x8, #0x6b0]                         
  f1e0fc: ldr    w0, [x8]                                 
  f1e100: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e104: mov    w8, #1                                   
  f1e108: strb   w8, [x21, #0xabf]                        
  f1e10c: fmov   s0, #1.00000000                          
  f1e110: mov    x0, xzr                                  
  f1e114: bl     #0x1c64ba4                               ; UnityEngine.Time$$set_timeScale
  f1e118: adrp   x21, #0x3078000                          
  f1e11c: ldr    x21, [x21, #0xe48]                       ; STR "Gameplay"
  f1e120: ldr    x0, [x21]                                
  f1e124: cbnz   x0, #0xf1e130                            
  f1e128: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e12c: ldr    x0, [x21]                                
  f1e130: mov    x1, x20                                  
  f1e134: mov    x2, xzr                                  
  f1e138: bl     #0x1c6e20c                               ; System.String$$Equals
  f1e13c: tbz    w0, #0, #0xf1e14c                        
  f1e140: mov    w1, #1                                   
  f1e144: mov    x0, x19                                  
  f1e148: bl     #0xf1d794                                ; SceneLoading$$Show
  f1e14c: bl     #0xf1e16c                                ; SceneLoading$$DelayClear
  f1e150: mov    x1, x0                                   
  f1e154: mov    x0, x19                                  
  f1e158: ldp    x29, x30, [sp, #0x20]                    
  f1e15c: ldp    x20, x19, [sp, #0x10]                    
  f1e160: mov    x2, xzr                                  
  f1e164: ldr    x21, [sp], #0x30                         
  f1e168: b      #0x1be12e8                               ; UnityEngine.MonoBehaviour$$StartCoroutine

===== SceneLoading$$SetProgress @ 0xf1db6c (320 bytes)
  f1db6c: sub    sp, sp, #0x40                            
  f1db70: str    d8, [sp, #0x10]                          
  f1db74: str    x21, [sp, #0x18]                         
  f1db78: stp    x20, x19, [sp, #0x20]                    
  f1db7c: stp    x29, x30, [sp, #0x30]                    
  f1db80: add    x29, sp, #0x30                           
  f1db84: adrp   x20, #0x31cd000                          
  f1db88: ldrb   w8, [x20, #0xabc]                        
  f1db8c: mov    v8.16b, v0.16b                           
  f1db90: mov    x19, x0                                  
  f1db94: tbnz   w8, #0, #0xf1dbb0                        
  f1db98: adrp   x8, #0x2ff9000                           
  f1db9c: ldr    x8, [x8, #0x8b0]                         
  f1dba0: ldr    w0, [x8]                                 
  f1dba4: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1dba8: mov    w8, #1                                   
  f1dbac: strb   w8, [x20, #0xabc]                        
  f1dbb0: adrp   x21, #0x2fcb000                          
  f1dbb4: ldr    x21, [x21, #0x9e8]                       ; META UnityEngine.Object_TypeInfo
  f1dbb8: ldr    x20, [x19, #0x18]                        
  f1dbbc: ldr    x0, [x21]                                
  f1dbc0: ldrb   w8, [x0, #0x127]                         
  f1dbc4: tbz    w8, #1, #0xf1dbd4                        
  f1dbc8: ldr    w8, [x0, #0xd8]                          
  f1dbcc: cbnz   w8, #0xf1dbd4                            
  f1dbd0: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1dbd4: mov    x0, x20                                  
  f1dbd8: mov    x1, xzr                                  
  f1dbdc: mov    x2, xzr                                  
  f1dbe0: bl     #0x1be4cc8                               ; UnityEngine.Object$$op_Inequality
  f1dbe4: tbz    w0, #0, #0xf1dc08                        
  f1dbe8: ldr    x20, [x19, #0x18]                        
  f1dbec: cbnz   x20, #0xf1dbf8                           
  f1dbf0: mov    x0, xzr                                  
  f1dbf4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1dbf8: mov    x0, x20                                  
  f1dbfc: mov    v0.16b, v8.16b                           
  f1dc00: mov    x1, xzr                                  
  f1dc04: bl     #0x1a61c9c                               ; UnityEngine.UI.Image$$set_fillAmount
  f1dc08: ldr    x0, [x21]                                
  f1dc0c: ldr    x20, [x19, #0x20]                        
  f1dc10: ldrb   w8, [x0, #0x127]                         
  f1dc14: tbz    w8, #1, #0xf1dc24                        
  f1dc18: ldr    w8, [x0, #0xd8]                          
  f1dc1c: cbnz   w8, #0xf1dc24                            
  f1dc20: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1dc24: mov    x0, x20                                  
  f1dc28: mov    x1, xzr                                  
  f1dc2c: bl     #0x1bd8378                               ; UnityEngine.Object$$op_Implicit
  f1dc30: tbz    w0, #0, #0xf1dc94                        
  f1dc34: adrp   x8, #0x3029000                           
  f1dc38: ldr    x19, [x19, #0x20]                        
  f1dc3c: ldr    x8, [x8, #0x998]                         ; META float_TypeInfo
  f1dc40: add    x1, sp, #0xc                             
  f1dc44: str    s8, [sp, #0xc]                           
  f1dc48: ldr    x0, [x8]                                 
  f1dc4c: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f1dc50: adrp   x8, #0x3047000                           
  f1dc54: ldr    x8, [x8, #0xac8]                         ; STR "{0:0%}"
  f1dc58: mov    x1, x0                                   
  f1dc5c: mov    x2, xzr                                  
  f1dc60: ldr    x8, [x8]                                 
  f1dc64: mov    x0, x8                                   
  f1dc68: bl     #0x1c6d4d8                               ; System.String$$Format
  f1dc6c: mov    x20, x0                                  
  f1dc70: cbnz   x19, #0xf1dc7c                           
  f1dc74: mov    x0, xzr                                  
  f1dc78: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1dc7c: ldr    x8, [x19]                                
  f1dc80: mov    x0, x19                                  
  f1dc84: mov    x1, x20                                  
  f1dc88: ldr    x9, [x8, #0x5b8]                         
  f1dc8c: ldr    x2, [x8, #0x5c0]                         
  f1dc90: blr    x9                                       
  f1dc94: ldp    x29, x30, [sp, #0x30]                    
  f1dc98: ldp    x20, x19, [sp, #0x20]                    
  f1dc9c: ldr    x21, [sp, #0x18]                         
  f1dca0: ldr    d8, [sp, #0x10]                          
  f1dca4: add    sp, sp, #0x40                            
  f1dca8: ret                                             

===== SceneLoading$$Show @ 0xf1d794 (984 bytes)
  f1d794: str    x23, [sp, #-0x40]!                       
  f1d798: stp    x22, x21, [sp, #0x10]                    
  f1d79c: stp    x20, x19, [sp, #0x20]                    
  f1d7a0: stp    x29, x30, [sp, #0x30]                    
  f1d7a4: add    x29, sp, #0x30                           
  f1d7a8: adrp   x21, #0x31cd000                          
  f1d7ac: ldrb   w8, [x21, #0xaba]                        
  f1d7b0: mov    w20, w1                                  
  f1d7b4: mov    x19, x0                                  
  f1d7b8: tbnz   w8, #0, #0xf1d7d4                        
  f1d7bc: adrp   x8, #0x3017000                           
  f1d7c0: ldr    x8, [x8, #0xaf0]                         
  f1d7c4: ldr    w0, [x8]                                 
  f1d7c8: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1d7cc: mov    w8, #1                                   
  f1d7d0: strb   w8, [x21, #0xaba]                        
  f1d7d4: ldrb   w8, [x19, #0x48]                         
  f1d7d8: cmp    w8, #0                                   
  f1d7dc: cset   w8, ne                                   
  f1d7e0: eor    w8, w8, w20                              
  f1d7e4: tbz    w8, #0, #0xf1db58                        
  f1d7e8: fmov   s0, wzr                                  
  f1d7ec: mov    x0, x19                                  
  f1d7f0: bl     #0xf1db6c                                ; SceneLoading$$SetProgress
  f1d7f4: and    w8, w20, #1                              
  f1d7f8: mov    w21, wzr                                 
  f1d7fc: strb   w8, [x19, #0x48]                         
  f1d800: b      #0xf1d864                                
  f1d804: mov    x0, x19                                  
  f1d808: mov    x1, xzr                                  
  f1d80c: bl     #0x1e75104                               ; UnityEngine.Component$$get_transform
  f1d810: mov    x22, x0                                  
  f1d814: cbnz   x22, #0xf1d81c                           
  f1d818: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d81c: mov    x0, x22                                  
  f1d820: mov    w1, w21                                  
  f1d824: mov    x2, xzr                                  
  f1d828: bl     #0x1c689b8                               ; UnityEngine.Transform$$GetChild
  f1d82c: mov    x22, x0                                  
  f1d830: cbnz   x22, #0xf1d838                           
  f1d834: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d838: mov    x0, x22                                  
  f1d83c: mov    x1, xzr                                  
  f1d840: bl     #0x1e75170                               ; UnityEngine.Component$$get_gameObject
  f1d844: mov    x22, x0                                  
  f1d848: cbnz   x22, #0xf1d850                           
  f1d84c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d850: and    w1, w20, #1                              
  f1d854: mov    x0, x22                                  
  f1d858: mov    x2, xzr                                  
  f1d85c: bl     #0x1bd6548                               ; UnityEngine.GameObject$$SetActive
  f1d860: add    w21, w21, #1                             
  f1d864: mov    x0, x19                                  
  f1d868: mov    x1, xzr                                  
  f1d86c: bl     #0x1e75104                               ; UnityEngine.Component$$get_transform
  f1d870: mov    x22, x0                                  
  f1d874: cbnz   x22, #0xf1d87c                           
  f1d878: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d87c: mov    x0, x22                                  
  f1d880: mov    x1, xzr                                  
  f1d884: bl     #0x1c6818c                               ; UnityEngine.Transform$$get_childCount
  f1d888: cmp    w21, w0                                  
  f1d88c: b.lt   #0xf1d804                                
  f1d890: adrp   x22, #0x2ff6000                          
  f1d894: ldr    x22, [x22, #0x178]                       ; META System.Random_TypeInfo
  f1d898: ldr    x0, [x22]                                
  f1d89c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1d8a0: mov    x1, xzr                                  
  f1d8a4: mov    x20, x0                                  
  f1d8a8: bl     #0x1cab2c8                               ; System.Random$$.ctor
  f1d8ac: adrp   x23, #0x2fbf000                          
  f1d8b0: ldr    x23, [x23, #0x628]                       ; META ConfLoadingTips_TypeInfo
  f1d8b4: ldr    x0, [x23]                                
  f1d8b8: ldrb   w8, [x0, #0x127]                         
  f1d8bc: tbz    w8, #1, #0xf1d8d0                        
  f1d8c0: ldr    w8, [x0, #0xd8]                          
  f1d8c4: cbnz   w8, #0xf1d8d0                            
  f1d8c8: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1d8cc: ldr    x0, [x23]                                
  f1d8d0: ldr    x8, [x0, #0xb8]                          
  f1d8d4: ldr    x21, [x8]                                
  f1d8d8: cbnz   x21, #0xf1d8e4                           
  f1d8dc: mov    x0, xzr                                  
  f1d8e0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d8e4: adrp   x8, #0x2fc0000                           
  f1d8e8: ldr    x8, [x8, #0x7a0]                         ; MMETH Method$System.Collections.Generic.List<ConfLoadingTips>.get_Count()
  f1d8ec: mov    x0, x21                                  
  f1d8f0: ldr    x1, [x8]                                 
  f1d8f4: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  f1d8f8: mov    w21, w0                                  
  f1d8fc: cbnz   x20, #0xf1d908                           
  f1d900: mov    x0, xzr                                  
  f1d904: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d908: ldr    x8, [x20]                                
  f1d90c: add    w2, w21, #1                              
  f1d910: mov    w1, #1                                   
  f1d914: mov    x0, x20                                  
  f1d918: ldp    x9, x3, [x8, #0x178]                     
  f1d91c: blr    x9                                       
  f1d920: str    w0, [x19, #0x4c]                         
  f1d924: ldr    x0, [x22]                                
  f1d928: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f1d92c: mov    x1, xzr                                  
  f1d930: mov    x20, x0                                  
  f1d934: bl     #0x1cab2c8                               ; System.Random$$.ctor
  f1d938: ldr    x21, [x19, #0x38]                        
  f1d93c: cbnz   x21, #0xf1d948                           
  f1d940: mov    x0, xzr                                  
  f1d944: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d948: adrp   x22, #0x3010000                          
  f1d94c: ldr    x22, [x22, #0xa00]                       ; MMETH Method$System.Collections.Generic.List<Texture>.get_Count()
  f1d950: mov    x0, x21                                  
  f1d954: ldr    x1, [x22]                                
  f1d958: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  f1d95c: mov    w21, w0                                  
  f1d960: cbnz   x20, #0xf1d96c                           
  f1d964: mov    x0, xzr                                  
  f1d968: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d96c: ldr    x8, [x20]                                
  f1d970: mov    x0, x20                                  
  f1d974: mov    w1, wzr                                  
  f1d978: mov    w2, w21                                  
  f1d97c: ldp    x9, x3, [x8, #0x178]                     
  f1d980: blr    x9                                       
  f1d984: ldr    x21, [x19, #0x38]                        
  f1d988: mov    w20, w0                                  
  f1d98c: str    w20, [x19, #0x50]                        
  f1d990: cbnz   x21, #0xf1d99c                           
  f1d994: mov    x0, xzr                                  
  f1d998: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d99c: ldr    x1, [x22]                                
  f1d9a0: mov    x0, x21                                  
  f1d9a4: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  f1d9a8: cmp    w20, w0                                  
  f1d9ac: b.ge   #0xf1d9fc                                
  f1d9b0: ldp    x21, x20, [x19, #0x38]                   
  f1d9b4: ldr    w22, [x19, #0x50]                        
  f1d9b8: cbnz   x21, #0xf1d9c4                           
  f1d9bc: mov    x0, xzr                                  
  f1d9c0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d9c4: adrp   x8, #0x3004000                           
  f1d9c8: ldr    x8, [x8, #0x470]                         ; MMETH Method$System.Collections.Generic.List<Texture>.get_Item()
  f1d9cc: mov    x0, x21                                  
  f1d9d0: mov    w1, w22                                  
  f1d9d4: ldr    x2, [x8]                                 
  f1d9d8: bl     #0x221941c                               ; System.Collections.Generic.List<TypeSpec>$$get_Item
  f1d9dc: mov    x21, x0                                  
  f1d9e0: cbnz   x20, #0xf1d9ec                           
  f1d9e4: mov    x0, xzr                                  
  f1d9e8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1d9ec: mov    x0, x20                                  
  f1d9f0: mov    x1, x21                                  
  f1d9f4: mov    x2, xzr                                  
  f1d9f8: bl     #0x1c0d530                               ; UnityEngine.UI.RawImage$$set_texture
  f1d9fc: ldr    x0, [x23]                                
  f1da00: ldr    w20, [x19, #0x4c]                        
  f1da04: ldrb   w8, [x0, #0x127]                         
  f1da08: tbz    w8, #1, #0xf1da18                        
  f1da0c: ldr    w8, [x0, #0xd8]                          
  f1da10: cbnz   w8, #0xf1da18                            
  f1da14: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1da18: mov    w0, w20                                  
  f1da1c: mov    x1, xzr                                  
  f1da20: bl     #0x1656128                               ; ConfLoadingTips$$Get
  f1da24: cbz    x0, #0xf1da88                            
  f1da28: ldr    x19, [x19, #0x30]                        
  f1da2c: mov    x1, xzr                                  
  f1da30: bl     #0x1655b44                               ; ConfLoadingTips$$get_tips
  f1da34: adrp   x8, #0x3035000                           
  f1da38: ldr    x8, [x8, #0xa0]                          ; STR "<color=yellow>TIPS.</color>"
  f1da3c: mov    x1, x0                                   
  f1da40: mov    x2, xzr                                  
  f1da44: ldr    x8, [x8]                                 
  f1da48: mov    x0, x8                                   
  f1da4c: bl     #0x1c75758                               ; System.String$$Concat
  f1da50: mov    x20, x0                                  
  f1da54: cbnz   x19, #0xf1da60                           
  f1da58: mov    x0, xzr                                  
  f1da5c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1da60: ldr    x8, [x19]                                
  f1da64: mov    x0, x19                                  
  f1da68: mov    x1, x20                                  
  f1da6c: ldp    x29, x30, [sp, #0x30]                    
  f1da70: ldr    x3, [x8, #0x5b8]                         
  f1da74: ldr    x2, [x8, #0x5c0]                         
  f1da78: ldp    x20, x19, [sp, #0x20]                    
  f1da7c: ldp    x22, x21, [sp, #0x10]                    
  f1da80: ldr    x23, [sp], #0x40                         
  f1da84: br     x3                                       
  f1da88: adrp   x20, #0x3042000                          
  f1da8c: ldr    x20, [x20, #0xb88]                       ; META GameLog_TypeInfo
  f1da90: ldr    x0, [x20]                                
  f1da94: ldrb   w8, [x0, #0x127]                         
  f1da98: tbz    w8, #1, #0xf1daac                        
  f1da9c: ldr    w8, [x0, #0xd8]                          
  f1daa0: cbnz   w8, #0xf1daac                            
  f1daa4: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1daa8: ldr    x0, [x20]                                
  f1daac: adrp   x10, #0x300b000                          
  f1dab0: ldr    x8, [x0, #0xb8]                          
  f1dab4: ldr    w9, [x19, #0x4c]                         
  f1dab8: ldr    x10, [x10, #0x800]                       ; META int_TypeInfo
  f1dabc: add    x1, sp, #0xc                             
  f1dac0: ldr    x20, [x8, #8]                            
  f1dac4: str    w9, [sp, #0xc]                           
  f1dac8: ldr    x0, [x10]                                
  f1dacc: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f1dad0: adrp   x8, #0x306b000                           
  f1dad4: ldr    x8, [x8, #0x830]                         ; STR "没有这个id  "
  f1dad8: mov    x1, x0                                   
  f1dadc: mov    x2, xzr                                  
  f1dae0: ldr    x8, [x8]                                 
  f1dae4: mov    x0, x8                                   
  f1dae8: bl     #0x1c75688                               ; System.String$$Concat
  f1daec: adrp   x8, #0x2fc7000                           
  f1daf0: ldr    x8, [x8, #0x470]                         ; MMETH Method$System.Array.Empty<object>()
  f1daf4: mov    x21, x0                                  
  f1daf8: ldr    x8, [x8]                                 
  f1dafc: mov    x0, x8                                   
  f1db00: bl     #0x1ee6064                               ; System.Array$$Empty<string>
  f1db04: mov    x22, x0                                  
  f1db08: cbnz   x20, #0xf1db14                           
  f1db0c: mov    x0, xzr                                  
  f1db10: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1db14: mov    x0, x20                                  
  f1db18: mov    x1, x21                                  
  f1db1c: mov    x2, x22                                  
  f1db20: mov    x3, xzr                                  
  f1db24: bl     #0x1423464                               ; UniCore.Logger$$Error
  f1db28: ldr    x19, [x19, #0x30]                        
  f1db2c: cbnz   x19, #0xf1db38                           
  f1db30: mov    x0, xzr                                  
  f1db34: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1db38: adrp   x9, #0x2ff4000                           
  f1db3c: ldr    x8, [x19]                                
  f1db40: ldr    x9, [x9, #0x840]                         ; STR ""
  f1db44: mov    x0, x19                                  
  f1db48: ldr    x2, [x8, #0x5c0]                         
  f1db4c: ldr    x1, [x9]                                 
  f1db50: ldr    x9, [x8, #0x5b8]                         
  f1db54: blr    x9                                       
  f1db58: ldp    x29, x30, [sp, #0x30]                    
  f1db5c: ldp    x20, x19, [sp, #0x20]                    
  f1db60: ldp    x22, x21, [sp, #0x10]                    
  f1db64: ldr    x23, [sp], #0x40                         
  f1db68: ret                                             

===== SceneLoading$$Update @ 0xf1dcac (484 bytes)
  f1dcac: str    d8, [sp, #-0x50]!                        
  f1dcb0: stp    x24, x23, [sp, #0x10]                    
  f1dcb4: stp    x22, x21, [sp, #0x20]                    
  f1dcb8: stp    x20, x19, [sp, #0x30]                    
  f1dcbc: stp    x29, x30, [sp, #0x40]                    
  f1dcc0: add    x29, sp, #0x40                           
  f1dcc4: adrp   x20, #0x31cd000                          
  f1dcc8: ldrb   w8, [x20, #0xabb]                        
  f1dccc: mov    x19, x0                                  
  f1dcd0: tbnz   w8, #0, #0xf1dcec                        
  f1dcd4: adrp   x8, #0x2fbe000                           
  f1dcd8: ldr    x8, [x8, #0x5a0]                         
  f1dcdc: ldr    w0, [x8]                                 
  f1dce0: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1dce4: mov    w8, #1                                   
  f1dce8: strb   w8, [x20, #0xabb]                        
  f1dcec: ldrb   w8, [x19, #0x48]                         
  f1dcf0: cbz    w8, #0xf1de78                            
  f1dcf4: adrp   x8, #0x2fec000                           
  f1dcf8: ldr    x8, [x8, #0xfe0]                         ; META UniCore.AssetLoader_TypeInfo
  f1dcfc: ldr    x0, [x8]                                 
  f1dd00: ldrb   w8, [x0, #0x127]                         
  f1dd04: tbz    w8, #1, #0xf1dd14                        
  f1dd08: ldr    w8, [x0, #0xd8]                          
  f1dd0c: cbnz   w8, #0xf1dd14                            
  f1dd10: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1dd14: mov    x0, xzr                                  
  f1dd18: bl     #0x134871c                               ; UniCore.AssetLoader$$CurrentProgress
  f1dd1c: ldrb   w8, [x19, #0x54]                         
  f1dd20: cbz    w8, #0xf1dd5c                            
  f1dd24: ldr    w8, [x19, #0x58]                         
  f1dd28: cbz    w8, #0xf1dd50                            
  f1dd2c: adrp   x9, #0x253c000                           
  f1dd30: adrp   x10, #0x24ea000                          
  f1dd34: ldr    s1, [x9, #0xd1c]                         
  f1dd38: ldr    s2, [x10, #0xa04]                        
  f1dd3c: scvtf  s3, w8                                   
  f1dd40: fmul   s1, s3, s1                               
  f1dd44: fmul   s0, s0, s2                               
  f1dd48: fadd   s0, s0, s1                               
  f1dd4c: b      #0xf1dd5c                                
  f1dd50: adrp   x8, #0x253c000                           
  f1dd54: ldr    s1, [x8, #0xd1c]                         
  f1dd58: fmul   s0, s0, s1                               
  f1dd5c: mov    x0, x19                                  
  f1dd60: bl     #0xf1db6c                                ; SceneLoading$$SetProgress
  f1dd64: ldrb   w8, [x19, #0x5c]                         
  f1dd68: cbz    w8, #0xf1de78                            
  f1dd6c: ldr    s8, [x19, #0x60]                         
  f1dd70: mov    x0, xzr                                  
  f1dd74: bl     #0x1c6468c                               ; UnityEngine.Time$$get_deltaTime
  f1dd78: fadd   s0, s8, s0                               
  f1dd7c: fmov   s1, #0.50000000                          
  f1dd80: fcmp   s0, s1                                   
  f1dd84: str    s0, [x19, #0x60]                         
  f1dd88: b.le   #0xf1de78                                
  f1dd8c: ldr    x20, [x19, #0x78]                        
  f1dd90: str    wzr, [x19, #0x60]                        
  f1dd94: cbnz   x20, #0xf1dda0                           
  f1dd98: mov    x0, xzr                                  
  f1dd9c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1dda0: mov    x0, x20                                  
  f1dda4: mov    w1, wzr                                  
  f1dda8: mov    x2, xzr                                  
  f1ddac: bl     #0x1df3370                               ; System.Text.StringBuilder$$set_Length
  f1ddb0: ldr    x20, [x19, #0x78]                        
  f1ddb4: ldr    x21, [x19, #0x68]                        
  f1ddb8: cbnz   x20, #0xf1ddc4                           
  f1ddbc: mov    x0, xzr                                  
  f1ddc0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1ddc4: mov    x0, x20                                  
  f1ddc8: mov    x1, x21                                  
  f1ddcc: mov    x2, xzr                                  
  f1ddd0: bl     #0x1df0b70                               ; System.Text.StringBuilder$$Append
  f1ddd4: mov    w22, wzr                                 
  f1ddd8: mov    w23, #0x20                               
  f1dddc: mov    w24, #0x2e                               
  f1dde0: ldr    w8, [x19, #0x70]                         
  f1dde4: ldr    x20, [x19, #0x78]                        
  f1dde8: cmp    w22, w8                                  
  f1ddec: csel   w21, w24, w23, lt                        
  f1ddf0: cbnz   x20, #0xf1ddfc                           
  f1ddf4: mov    x0, xzr                                  
  f1ddf8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1ddfc: mov    x0, x20                                  
  f1de00: mov    w1, w21                                  
  f1de04: mov    x2, xzr                                  
  f1de08: bl     #0x1df20c4                               ; System.Text.StringBuilder$$Append
  f1de0c: add    w22, w22, #1                             
  f1de10: cmp    w22, #3                                  
  f1de14: b.ne   #0xf1dde0                                
  f1de18: ldr    x21, [x19, #0x78]                        
  f1de1c: ldr    x20, [x19, #0x30]                        
  f1de20: cbnz   x21, #0xf1de2c                           
  f1de24: mov    x0, xzr                                  
  f1de28: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1de2c: ldr    x8, [x21]                                
  f1de30: mov    x0, x21                                  
  f1de34: ldp    x9, x1, [x8, #0x158]                     
  f1de38: blr    x9                                       
  f1de3c: mov    x21, x0                                  
  f1de40: cbnz   x20, #0xf1de4c                           
  f1de44: mov    x0, xzr                                  
  f1de48: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1de4c: ldr    x8, [x20]                                
  f1de50: mov    x0, x20                                  
  f1de54: mov    x1, x21                                  
  f1de58: ldr    x9, [x8, #0x5b8]                         
  f1de5c: ldr    x2, [x8, #0x5c0]                         
  f1de60: blr    x9                                       
  f1de64: ldr    w8, [x19, #0x70]                         
  f1de68: add    w9, w8, #1                               
  f1de6c: cmp    w9, #3                                   
  f1de70: csinc  w8, wzr, w8, gt                          
  f1de74: str    w8, [x19, #0x70]                         
  f1de78: ldp    x29, x30, [sp, #0x40]                    
  f1de7c: ldp    x20, x19, [sp, #0x30]                    
  f1de80: ldp    x22, x21, [sp, #0x20]                    
  f1de84: ldp    x24, x23, [sp, #0x10]                    
  f1de88: ldr    d8, [sp], #0x50                          
  f1de8c: ret                                             

===== SceneLoading$$WaitForRival @ 0xf1e410 (180 bytes)
  f1e410: str    x21, [sp, #-0x30]!                       
  f1e414: stp    x20, x19, [sp, #0x10]                    
  f1e418: stp    x29, x30, [sp, #0x20]                    
  f1e41c: add    x29, sp, #0x20                           
  f1e420: adrp   x20, #0x31cd000                          
  f1e424: ldrb   w8, [x20, #0xac3]                        
  f1e428: mov    x19, x0                                  
  f1e42c: tbnz   w8, #0, #0xf1e448                        
  f1e430: adrp   x8, #0x2ff5000                           
  f1e434: ldr    x8, [x8, #0x4c8]                         
  f1e438: ldr    w0, [x8]                                 
  f1e43c: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f1e440: mov    w8, #1                                   
  f1e444: strb   w8, [x20, #0xac3]                        
  f1e448: adrp   x8, #0x303e000                           
  f1e44c: ldr    x8, [x8, #0x120]                         ; META UniCore.GameStrings_TypeInfo
  f1e450: ldr    x0, [x8]                                 
  f1e454: ldrb   w8, [x0, #0x127]                         
  f1e458: tbz    w8, #1, #0xf1e468                        
  f1e45c: ldr    w8, [x0, #0xd8]                          
  f1e460: cbnz   w8, #0xf1e468                            
  f1e464: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f1e468: adrp   x8, #0x304a000                           
  f1e46c: ldr    x8, [x8, #0xa50]                         ; STR "GLOBAL_ARENA_WAIT_RIVAL_READY"
  f1e470: mov    x1, xzr                                  
  f1e474: ldr    x0, [x8]                                 
  f1e478: bl     #0x13578cc                               ; UniCore.GameStrings$$Get
  f1e47c: ldr    x21, [x19, #0x30]                        
  f1e480: mov    x20, x0                                  
  f1e484: str    x20, [x19, #0x68]                        
  f1e488: cbnz   x21, #0xf1e494                           
  f1e48c: mov    x0, xzr                                  
  f1e490: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f1e494: ldr    x8, [x21]                                
  f1e498: mov    x0, x21                                  
  f1e49c: mov    x1, x20                                  
  f1e4a0: ldr    x9, [x8, #0x5b8]                         
  f1e4a4: ldr    x2, [x8, #0x5c0]                         
  f1e4a8: blr    x9                                       
  f1e4ac: mov    w8, #1                                   
  f1e4b0: strb   w8, [x19, #0x5c]                         
  f1e4b4: ldp    x29, x30, [sp, #0x20]                    
  f1e4b8: ldp    x20, x19, [sp, #0x10]                    
  f1e4bc: ldr    x21, [sp], #0x30                         
  f1e4c0: ret                                             
