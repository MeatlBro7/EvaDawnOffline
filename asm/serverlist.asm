
===== LoginView$$OnShow @ 0xd037cc (300 bytes)
  d037cc: stp    x22, x21, [sp, #-0x30]!                  
  d037d0: stp    x20, x19, [sp, #0x10]                    
  d037d4: stp    x29, x30, [sp, #0x20]                    
  d037d8: add    x29, sp, #0x20                           
  d037dc: adrp   x21, #0x31cc000                          
  d037e0: ldrb   w8, [x21, #0x824]                        
  d037e4: mov    x19, x1                                  
  d037e8: mov    x20, x0                                  
  d037ec: tbnz   w8, #0, #0xd03808                        
  d037f0: adrp   x8, #0x3028000                           
  d037f4: ldr    x8, [x8, #0x558]                         
  d037f8: ldr    w0, [x8]                                 
  d037fc: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  d03800: mov    w8, #1                                   
  d03804: strb   w8, [x21, #0x824]                        
  d03808: adrp   x8, #0x302f000                           
  d0380c: ldr    x8, [x8, #0xad8]                         ; META LoginView_TypeInfo
  d03810: ldr    x8, [x8]                                 
  d03814: ldr    x8, [x8, #0xb8]                          
  d03818: ldr    x0, [x8, #8]                             
  d0381c: cbz    x0, #0xd0383c                            
  d03820: mov    x1, x20                                  
  d03824: mov    x2, x19                                  
  d03828: ldp    x29, x30, [sp, #0x20]                    
  d0382c: ldp    x20, x19, [sp, #0x10]                    
  d03830: mov    x3, xzr                                  
  d03834: ldp    x22, x21, [sp], #0x30                    
  d03838: b      #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  d0383c: adrp   x8, #0x2ff9000                           
  d03840: ldr    x8, [x8, #0x18]                          ; STR "ResVersion"
  d03844: mov    w1, wzr                                  
  d03848: mov    x2, xzr                                  
  d0384c: ldr    x0, [x8]                                 
  d03850: bl     #0x1be6e94                               ; UnityEngine.PlayerPrefs$$GetInt
  d03854: adrp   x22, #0x302c000                          
  d03858: ldr    x22, [x22, #0x570]                       ; META CurrentBundleVersion_TypeInfo
  d0385c: mov    w21, w0                                  
  d03860: ldr    x8, [x22]                                
  d03864: ldrb   w9, [x8, #0x127]                         
  d03868: tbz    w9, #1, #0xd03880                        
  d0386c: ldr    w9, [x8, #0xd8]                          
  d03870: cbnz   w9, #0xd03880                            
  d03874: mov    x0, x8                                   
  d03878: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  d0387c: ldr    x8, [x22]                                
  d03880: ldr    x8, [x8, #0xb8]                          
  d03884: mov    x0, x20                                  
  d03888: mov    w2, w21                                  
  d0388c: ldr    x1, [x8, #8]                             
  d03890: bl     #0xd038f8                                ; LoginView$$SetVersion
  d03894: cbnz   x19, #0xd038c8                           
  d03898: mov    x0, xzr                                  
  d0389c: bl     #0xeb3768                                ; SinaSDK$$Get
  d038a0: mov    x19, x0                                  
  d038a4: cbnz   x19, #0xd038ac                           
  d038a8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d038ac: ldrb   w20, [x19, #0x73]                        
  d038b0: mov    x0, xzr                                  
  d038b4: bl     #0xeb3768                                ; SinaSDK$$Get
  d038b8: mov    x19, x0                                  
  d038bc: cbz    x19, #0xd038d8                           
  d038c0: cbz    w20, #0xd038e0                           
  d038c4: strb   wzr, [x19, #0x73]                        
  d038c8: ldp    x29, x30, [sp, #0x20]                    
  d038cc: ldp    x20, x19, [sp, #0x10]                    
  d038d0: ldp    x22, x21, [sp], #0x30                    
  d038d4: ret                                             
  d038d8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  d038dc: cbnz   w20, #0xd038c4                           
  d038e0: mov    x0, x19                                  
  d038e4: ldp    x29, x30, [sp, #0x20]                    
  d038e8: ldp    x20, x19, [sp, #0x10]                    
  d038ec: mov    x1, xzr                                  
  d038f0: ldp    x22, x21, [sp], #0x30                    
  d038f4: b      #0xebb518                                ; SinaSDK$$SinaLogin

===== ServerListMediator$$InitServerList @ 0xf221e8 (2316 bytes)
  f221e8: sub    sp, sp, #0x70                            
  f221ec: stp    x28, x27, [sp, #0x10]                    
  f221f0: stp    x26, x25, [sp, #0x20]                    
  f221f4: stp    x24, x23, [sp, #0x30]                    
  f221f8: stp    x22, x21, [sp, #0x40]                    
  f221fc: stp    x20, x19, [sp, #0x50]                    
  f22200: stp    x29, x30, [sp, #0x60]                    
  f22204: add    x29, sp, #0x60                           
  f22208: adrp   x20, #0x31cd000                          
  f2220c: ldrb   w8, [x20, #0xaed]                        
  f22210: mov    x21, x1                                  
  f22214: mov    x19, x0                                  
  f22218: tbnz   w8, #0, #0xf22234                        
  f2221c: adrp   x8, #0x3041000                           
  f22220: ldr    x8, [x8, #0xcc8]                         
  f22224: ldr    w0, [x8]                                 
  f22228: bl     #0xbed010                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0xe1d8
  f2222c: mov    w8, #1                                   
  f22230: strb   w8, [x20, #0xaed]                        
  f22234: adrp   x8, #0x2feb000                           
  f22238: ldr    x8, [x8, #0xe10]                         ; META ServerListMediator_TypeInfo
  f2223c: str    xzr, [sp, #8]                            
  f22240: ldr    x8, [x8]                                 
  f22244: ldr    x8, [x8, #0xb8]                          
  f22248: ldr    x0, [x8, #0x38]                          
  f2224c: cbz    x0, #0xf22264                            
  f22250: mov    x1, x19                                  
  f22254: mov    x2, x21                                  
  f22258: mov    x3, xzr                                  
  f2225c: bl     #0xc9ef80                                ; XLua.DelegateBridge$$__Gen_Delegate_Imp53
  f22260: b      #0xf22ad0                                
  f22264: ldrb   w8, [x19, #0x50]                         
  f22268: add    w8, w8, #3                               
  f2226c: mvn    w8, w8                                   
  f22270: and    w8, w8, #3                               
  f22274: cbnz   w8, #0xf22ad0                            
  f22278: mov    w8, #1                                   
  f2227c: strb   w8, [x19, #0x50]                         
  f22280: cbnz   x21, #0xf22298                           
  f22284: adrp   x8, #0x2fdb000                           
  f22288: ldr    x8, [x8, #0x2c0]                         ; META string_TypeInfo
  f2228c: ldr    x8, [x8]                                 
  f22290: ldr    x8, [x8, #0xb8]                          
  f22294: ldr    x21, [x8]                                
  f22298: ldr    x20, [x19, #0x30]                        
  f2229c: cbnz   x20, #0xf222a8                           
  f222a0: mov    x0, xzr                                  
  f222a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f222a8: adrp   x8, #0x2fd4000                           
  f222ac: ldr    x8, [x8, #0xca8]                         ; MMETH Method$System.Collections.Generic.List<ServerInfo>.Clear()
  f222b0: mov    x0, x20                                  
  f222b4: ldr    x1, [x8]                                 
  f222b8: bl     #0x2219cc4                               ; System.Collections.Generic.List<SCNotifyOperate>$$Clear
  f222bc: ldr    x20, [x19, #0x38]                        
  f222c0: cbnz   x20, #0xf222cc                           
  f222c4: mov    x0, xzr                                  
  f222c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f222cc: adrp   x8, #0x304a000                           
  f222d0: ldr    x8, [x8, #0x6b8]                         ; MMETH Method$System.Collections.Generic.Dictionary<string, List<ServerInfo>>.Clear()
  f222d4: mov    x0, x20                                  
  f222d8: ldr    x1, [x8]                                 
  f222dc: bl     #0x215adc4                               ; System.Collections.Generic.Dictionary<Shader, Material>$$Clear
  f222e0: ldr    x20, [x19, #0x40]                        
  f222e4: cbnz   x20, #0xf222f0                           
  f222e8: mov    x0, xzr                                  
  f222ec: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f222f0: adrp   x8, #0x3058000                           
  f222f4: ldr    x8, [x8, #0x9c0]                         ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.Clear()
  f222f8: mov    x0, x20                                  
  f222fc: ldr    x1, [x8]                                 
  f22300: bl     #0x2219cc4                               ; System.Collections.Generic.List<SCNotifyOperate>$$Clear
  f22304: adrp   x8, #0x2fc9000                           
  f22308: ldr    x8, [x8, #0xb10]                         ; META System.IO.StringReader_TypeInfo
  f2230c: ldr    x0, [x8]                                 
  f22310: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f22314: mov    x1, x21                                  
  f22318: mov    x2, xzr                                  
  f2231c: mov    x20, x0                                  
  f22320: bl     #0x17408d4                               ; System.IO.StringReader$$.ctor
  f22324: adrp   x25, #0x3018000                          
  f22328: adrp   x26, #0x300e000                          
  f2232c: adrp   x27, #0x2ffb000                          
  f22330: adrp   x24, #0x2fdc000                          
  f22334: ldr    x25, [x25, #0x378]                       ; STR "//"
  f22338: ldr    x26, [x26, #0xe0]                        ; STR "#"
  f2233c: ldr    x27, [x27, #0xb58]                       ; STR "	 "
  f22340: ldr    x24, [x24, #0x710]                       ; META ServerInfo_TypeInfo
  f22344: mov    w28, #0x3e7                              
  f22348: cbnz   x20, #0xf22354                           
  f2234c: mov    x0, xzr                                  
  f22350: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22354: ldr    x8, [x20]                                
  f22358: ldp    x9, x1, [x8, #0x1f8]                     
  f2235c: mov    x0, x20                                  
  f22360: blr    x9                                       
  f22364: mov    x21, x0                                  
  f22368: cbz    x21, #0xf226e8                           
  f2236c: mov    x0, x21                                  
  f22370: mov    x1, xzr                                  
  f22374: bl     #0x1c70140                               ; System.String$$IsNullOrEmpty
  f22378: tbnz   w0, #0, #0xf22348                        
  f2237c: mov    x0, x21                                  
  f22380: mov    x1, xzr                                  
  f22384: bl     #0x1c6e204                               ; System.String$$Trim
  f22388: mov    x22, x0                                  
  f2238c: cbnz   x22, #0xf22398                           
  f22390: mov    x0, xzr                                  
  f22394: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22398: ldr    x1, [x25]                                
  f2239c: mov    x0, x22                                  
  f223a0: mov    x2, xzr                                  
  f223a4: bl     #0x1c7436c                               ; System.String$$StartsWith
  f223a8: tbnz   w0, #0, #0xf22348                        
  f223ac: cbnz   x22, #0xf223b8                           
  f223b0: mov    x0, xzr                                  
  f223b4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f223b8: ldr    x1, [x26]                                
  f223bc: mov    x0, x22                                  
  f223c0: mov    x2, xzr                                  
  f223c4: bl     #0x1c7436c                               ; System.String$$StartsWith
  f223c8: tbnz   w0, #0, #0xf22348                        
  f223cc: ldr    x0, [x27]                                
  f223d0: cbnz   x0, #0xf223dc                            
  f223d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f223d8: ldr    x0, [x27]                                
  f223dc: mov    x1, xzr                                  
  f223e0: bl     #0x1c700a8                               ; System.String$$ToCharArray
  f223e4: mov    x23, x0                                  
  f223e8: cbnz   x22, #0xf223f4                           
  f223ec: mov    x0, xzr                                  
  f223f0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f223f4: mov    x0, x22                                  
  f223f8: mov    x1, x23                                  
  f223fc: mov    x2, xzr                                  
  f22400: bl     #0x1c70308                               ; System.String$$Split
  f22404: mov    x22, x0                                  
  f22408: cbnz   x22, #0xf22414                           
  f2240c: mov    x0, xzr                                  
  f22410: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22414: ldr    w8, [x22, #0x18]                         
  f22418: cmp    w8, #6                                   
  f2241c: b.ne   #0xf22620                                
  f22420: ldr    x0, [x24]                                
  f22424: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f22428: mov    x21, x0                                  
  f2242c: str    w28, [x21, #0x38]                        
  f22430: mov    x0, x21                                  
  f22434: mov    x1, xzr                                  
  f22438: bl     #0x1ca54c0                               ; System.Object$$.ctor
  f2243c: ldr    w8, [x22, #0x18]                         
  f22440: cbnz   w8, #0xf22454                            
  f22444: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f22448: mov    x1, xzr                                  
  f2244c: mov    x2, xzr                                  
  f22450: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f22454: ldr    x0, [x22, #0x20]                         
  f22458: mov    x1, xzr                                  
  f2245c: bl     #0x1747e1c                               ; System.Int32$$Parse
  f22460: str    w0, [x21, #0x10]                         
  f22464: ldr    w8, [x22, #0x18]                         
  f22468: cmp    w8, #1                                   
  f2246c: b.hi   #0xf22480                                
  f22470: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f22474: mov    x1, xzr                                  
  f22478: mov    x2, xzr                                  
  f2247c: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f22480: ldr    x8, [x22, #0x28]                         
  f22484: str    x8, [x21, #0x18]                         
  f22488: ldr    w8, [x22, #0x18]                         
  f2248c: cmp    w8, #2                                   
  f22490: b.hi   #0xf224a4                                
  f22494: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f22498: mov    x1, xzr                                  
  f2249c: mov    x2, xzr                                  
  f224a0: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f224a4: ldr    x8, [x22, #0x30]                         
  f224a8: str    x8, [x21, #0x20]                         
  f224ac: ldr    w8, [x22, #0x18]                         
  f224b0: cmp    w8, #3                                   
  f224b4: b.hi   #0xf224c8                                
  f224b8: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f224bc: mov    x1, xzr                                  
  f224c0: mov    x2, xzr                                  
  f224c4: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f224c8: ldr    x8, [x22, #0x38]                         
  f224cc: str    x8, [x21, #0x28]                         
  f224d0: ldr    w8, [x22, #0x18]                         
  f224d4: cmp    w8, #4                                   
  f224d8: b.hi   #0xf224ec                                
  f224dc: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f224e0: mov    x1, xzr                                  
  f224e4: mov    x2, xzr                                  
  f224e8: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f224ec: ldr    x0, [x22, #0x40]                         
  f224f0: mov    x1, xzr                                  
  f224f4: bl     #0x1747e1c                               ; System.Int32$$Parse
  f224f8: str    w0, [x21, #0x30]                         
  f224fc: ldr    w8, [x22, #0x18]                         
  f22500: cmp    w8, #5                                   
  f22504: b.hi   #0xf22518                                
  f22508: bl     #0xc16b9c                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x37d64
  f2250c: mov    x1, xzr                                  
  f22510: mov    x2, xzr                                  
  f22514: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f22518: ldr    x0, [x22, #0x48]                         
  f2251c: mov    x1, xzr                                  
  f22520: bl     #0x134b8b8                               ; UniCore.GeneralUtils$$ForceInt
  f22524: str    w0, [x21, #0x34]                         
  f22528: ldr    x22, [x19, #0x30]                        
  f2252c: cbnz   x22, #0xf22538                           
  f22530: mov    x0, xzr                                  
  f22534: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22538: adrp   x8, #0x3027000                           
  f2253c: ldr    x8, [x8, #0x1b0]                         ; MMETH Method$System.Collections.Generic.List<ServerInfo>.Add()
  f22540: ldr    x2, [x8]                                 
  f22544: mov    x0, x22                                  
  f22548: mov    x1, x21                                  
  f2254c: bl     #0x2219780                               ; System.Collections.Generic.List<IBinding>$$Add
  f22550: ldr    x22, [x19, #0x38]                        
  f22554: ldr    x23, [x21, #0x20]                        
  f22558: cbnz   x22, #0xf22564                           
  f2255c: mov    x0, xzr                                  
  f22560: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22564: adrp   x8, #0x3073000                           
  f22568: ldr    x8, [x8, #0xc58]                         ; MMETH Method$System.Collections.Generic.Dictionary<string, List<ServerInfo>>.TryGetValue()
  f2256c: ldr    x3, [x8]                                 
  f22570: add    x2, sp, #8                               
  f22574: mov    x0, x22                                  
  f22578: mov    x1, x23                                  
  f2257c: bl     #0x215cf78                               ; System.Collections.Generic.Dictionary<Shader, Material>$$TryGetValue
  f22580: tbnz   w0, #0, #0xf226bc                        
  f22584: adrp   x8, #0x2fd5000                           
  f22588: ldr    x23, [x19, #0x38]                        
  f2258c: ldr    x22, [x21, #0x20]                        
  f22590: ldr    x8, [x8, #0x760]                         ; META System.Collections.Generic.List<ServerInfo>_TypeInfo
  f22594: mov    x28, x24                                 
  f22598: ldr    x0, [x8]                                 
  f2259c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f225a0: mov    x24, x0                                  
  f225a4: adrp   x8, #0x2fc3000                           
  f225a8: ldr    x8, [x8, #0xc48]                         ; MMETH Method$System.Collections.Generic.List<ServerInfo>..ctor()
  f225ac: ldr    x1, [x8]                                 
  f225b0: mov    x0, x24                                  
  f225b4: bl     #0x2218a6c                               ; System.Collections.Generic.List<IBinding>$$.ctor
  f225b8: str    x24, [sp, #8]                            
  f225bc: cbnz   x23, #0xf225c8                           
  f225c0: mov    x0, xzr                                  
  f225c4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f225c8: adrp   x8, #0x3043000                           
  f225cc: ldr    x8, [x8, #0x5a0]                         ; MMETH Method$System.Collections.Generic.Dictionary<string, List<ServerInfo>>.Add()
  f225d0: ldr    x3, [x8]                                 
  f225d4: mov    x0, x23                                  
  f225d8: mov    x1, x22                                  
  f225dc: mov    x2, x24                                  
  f225e0: bl     #0x215aa6c                               ; System.Collections.Generic.Dictionary<ICommand, ICommandBinding>$$Add
  f225e4: adrp   x8, #0x3003000                           
  f225e8: ldr    x8, [x8, #0x690]                         ; META ZoneInfo_TypeInfo
  f225ec: ldr    x0, [x8]                                 
  f225f0: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f225f4: mov    x22, x0                                  
  f225f8: mov    x0, x22                                  
  f225fc: mov    x1, xzr                                  
  f22600: bl     #0x13ebff8                               ; ZoneInfo$$.ctor
  f22604: ldr    x23, [x21, #0x20]                        
  f22608: cbz    x22, #0xf2266c                           
  f2260c: str    x23, [x22, #0x10]                        
  f22610: ldr    w23, [x21, #0x10]                        
  f22614: mov    x24, x28                                 
  f22618: mov    w28, #0x3e7                              
  f2261c: b      #0xf22690                                
  f22620: adrp   x8, #0x3001000                           
  f22624: ldr    x8, [x8, #0x530]                         ; STR "invaild server info! ({0})"
  f22628: ldr    x0, [x8]                                 
  f2262c: mov    x1, x21                                  
  f22630: mov    x2, xzr                                  
  f22634: bl     #0x1c6d4d8                               ; System.String$$Format
  f22638: mov    x21, x0                                  
  f2263c: adrp   x8, #0x2fe9000                           
  f22640: ldr    x8, [x8, #0xb80]                         ; META UnityEngine.Debug_TypeInfo
  f22644: ldr    x0, [x8]                                 
  f22648: ldrb   w8, [x0, #0x127]                         
  f2264c: tbz    w8, #1, #0xf2265c                        
  f22650: ldr    w8, [x0, #0xd8]                          
  f22654: cbnz   w8, #0xf2265c                            
  f22658: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f2265c: mov    x0, x21                                  
  f22660: mov    x1, xzr                                  
  f22664: bl     #0x1e7746c                               ; UnityEngine.Debug$$LogError
  f22668: b      #0xf22348                                
  f2266c: mov    x0, xzr                                  
  f22670: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22674: mov    x24, x28                                 
  f22678: mov    w8, #0x10                                
  f2267c: str    x23, [x8]                                
  f22680: ldr    w23, [x21, #0x10]                        
  f22684: mov    x0, xzr                                  
  f22688: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f2268c: mov    w28, #0x3e7                              
  f22690: str    w23, [x22, #0x1c]                        
  f22694: ldr    x23, [x19, #0x40]                        
  f22698: cbnz   x23, #0xf226a4                           
  f2269c: mov    x0, xzr                                  
  f226a0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f226a4: adrp   x8, #0x306c000                           
  f226a8: ldr    x8, [x8, #0xa0]                          ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.Add()
  f226ac: ldr    x2, [x8]                                 
  f226b0: mov    x0, x23                                  
  f226b4: mov    x1, x22                                  
  f226b8: bl     #0x2219780                               ; System.Collections.Generic.List<IBinding>$$Add
  f226bc: ldr    x22, [sp, #8]                            
  f226c0: cbnz   x22, #0xf226cc                           
  f226c4: mov    x0, xzr                                  
  f226c8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f226cc: adrp   x8, #0x3027000                           
  f226d0: ldr    x8, [x8, #0x1b0]                         ; MMETH Method$System.Collections.Generic.List<ServerInfo>.Add()
  f226d4: ldr    x2, [x8]                                 
  f226d8: mov    x0, x22                                  
  f226dc: mov    x1, x21                                  
  f226e0: bl     #0x2219780                               ; System.Collections.Generic.List<IBinding>$$Add
  f226e4: b      #0xf22348                                
  f226e8: mov    w22, wzr                                 
  f226ec: b      #0xf22784                                
  f226f0: b      #0xf22768                                
  f226f4: b      #0xf22768                                
  f226f8: b      #0xf22768                                
  f226fc: b      #0xf22768                                
  f22700: b      #0xf22768                                
  f22704: b      #0xf22768                                
  f22708: b      #0xf22768                                
  f2270c: b      #0xf22768                                
  f22710: b      #0xf22768                                
  f22714: b      #0xf22768                                
  f22718: b      #0xf22768                                
  f2271c: b      #0xf22768                                
  f22720: b      #0xf22768                                
  f22724: b      #0xf22768                                
  f22728: b      #0xf22768                                
  f2272c: b      #0xf22768                                
  f22730: b      #0xf22768                                
  f22734: b      #0xf22768                                
  f22738: b      #0xf22768                                
  f2273c: b      #0xf22768                                
  f22740: b      #0xf22768                                
  f22744: b      #0xf22768                                
  f22748: b      #0xf22768                                
  f2274c: b      #0xf22768                                
  f22750: b      #0xf22768                                
  f22754: b      #0xf22768                                
  f22758: b      #0xf22768                                
  f2275c: b      #0xf22768                                
  f22760: b      #0xf22768                                
  f22764: b      #0xf22768                                
  f22768: cmp    w1, #1                                   
  f2276c: b.ne   #0xf22af0                                
  f22770: bl     #0xa05f60                                
  f22774: ldr    x21, [x0]                                
  f22778: bl     #0xa057f0                                
  f2277c: cbz    x20, #0xf227f4                           
  f22780: mov    w22, #-1                                 
  f22784: adrp   x10, #0x2fd1000                          
  f22788: ldr    x8, [x20]                                
  f2278c: ldr    x10, [x10, #0xe80]                       ; META System.IDisposable_TypeInfo
  f22790: ldrh   w9, [x8, #0x11e]                         
  f22794: ldr    x1, [x10]                                
  f22798: cbz    x9, #0xf227c4                            
  f2279c: ldr    x11, [x8, #0xb0]                         
  f227a0: mov    x10, xzr                                 
  f227a4: add    x11, x11, #8                             
  f227a8: ldur   x12, [x11, #-8]                          
  f227ac: cmp    x12, x1                                  
  f227b0: b.eq   #0xf227d4                                
  f227b4: add    x10, x10, #1                             
  f227b8: cmp    x10, x9                                  
  f227bc: add    x11, x11, #0x10                          
  f227c0: b.lo   #0xf227a8                                
  f227c4: mov    x0, x20                                  
  f227c8: mov    w2, wzr                                  
  f227cc: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f227d0: b      #0xf227e0                                
  f227d4: ldr    w9, [x11]                                
  f227d8: add    x8, x8, x9, lsl #4                       
  f227dc: add    x0, x8, #0x128                           
  f227e0: ldp    x8, x1, [x0]                             
  f227e4: mov    x0, x20                                  
  f227e8: blr    x8                                       
  f227ec: cmn    w22, #1                                  
  f227f0: b.ne   #0xf22808                                
  f227f4: cbz    x21, #0xf22808                           
  f227f8: mov    x0, x21                                  
  f227fc: mov    x1, xzr                                  
  f22800: mov    x2, xzr                                  
  f22804: bl     #0xc15d34                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36efc
  f22808: adrp   x23, #0x3038000                          
  f2280c: ldr    x23, [x23, #0x868]                       ; META ServerListMediator.<>c_TypeInfo
  f22810: ldr    x20, [x19, #0x40]                        
  f22814: ldr    x0, [x23]                                
  f22818: ldrb   w8, [x0, #0x127]                         
  f2281c: tbz    w8, #1, #0xf22830                        
  f22820: ldr    w8, [x0, #0xd8]                          
  f22824: cbnz   w8, #0xf22830                            
  f22828: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f2282c: ldr    x0, [x23]                                
  f22830: ldr    x8, [x0, #0xb8]                          
  f22834: ldr    x21, [x8, #8]                            
  f22838: cbnz   x21, #0xf2289c                           
  f2283c: ldrb   w9, [x0, #0x127]                         
  f22840: tbz    w9, #1, #0xf22858                        
  f22844: ldr    w9, [x0, #0xd8]                          
  f22848: cbnz   w9, #0xf22858                            
  f2284c: bl     #0xbfa4cc                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x1b694
  f22850: ldr    x8, [x23]                                
  f22854: ldr    x8, [x8, #0xb8]                          
  f22858: ldr    x22, [x8]                                
  f2285c: adrp   x8, #0x2fcd000                           
  f22860: ldr    x8, [x8, #0xe58]                         ; META System.Predicate<ZoneInfo>_TypeInfo
  f22864: ldr    x0, [x8]                                 
  f22868: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f2286c: adrp   x8, #0x3043000                           
  f22870: adrp   x9, #0x2fe1000                           
  f22874: ldr    x8, [x8, #0x40]                          ; MMETH Method$ServerListMediator.<>c.<InitServerList>b__15_0()
  f22878: ldr    x9, [x9, #0xd30]                         ; MMETH Method$System.Predicate<ZoneInfo>..ctor()
  f2287c: mov    x1, x22                                  
  f22880: mov    x21, x0                                  
  f22884: ldr    x2, [x8]                                 
  f22888: ldr    x3, [x9]                                 
  f2288c: bl     #0x1d35ed4                               ; System.Predicate<DWeapon>$$.ctor
  f22890: ldr    x8, [x23]                                
  f22894: ldr    x8, [x8, #0xb8]                          
  f22898: str    x21, [x8, #8]                            
  f2289c: cbnz   x20, #0xf228a8                           
  f228a0: mov    x0, xzr                                  
  f228a4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f228a8: adrp   x8, #0x304a000                           
  f228ac: ldr    x8, [x8, #0xbe0]                         ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.Find()
  f228b0: mov    x0, x20                                  
  f228b4: mov    x1, x21                                  
  f228b8: ldr    x2, [x8]                                 
  f228bc: bl     #0x221a2d0                               ; System.Collections.Generic.List<object>$$Find
  f228c0: mov    x20, x0                                  
  f228c4: cbz    x20, #0xf22958                           
  f228c8: ldr    x21, [x19, #0x40]                        
  f228cc: cbnz   x21, #0xf228d8                           
  f228d0: mov    x0, xzr                                  
  f228d4: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f228d8: adrp   x8, #0x3071000                           
  f228dc: ldr    x8, [x8, #0xb68]                         ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.Remove()
  f228e0: mov    x0, x21                                  
  f228e4: mov    x1, x20                                  
  f228e8: ldr    x2, [x8]                                 
  f228ec: bl     #0x221b9f4                               ; System.Collections.Generic.List<DUnionStudyInfo>$$Remove
  f228f0: ldr    x21, [x19, #0x40]                        
  f228f4: cbz    x21, #0xf22914                           
  f228f8: adrp   x8, #0x3008000                           
  f228fc: ldr    x8, [x8, #0x90]                          ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.get_Count()
  f22900: mov    x0, x21                                  
  f22904: ldr    x1, [x8]                                 
  f22908: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  f2290c: mov    w22, w0                                  
  f22910: b      #0xf2293c                                
  f22914: mov    x0, xzr                                  
  f22918: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f2291c: adrp   x8, #0x3008000                           
  f22920: ldr    x8, [x8, #0x90]                          ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.get_Count()
  f22924: mov    x0, xzr                                  
  f22928: ldr    x1, [x8]                                 
  f2292c: bl     #0x221937c                               ; System.Collections.Generic.List<IBinding>$$get_Count
  f22930: mov    w22, w0                                  
  f22934: mov    x0, xzr                                  
  f22938: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f2293c: adrp   x8, #0x2ff7000                           
  f22940: ldr    x8, [x8, #0x1f8]                         ; MMETH Method$System.Collections.Generic.List<ZoneInfo>.Insert()
  f22944: mov    x0, x21                                  
  f22948: mov    w1, w22                                  
  f2294c: mov    x2, x20                                  
  f22950: ldr    x3, [x8]                                 
  f22954: bl     #0x221b044                               ; System.Collections.Generic.List<ZoneInfo>$$Insert
  f22958: mov    x0, x19                                  
  f2295c: bl     #0xf21398                                ; ServerListMediator$$get_view
  f22960: ldr    x20, [x19, #0x40]                        
  f22964: mov    x21, x0                                  
  f22968: cbnz   x21, #0xf22970                           
  f2296c: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22970: mov    x0, x21                                  
  f22974: mov    x1, x20                                  
  f22978: bl     #0xf22af4                                ; ServerListView$$InitZoneList
  f2297c: mov    x0, x19                                  
  f22980: mov    x1, xzr                                  
  f22984: bl     #0x17da23c                               ; strange.extensions.mediation.impl.EventMediator$$get_dispatcher
  f22988: adrp   x8, #0x3011000                           
  f2298c: ldr    x8, [x8, #0x730]                         ; META LoginEvent_TypeInfo
  f22990: mov    x20, x0                                  
  f22994: add    x1, sp, #4                               
  f22998: ldr    x0, [x8]                                 
  f2299c: mov    w8, #7                                   
  f229a0: str    w8, [sp, #4]                             
  f229a4: bl     #0xc25524                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x466ec
  f229a8: ldr    x21, [x19, #0x30]                        
  f229ac: mov    x22, x0                                  
  f229b0: cbnz   x20, #0xf229bc                           
  f229b4: mov    x0, xzr                                  
  f229b8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f229bc: adrp   x10, #0x2fde000                          
  f229c0: ldr    x8, [x20]                                
  f229c4: ldr    x10, [x10, #0xc30]                       ; META strange.extensions.dispatcher.api.IDispatcher_TypeInfo
  f229c8: ldrh   w9, [x8, #0x11e]                         
  f229cc: ldr    x1, [x10]                                
  f229d0: cbz    x9, #0xf229fc                            
  f229d4: ldr    x11, [x8, #0xb0]                         
  f229d8: mov    x10, xzr                                 
  f229dc: add    x11, x11, #8                             
  f229e0: ldur   x12, [x11, #-8]                          
  f229e4: cmp    x12, x1                                  
  f229e8: b.eq   #0xf22a0c                                
  f229ec: add    x10, x10, #1                             
  f229f0: cmp    x10, x9                                  
  f229f4: add    x11, x11, #0x10                          
  f229f8: b.lo   #0xf229e0                                
  f229fc: mov    w2, #1                                   
  f22a00: mov    x0, x20                                  
  f22a04: bl     #0xbe4ad4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x5c9c
  f22a08: b      #0xf22a1c                                
  f22a0c: ldr    w9, [x11]                                
  f22a10: add    w9, w9, #1                               
  f22a14: add    x8, x8, w9, uxtw #4                      
  f22a18: add    x0, x8, #0x128                           
  f22a1c: ldp    x8, x3, [x0]                             
  f22a20: mov    x0, x20                                  
  f22a24: mov    x1, x22                                  
  f22a28: mov    x2, x21                                  
  f22a2c: blr    x8                                       
  f22a30: mov    x0, xzr                                  
  f22a34: bl     #0x1e6ccac                               ; UnityEngine.Application$$get_platform
  f22a38: cmp    w0, #0xb                                 
  f22a3c: b.ne   #0xf22ad0                                
  f22a40: adrp   x8, #0x305b000                           
  f22a44: ldr    x8, [x8, #0xe88]                         ; META System.Threading.ThreadStart_TypeInfo
  f22a48: ldr    x0, [x8]                                 
  f22a4c: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f22a50: adrp   x8, #0x305e000                           
  f22a54: ldr    x8, [x8, #0x4f0]                         ; MMETH Method$ServerListMediator.StartPing()
  f22a58: mov    x1, x19                                  
  f22a5c: mov    x3, xzr                                  
  f22a60: mov    x20, x0                                  
  f22a64: ldr    x2, [x8]                                 
  f22a68: bl     #0x1a0d024                               ; System.Threading.ThreadStart$$.ctor
  f22a6c: adrp   x8, #0x2fc4000                           
  f22a70: ldr    x8, [x8, #0x700]                         ; META System.Threading.Thread_TypeInfo
  f22a74: ldr    x0, [x8]                                 
  f22a78: bl     #0xc255c0                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x46788
  f22a7c: mov    x1, x20                                  
  f22a80: mov    x2, xzr                                  
  f22a84: mov    x19, x0                                  
  f22a88: bl     #0x1a0c91c                               ; System.Threading.Thread$$.ctor
  f22a8c: cbz    x19, #0xf22aa4                           
  f22a90: mov    w1, #1                                   
  f22a94: mov    x0, x19                                  
  f22a98: mov    x2, xzr                                  
  f22a9c: bl     #0x1a0c424                               ; System.Threading.Thread$$set_IsBackground
  f22aa0: b      #0xf22ac4                                
  f22aa4: mov    x0, xzr                                  
  f22aa8: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22aac: mov    w1, #1                                   
  f22ab0: mov    x0, x19                                  
  f22ab4: mov    x2, xzr                                  
  f22ab8: bl     #0x1a0c424                               ; System.Threading.Thread$$set_IsBackground
  f22abc: mov    x0, xzr                                  
  f22ac0: bl     #0xc15dc4                                ; ? near UnityEngine.Tilemaps.TileData$$set_colliderType+0x36f8c
  f22ac4: mov    x0, x19                                  
  f22ac8: mov    x1, xzr                                  
  f22acc: bl     #0x1a0cac8                               ; System.Threading.Thread$$Start
  f22ad0: ldp    x29, x30, [sp, #0x60]                    
  f22ad4: ldp    x20, x19, [sp, #0x50]                    
  f22ad8: ldp    x22, x21, [sp, #0x40]                    
  f22adc: ldp    x24, x23, [sp, #0x30]                    
  f22ae0: ldp    x26, x25, [sp, #0x20]                    
  f22ae4: ldp    x28, x27, [sp, #0x10]                    
  f22ae8: add    sp, sp, #0x70                            
  f22aec: ret                                             
  f22af0: bl     #0xa056e0                                

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
