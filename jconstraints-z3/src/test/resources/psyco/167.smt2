(set-info :smt-lib-version 2.6)
(set-logic LIA)
(set-info
  :source |
 Generated by PSyCO 0.1
 More info in N. P. Lopes and J. Monteiro. Weakest Precondition Synthesis for
 Compiler Optimizations, VMCAI'14.
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun R_B1_V4 () Bool)
(declare-fun R_B1_V5 () Bool)
(declare-fun W_S2_V5 () Bool)
(declare-fun R_B1_V2 () Bool)
(declare-fun W_S2_V2 () Bool)
(declare-fun W_S2_V3 () Bool)
(declare-fun W_S2_V1 () Bool)
(declare-fun W_S1_V4 () Bool)
(declare-fun W_S1_V5 () Bool)
(declare-fun W_S1_V2 () Bool)
(declare-fun W_S1_V1 () Bool)
(declare-fun R_S1_V4 () Bool)
(declare-fun R_S1_V5 () Bool)
(declare-fun R_S1_V2 () Bool)
(declare-fun R_S1_V3 () Bool)
(declare-fun R_S1_V1 () Bool)
(declare-fun R_B1_V3 () Bool)
(declare-fun R_S2_V4 () Bool)
(declare-fun R_S2_V5 () Bool)
(declare-fun R_S2_V2 () Bool)
(declare-fun R_S2_V3 () Bool)
(declare-fun R_S2_V1 () Bool)
(declare-fun DISJ_W_S2_R_S2 () Bool)
(declare-fun DISJ_W_S2_R_S1 () Bool)
(declare-fun DISJ_W_S1_W_S2 () Bool)
(declare-fun DISJ_W_S1_R_B1 () Bool)
(declare-fun DISJ_W_S1_R_S2 () Bool)
(declare-fun DISJ_W_S1_R_S1 () Bool)
(declare-fun W_S2_V4 () Bool)
(declare-fun W_S1_V3 () Bool)
(declare-fun R_B1_V1 () Bool)
(declare-fun DISJ_W_S2_R_B1 () Bool)
(assert
 (let (($x197 (not R_B1_V4)))
 (let (($x90 (and W_S2_V5 R_B1_V5)))
 (let (($x2149 (not $x90)))
 (let (($x89 (and W_S2_V2 R_B1_V2)))
 (let (($x2087 (not $x89)))
 (let
 (($x2118
   (forall
    ((V1_0 Int) (V3_0 Int) 
     (V2_0 Int) (V5_0 Int) 
     (V4_0 Int) (MW_S1_V1 Bool) 
     (MW_S1_V3 Bool) (MW_S1_V2 Bool) 
     (MW_S1_V5 Bool) (MW_S1_V4 Bool) 
     (MW_S2_V1 Bool) (MW_S2_V3 Bool) 
     (MW_S2_V2 Bool) (MW_S2_V5 Bool) 
     (MW_S2_V4 Bool) (S1_V1_!1026 Int) 
     (S1_V1_!1038 Int) (S1_V1_!1043 Int) 
     (B1_!1025 Bool) (B1_!1031 Bool) 
     (B1_!1037 Bool) (S2_V5_!1035 Int) 
     (S1_V3_!1027 Int) (S1_V3_!1039 Int) 
     (S1_V3_!1044 Int) (S1_V2_!1028 Int) 
     (S1_V2_!1040 Int) (S1_V2_!1045 Int) 
     (S2_V4_!1036 Int) (S1_V5_!1029 Int) 
     (S1_V5_!1041 Int) (S1_V5_!1046 Int) 
     (S2_V1_!1032 Int) (S1_V4_!1030 Int) 
     (S1_V4_!1042 Int) (S1_V4_!1047 Int) 
     (S2_V2_!1034 Int) (S2_V3_!1033 Int))
    (let ((?x2508 (ite MW_S1_V4 S1_V4_!1047 V4_0)))
    (let ((?x2504 (ite MW_S1_V4 S1_V4_!1030 V4_0)))
    (let ((?x2486 (ite MW_S2_V4 S2_V4_!1036 ?x2504)))
    (let (($x2505 (= ?x2486 ?x2508)))
    (let ((?x2460 (ite MW_S1_V5 S1_V5_!1046 V5_0)))
    (let ((?x2345 (ite MW_S1_V5 S1_V5_!1029 V5_0)))
    (let ((?x2464 (ite MW_S2_V5 S2_V5_!1035 ?x2345)))
    (let (($x2516 (= ?x2464 ?x2460)))
    (let ((?x2475 (ite MW_S1_V2 S1_V2_!1045 V2_0)))
    (let ((?x2512 (ite MW_S1_V2 S1_V2_!1028 V2_0)))
    (let ((?x2515 (ite MW_S2_V2 S2_V2_!1034 ?x2512)))
    (let (($x2476 (= ?x2515 ?x2475)))
    (let ((?x2481 (ite MW_S1_V3 S1_V3_!1044 V3_0)))
    (let ((?x2350 (ite MW_S1_V3 S1_V3_!1027 V3_0)))
    (let ((?x2351 (ite MW_S2_V3 S2_V3_!1033 ?x2350)))
    (let (($x2511 (= ?x2351 ?x2481)))
    (let ((?x2473 (ite MW_S1_V1 S1_V1_!1038 V1_0)))
    (let ((?x2315 (+ 1 ?x2473)))
    (let ((?x2502 (ite MW_S1_V1 S1_V1_!1043 ?x2315)))
    (let ((?x2501 (ite MW_S1_V1 S1_V1_!1026 V1_0)))
    (let ((?x2503 (+ 1 ?x2501)))
    (let ((?x2510 (ite MW_S2_V1 S2_V1_!1032 ?x2503)))
    (let (($x2413 (= ?x2510 ?x2502)))
    (let (($x2414 (and $x2413 $x2511 $x2476 $x2516 $x2505)))
    (let ((?x2399 (+ (- 1) ?x2475)))
    (let (($x2389 (>= ?x2502 ?x2399)))
    (let ((?x2447 (ite MW_S1_V2 S1_V2_!1040 V2_0)))
    (let (($x2395 (<= ?x2447 ?x2315)))
    (let (($x2102 (not $x2395)))
    (let ((?x2372 (+ (- 1) ?x2515)))
    (let (($x2396 (>= ?x2510 ?x2372)))
    (let (($x2382 (not B1_!1031)))
    (let (($x2384 (<= ?x2512 ?x2503)))
    (let (($x2400 (not $x2384)))
    (let (($x2432 (<= V2_0 V1_0)))
    (let (($x2459 (not $x2432)))
    (let
    (($x2373
      (and $x2459 B1_!1025 $x2400 $x2382 $x2396 B1_!1037 $x2102 $x2389)))
    (let (($x2433 (not $x2373)))
    (let (($x2403 (not MW_S2_V5)))
    (let (($x2385 (or $x2403 W_S2_V5)))
    (let (($x2375 (not MW_S2_V2)))
    (let (($x2326 (or $x2375 W_S2_V2)))
    (let (($x2404 (not MW_S2_V3)))
    (let (($x2401 (or $x2404 W_S2_V3)))
    (let (($x2405 (not MW_S2_V1)))
    (let (($x2367 (or $x2405 W_S2_V1)))
    (let (($x2370 (not MW_S1_V4)))
    (let (($x2374 (or $x2370 W_S1_V4)))
    (let (($x2344 (not MW_S1_V5)))
    (let (($x2346 (or $x2344 W_S1_V5)))
    (let (($x2347 (not MW_S1_V2)))
    (let (($x2348 (or $x2347 W_S1_V2)))
    (let (($x2197 (not MW_S1_V1)))
    (let (($x2202 (or $x2197 W_S1_V1)))
    (let (($x2468 (= S1_V4_!1047 S1_V4_!1042)))
    (let ((?x2469 (ite MW_S1_V4 S1_V4_!1042 V4_0)))
    (let (($x2470 (= ?x2469 V4_0)))
    (let (($x181 (not R_S1_V4)))
    (let (($x2471 (or $x181 $x2470)))
    (let ((?x2472 (ite MW_S1_V5 S1_V5_!1041 V5_0)))
    (let (($x2513 (= ?x2472 V5_0)))
    (let (($x179 (not R_S1_V5)))
    (let (($x2474 (or $x179 $x2513)))
    (let (($x2506 (= ?x2447 V2_0)))
    (let (($x177 (not R_S1_V2)))
    (let (($x2514 (or $x177 $x2506)))
    (let ((?x2517 (ite MW_S1_V3 S1_V3_!1039 V3_0)))
    (let (($x2519 (= ?x2517 V3_0)))
    (let (($x175 (not R_S1_V3)))
    (let (($x2520 (or $x175 $x2519)))
    (let ((?x2521 (+ (- 1) V1_0)))
    (let (($x2241 (= ?x2473 ?x2521)))
    (let (($x173 (not R_S1_V1)))
    (let (($x2136 (or $x173 $x2241)))
    (let (($x2069 (and $x2136 $x2520 $x2514 $x2474 $x2471)))
    (let (($x1945 (not $x2069)))
    (let (($x2275 (or $x1945 $x2468)))
    (let (($x1965 (= S1_V4_!1047 S1_V4_!1030)))
    (let (($x2219 (or $x1945 $x1965)))
    (let (($x2251 (= S1_V4_!1030 S1_V4_!1042)))
    (let (($x2147 (= S1_V5_!1041 S1_V5_!1046)))
    (let (($x2148 (= V4_0 ?x2469)))
    (let (($x2278 (or $x181 $x2148)))
    (let (($x2057 (= V5_0 ?x2472)))
    (let (($x2173 (or $x179 $x2057)))
    (let (($x2229 (= V2_0 ?x2447)))
    (let (($x2212 (or $x177 $x2229)))
    (let (($x2183 (= V3_0 ?x2517)))
    (let (($x2145 (or $x175 $x2183)))
    (let (($x2021 (= V1_0 ?x2315)))
    (let (($x2226 (or $x173 $x2021)))
    (let (($x2157 (and $x2226 $x2145 $x2212 $x2173 $x2278)))
    (let (($x2273 (not $x2157)))
    (let (($x2139 (or $x2273 $x2147)))
    (let (($x2020 (= S1_V5_!1041 S1_V5_!1029)))
    (let (($x2137 (= S1_V5_!1029 S1_V5_!1046)))
    (let (($x2266 (or $x2273 $x2137)))
    (let (($x2172 (= S1_V2_!1045 S1_V2_!1040)))
    (let (($x2144 (or $x1945 $x2172)))
    (let (($x2060 (= S1_V2_!1045 S1_V2_!1028)))
    (let (($x2191 (or $x1945 $x2060)))
    (let (($x2079 (= S1_V2_!1028 S1_V2_!1040)))
    (let (($x1993 (= S1_V3_!1044 S1_V3_!1039)))
    (let (($x2142 (or $x1945 $x1993)))
    (let (($x1938 (= S1_V3_!1044 S1_V3_!1027)))
    (let (($x2115 (or $x1945 $x1938)))
    (let (($x1994 (= S1_V3_!1027 S1_V3_!1039)))
    (let (($x2284 (= V5_0 ?x2345)))
    (let (($x195 (not R_B1_V5)))
    (let (($x1942 (or $x195 $x2284)))
    (let (($x2007 (= V2_0 ?x2512)))
    (let (($x193 (not R_B1_V2)))
    (let (($x2218 (or $x193 $x2007)))
    (let (($x1934 (= V3_0 ?x2350)))
    (let (($x191 (not R_B1_V3)))
    (let (($x2015 (or $x191 $x1934)))
    (let (($x1928 (and $x2015 $x2218 $x1942)))
    (let (($x1821 (not $x1928)))
    (let (($x1966 (= S1_V1_!1043 S1_V1_!1038)))
    (let (($x2274 (or $x1945 $x1966)))
    (let (($x2135 (= S1_V1_!1043 S1_V1_!1026)))
    (let (($x2001 (or $x1945 $x2135)))
    (let (($x2268 (= S1_V1_!1026 S1_V1_!1038)))
    (let
    (($x2234
      (and $x2268 $x2001 $x2274 
      (or $x1821 (= B1_!1025 B1_!1031)) 
      (= B1_!1037 B1_!1025) 
      (or $x1821 (= B1_!1037 B1_!1031)) $x1994 $x2115 $x2142 $x2079 $x2191
      $x2144 $x2266 $x2020 $x2139 $x2251 $x2219 $x2275 $x2202 $x2348 $x2346
      $x2374 $x2367 $x2401 $x2326 $x2385))) 
    (or (not $x2234) $x2433 $x2414))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (let (($x88 (and W_S2_V3 R_B1_V3)))
 (let (($x2081 (not $x88)))
 (let (($x81 (and W_S2_V5 R_S2_V5)))
 (let (($x80 (and W_S2_V2 R_S2_V2)))
 (let (($x79 (and W_S2_V3 R_S2_V3)))
 (let (($x78 (and W_S2_V1 R_S2_V1)))
 (let (($x113 (or $x78 $x79 $x80 $x81 R_S2_V4)))
 (let (($x114 (not $x113)))
 (let (($x115 (= DISJ_W_S2_R_S2 $x114)))
 (let (($x72 (and W_S2_V5 R_S1_V5)))
 (let (($x71 (and W_S2_V2 R_S1_V2)))
 (let (($x70 (and W_S2_V3 R_S1_V3)))
 (let (($x69 (and W_S2_V1 R_S1_V1)))
 (let (($x110 (or $x69 $x70 $x71 $x72 R_S1_V4)))
 (let (($x111 (not $x110)))
 (let (($x112 (= DISJ_W_S2_R_S1 $x111)))
 (let (($x63 (and W_S1_V5 W_S2_V5)))
 (let (($x61 (and W_S1_V2 W_S2_V2)))
 (let (($x57 (and W_S1_V1 W_S2_V1)))
 (let (($x107 (or $x57 W_S2_V3 $x61 $x63 W_S1_V4)))
 (let (($x108 (not $x107)))
 (let (($x109 (= DISJ_W_S1_W_S2 $x108)))
 (let (($x49 (and W_S1_V5 R_B1_V5)))
 (let (($x47 (and W_S1_V2 R_B1_V2)))
 (let (($x2225 (or R_B1_V3 $x47 $x49)))
 (let (($x1978 (not $x2225)))
 (let (($x2005 (= DISJ_W_S1_R_B1 $x1978)))
 (let (($x37 (and W_S1_V4 R_S2_V4)))
 (let (($x35 (and W_S1_V5 R_S2_V5)))
 (let (($x33 (and W_S1_V2 R_S2_V2)))
 (let (($x29 (and W_S1_V1 R_S2_V1)))
 (let (($x101 (or $x29 R_S2_V3 $x33 $x35 $x37)))
 (let (($x102 (not $x101)))
 (let (($x103 (= DISJ_W_S1_R_S2 $x102)))
 (let (($x23 (and W_S1_V4 R_S1_V4)))
 (let (($x20 (and W_S1_V5 R_S1_V5)))
 (let (($x17 (and W_S1_V2 R_S1_V2)))
 (let (($x12 (and W_S1_V1 R_S1_V1)))
 (let (($x98 (or $x12 R_S1_V3 $x17 $x20 $x23)))
 (let (($x99 (not $x98)))
 (let (($x100 (= DISJ_W_S1_R_S1 $x99)))
 (let (($x189 (not R_B1_V1)))
 (and DISJ_W_S2_R_B1 $x189 W_S1_V3 W_S2_V4 $x100 $x103 $x2005 $x109 $x112
 $x115 $x2081 $x2118 $x2087 $x2149 $x197))))))))))))))))))))))))))))))))))))))))))))))))))
(assert (not DISJ_W_S1_R_B1))
(check-sat)
(exit)
