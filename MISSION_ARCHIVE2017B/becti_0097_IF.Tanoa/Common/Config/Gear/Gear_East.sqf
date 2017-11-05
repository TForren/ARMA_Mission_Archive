
Save New Duplicate & Edit Just Text Twitter
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
820
821
822
823
824
825
826
827
828
829
830
831
832
833
834
835
836
837
838
839
840
841
842
843
844
845
846
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
865
866
867
868
869
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i = _i		+ ["ATMine_Range_Mag"];
_u = _u		+ [2];
_p = _p		+ [40];

_i = _i		+ ["APERSMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["APERSBoundingMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["SLAMDirectionalMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["APERSTripMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["SatchelCharge_Remote_Mag"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["DemoCharge_Remote_Mag"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["ClaymoreDirectionalMine_Remote_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["Laserbatteries"];
_u = _u		+ [3];
_p = _p		+ [30];

_i = _i		+ ["rhs_5Rnd_338lapua_t5000"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["rhs_10rnd_9x39mm_SP6"];
_u = _u		+ [3];
_p = _p		+ [20];

_i = _i		+ ["rhs_20rnd_9x39mm_SP6"];
_u = _u		+ [3];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_9x18_8_57N181S"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_10Rnd_762x54mmR_7N1"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_10rnd_9x39mm_SP5"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_20rnd_9x39mm_SP5"];
_u = _u		+ [2];
_p = _p		+ [15];

//_i = _i		+ ["20Rnd_556x45_UW_mag"];
//_u = _u		+ [1];
//_p = _p		+ [15];

_i = _i		+ ["rhs_30Rnd_545x39_AK"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_30Rnd_545x39_AK_no_tracers"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_30Rnd_545x39_7N6_AK"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_30Rnd_545x39_7N10_AK"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_545x39_7N22_AK"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_30Rnd_545x39_7U1_AK"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_AK"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_AK_Green"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_7N6_AK"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_45Rnd_545X39_7N10_AK"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["rhs_45Rnd_545X39_7N22_AK"];
_u = _u		+ [2];
_p = _p		+ [30];

_i = _i		+ ["rhs_30Rnd_762x39mm"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_762x39mm_tracer"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_762x39mm_89"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_30Rnd_762x39mm_U"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["rhs_100Rnd_762x54mmR"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_green"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7N13"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7N26"];
_u = _u		+ [3];
_p = _p		+ [60];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7BZ3"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["rhs_mag_9k38_rocket"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["rhs_rpg7_PG7V_mag"];
_u = _u		+ [1];
_p = _p		+ [200];

_i = _i		+ ["rhs_rpg7_PG7VL_mag"];
_u = _u		+ [2];
_p = _p		+ [250];

_i = _i		+ ["rhs_rpg7_PG7VR_mag"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_OG7V_mag"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_type69_airburst_mag"];
_u = _u		+ [3];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_TBG7V_mag"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["rhs_mag_9x19_17"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_9x18_8_57N181S"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_9x19mm_7n21_20"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_mag_9x19mm_7n21_44"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_mag_9x19mm_7n31_20"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["rhs_mag_9x19mm_7n31_44"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["MOLOTOV_MAG"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_rgd5"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_rgn"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_mag_rgo"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["ROCK_MAG"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["rhsgref_mag_rkg3em"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["O_IR_Grenade"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_rdg2_white"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_rdg2_black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_blue"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["ACE_Chemlight_HiOrange"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiRed"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiWhite"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiYellow"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_nspd"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_VOG25"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VOG25P"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_VG40OP_white"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VG40OP_red"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VG40OP_green"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_White"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_Green"];
_u = _u		+ [0];
_p = _p		+ [5];


//--- Weapons (Nested array elements are defined but skiped in the gear menu)

_i = _i		+ ["rhs_weap_ak74"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_ak74_gp25"];
_u = _u		+ [1];
_p = _p		+ [95];

_i = _i		+ ["rhs_weap_ak74m"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ ["rhs_weap_ak74m_gp25"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_weap_akm"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_weap_akm_gp25"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i		+ ["rhs_weap_svdp"];
_u = _u		+ [2];
_p = _p		+ [150];

_i = _i		+ ["rhs_weap_asval"];
_u = _u		+ [2];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_vss"];
_u = _u		+ [3];
_p = _p		+ [200];


_i = _i		+ ["hlc_rifle_rpk74n"];
_u = _u		+ [0];
_p = _p		+ [120];

_i = _i		+ ["hlc_rifle_rpk"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_pkm"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_weap_pkp"];
_u = _u		+ [3];
_p = _p		+ [320];

_i = _i		+ ["rhs_weap_ak103"];
_u = _u		+ [2];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_ak103_gp25"];
_u = _u		+ [2];
_p = _p		+ [250];

_i = _i		+ ["rhs_weap_ak104"];
_u = _u		+ [3];
_p = _p		+ [210];

_i = _i		+ ["rhs_weap_ak105"];
_u = _u		+ [2];
_p = _p		+ [150];

_i = _i		+ ["rhs_weap_aks74u"];
_u = _u		+ [1];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_pp2000"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_t5000"];
_u = _u		+ [3];
_p = _p		+ [500];

_i = _i		+ ["rhs_weap_makarov_pm"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_weap_pya"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_pp2000_folded"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_rsp30_white"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_rsp30_green"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_rsp30_red"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_tr8"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_weap_rpg26"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_rshg2"];
_u = _u		+ [2];
_p = _p		+ [400];

_i = _i		+ ["rhs_weap_igla"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["rhs_weap_rpg7"];
_u = _u		+ [1];
_p = _p		+ [1000];

//--- Uniforms
_i = _i		+ ["rhs_uniform_vmf_flora"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_uniform_flora_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_flora"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_vdv_flora"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_flora_patchless_alt"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_emr_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_msv_emr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_uniform_vdv_emr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_uniform_emr_des_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_vdv_emr_des"];
_u = _u		+ [0];
_p = _p		+ [30];

//_i = _i		+ ["U_O_GhillieSuit"];
//_u = _u		+ [3];
//_p = _p		+ [125];

//_i = _i		+ ["U_O_FullGhillie_ard"];
//_u = _u		+ [3];
//_p = _p		+ [150];

//_i = _i		+ ["U_O_FullGhillie_lsh"];
//_u = _u		+ [3];
//_p = _p		+ [150];

//_i = _i		+ ["U_O_FullGhillie_sard"];
//_u = _u		+ [3];
//_p = _p		+ [150];

_i = _i		+ ["rhs_uniform_df15"];
_u = _u		+ [2];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_gorka_r_g"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_gorka_r_y"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_mvd_izlom"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_m88_patchless"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_mflora_patchless"];
_u = _u		+ [1];
_p = _p		+ [40];


//_i = _i		+ ["U_O_Wetsuit"];
//_u = _u		+ [1];
//_p = _p		+ [40];

//_i = _i		+ ["U_O_Protagonist_VR"];
//_u = _u		+ [2];
//_p = _p		+ [75];


//--- Vests

_i = _i		+ ["rhs_6sh46"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_vydra_3m"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_6Sh92"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_digi"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_digi_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vsr"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vsr_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6b23"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["RHS_6B23_Rifleman"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6B23_Medic"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_engineer"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_crew"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_6sh116_od"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_6b23_6sh116_vog_od"];
_u = _u		+ [1];
_p = _p		+ [110];

//--- Backpacks
_i = _i		+ ["rhs_sidor"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_assault_umbts"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i		+ ["rhs_assault_umbts_engineer_empty"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i 	+ ["rhs_rpg_empty"];
_u = _u 	+ [2];
_p = _p 	+ [90];

_i = _i		+ ["rhs_d6_Parachute_backpack"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["RHS_DShkM_TripodLow_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_DShkM_TripodHigh_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_DShkM_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [400];

_i = _i		+ ["RHS_AGS30_Tripod_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_AGS30_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [500];

_i = _i		+ ["RHS_Podnos_Bipod_Bag"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["RHS_Podnos_Gun_Bag"];
_u = _u		+ [2];
_p = _p		+ [850];

//--- Glasses
_i = _i		+ ["G_Combat"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Diving"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_B_Diving"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Lowprofile"];
_u = _u  	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Shades_Black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Blue"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Blackred"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_BlackWhite"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_BlackYellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Checkered"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_GreenBlack"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Squares_Tinted"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Spectacles"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Squares"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Aviator"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Spectacles_Tinted"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Tactical_Black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Tactical_Clear"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Balaclava_blk"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Balaclava_combat"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Balaclava_lowprofile"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_aviator"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_beast"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_blk"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_shades"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_sport"];
_u = _u 	+ [0];
_p = _p 	+ [5];

//--- Helms
_i = _i 	+ ["rhs_fieldcap"];
_u = _u 	+ [0];
_p = _p 	+ [10];

_i = _i		+ ["rhs_6b26"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_tsh4"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_beret_milp"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_zsh7a_mike_green_alt"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhs_zsh7a_alt"];
_u = _u		+ [2];
_p = _p		+ [50];

//--- Accessories
_i = _i		+ ["rhs_acc_dtk1983"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_acc_1p29"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_acc_pso1m2"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["rhs_acc_pkas"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_acc_2dpZenit"];
_u = _u		+ [0];
_p = _p		+ [5];

//--- Items
_i = _i		+ ["rhs_1PN138"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_pdu4"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["ItemGPS"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["ItemMap"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["itemcompass"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["itemwatch"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Toolkit"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["FirstAidKit"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["Medikit"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["Minedetector"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["ACRE_PRC343"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["ACRE_PRC148"];
_u = _u		+ [0];
_p = _p		+ [10];

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];/*
_t = _t		+ [[[["arifle_trg21_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_trg21_gl_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokered_grenade_shell","1rnd_smokered_grenade_shell"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["lmg_zafir_f",["","acc_pointer_ir","optic_aco_grn", ""],["150rnd_762x51_box"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_katiba_f",["","acc_pointer_ir","optic_mrco", ""],["30rnd_65x39_caseless_green"]],["",[],[]],["hgun_rook40_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade","muzzle_snds_h"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_rpg32_f",[],["rpg32_f"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","rpg32_f","rpg32_f"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_O_Titan_F",[],["titan_aa"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","titan_aa","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["srifle_gm6_f",["","","optic_sos", ""],["5rnd_127x108_mag"]],["",[],[]],["hgun_acpc2_f",["muzzle_snds_acp","","",""],["16rnd_9x21_mag"]]],[["u_o_ghilliesuit",[]],["v_tacvest_brn",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_fieldpack_ocamo",["claymoredirectionalmine_remote_mag","claymoredirectionalmine_remote_mag","slamdirectionalmine_wire_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["smg_01_f",["","","optic_aco_grn", ""],["30rnd_45acp_mag_smg_01"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
*/
[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 