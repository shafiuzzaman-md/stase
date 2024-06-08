; Query 0 -- Type: InitialValues, Instructions: 13475
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-logic QF_AUFBV )
; Array declarations
; Constraints
; Constraints and QueryExpr
(assert
        true
)
(check-sat)
(exit)
;   OK -- Elapsed: 5.499016e-03s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 13475
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (bvult 
               (_ bv0 32)
               (concat 
                       (select 
                               *CommBufferSize
                               (_ bv3 32)
                       )
                       (concat 
                               (select 
                                       *CommBufferSize
                                       (_ bv2 32)
                               )
                               (concat 
                                       (select 
                                               *CommBufferSize
                                               (_ bv1 32)
                                       )
                                       (select 
                                               *CommBufferSize
                                               (_ bv0 32)
                                       )
                               )
                       )
               )
        )
)
(check-sat)
(get-value ( (select *CommBufferSize (_ bv0 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv1 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv2 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 6.284713e-03s
;   Solvable: true
;     *CommBufferSize = [255,0,0,0]

; Query 2 -- Type: InitialValues, Instructions: 13479
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun Status () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (= 
           (_ bv2147483654 32)
           (concat 
                   (select 
                           Status
                           (_ bv3 32)
                   )
                   (concat 
                           (select 
                                   Status
                                   (_ bv2 32)
                           )
                           (concat 
                                   (select 
                                           Status
                                           (_ bv1 32)
                                   )
                                   (select 
                                           Status
                                           (_ bv0 32)
                                   )
                           )
                   )
           )
        )
)
(check-sat)
(get-value ( (select Status (_ bv0 32) ) ) )
(get-value ( (select Status (_ bv1 32) ) ) )
(get-value ( (select Status (_ bv2 32) ) ) )
(get-value ( (select Status (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.827584e-03s
;   Solvable: true
;     Status = [6,0,0,128]

; Query 3 -- Type: InitialValues, Instructions: 13486
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun Status () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 Status
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         Status
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 Status
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 Status
                                                 (_ bv0 32)
                                         )
                                 )
                         )
                 )
             )
            )
            (and 
                 (bvslt 
                        ?B1
                        (_ bv0 32)
                 )
                 (= 
                    false
                    (= 
                       (_ bv2147483654 32)
                       ?B1
                    )
                 )
            )
        )
)
(check-sat)
(get-value ( (select Status (_ bv0 32) ) ) )
(get-value ( (select Status (_ bv1 32) ) ) )
(get-value ( (select Status (_ bv2 32) ) ) )
(get-value ( (select Status (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 5.637945e-03s
;   Solvable: true
;     Status = [0,0,0,128]

; Query 4 -- Type: InitialValues, Instructions: 13497
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_BASE () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_SIZE () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 *CommBufferSize
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         *CommBufferSize
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv0 32)
                                         )
                                 )
                         )
                 )
             )
            )
            (and 
                 (bvule 
                        ?B1
                        (bvadd 
                               (concat 
                                       (select 
                                               SMRAM_BASE
                                               (_ bv3 32)
                                       )
                                       (concat 
                                               (select 
                                                       SMRAM_BASE
                                                       (_ bv2 32)
                                               )
                                               (concat 
                                                       (select 
                                                               SMRAM_BASE
                                                               (_ bv1 32)
                                                       )
                                                       (select 
                                                               SMRAM_BASE
                                                               (_ bv0 32)
                                                       )
                                               )
                                       )
                               )
                               (concat 
                                       (select 
                                               SMRAM_SIZE
                                               (_ bv3 32)
                                       )
                                       (concat 
                                               (select 
                                                       SMRAM_SIZE
                                                       (_ bv2 32)
                                               )
                                               (concat 
                                                       (select 
                                                               SMRAM_SIZE
                                                               (_ bv1 32)
                                                       )
                                                       (select 
                                                               SMRAM_SIZE
                                                               (_ bv0 32)
                                                       )
                                               )
                                       )
                               )
                        )
                 )
                 (bvult 
                        (_ bv0 32)
                        ?B1
                 )
            )
        )
)
(check-sat)
(get-value ( (select *CommBufferSize (_ bv0 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv1 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv2 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv3 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv3 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.785424e-03s
;   Solvable: true
;     *CommBufferSize = [255,255,127,255]
;     SMRAM_BASE = [255,255,127,255]
;     SMRAM_SIZE = [0,0,0,0]

; Query 5 -- Type: InitialValues, Instructions: 13505
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_BASE () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_SIZE () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 *CommBufferSize
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         *CommBufferSize
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv0 32)
                                         )
                                 )
                         )
                 )
             )
             (?B2
                 (bvadd 
                        (concat 
                                (select 
                                        SMRAM_BASE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_BASE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                        (concat 
                                (select 
                                        SMRAM_SIZE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_SIZE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                 )
             )
            )
            (and 
                 (and 
                      (= 
                         false
                         (bvule 
                                (_ bv3493855232 32)
                                ?B2
                         )
                      )
                      (bvule 
                             ?B1
                             ?B2
                      )
                 )
                 (bvult 
                        (_ bv0 32)
                        ?B1
                 )
            )
        )
)
(check-sat)
(get-value ( (select SMRAM_BASE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv3 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv3 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv0 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv1 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv2 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 9.048069e-03s
;   Solvable: true
;     SMRAM_BASE = [255,255,63,208]
;     SMRAM_SIZE = [0,0,0,0]
;     *CommBufferSize = [1,0,0,0]

; Query 6 -- Type: InitialValues, Instructions: 13510
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_BASE () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_SIZE () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 *CommBufferSize
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         *CommBufferSize
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv0 32)
                                         )
                                 )
                         )
                 )
             )
             (?B2
                 (bvadd 
                        (concat 
                                (select 
                                        SMRAM_BASE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_BASE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                        (concat 
                                (select 
                                        SMRAM_SIZE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_SIZE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                 )
             )
            )
            (and 
                 (and 
                      (and 
                           (= 
                              (_ bv0 32)
                              ?B1
                           )
                           (bvult 
                                  (_ bv0 32)
                                  ?B1
                           )
                      )
                      (bvule 
                             ?B1
                             ?B2
                      )
                 )
                 (bvule 
                        (_ bv3493855232 32)
                        ?B2
                 )
            )
        )
)
(check-sat)
(get-value ( (select *CommBufferSize (_ bv0 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv1 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv2 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv3 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv3 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.383712e-02s
;   Solvable: false

; Query 7 -- Type: InitialValues, Instructions: 13520
; This file conforms to SMTLIBv2 and was generated by KLEE
(set-option :produce-models true)
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_BASE () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun SMRAM_SIZE () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 *CommBufferSize
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         *CommBufferSize
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv0 32)
                                         )
                                 )
                         )
                 )
             )
             (?B2
                 (bvadd 
                        (concat 
                                (select 
                                        SMRAM_BASE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_BASE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_BASE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                        (concat 
                                (select 
                                        SMRAM_SIZE
                                        (_ bv3 32)
                                )
                                (concat 
                                        (select 
                                                SMRAM_SIZE
                                                (_ bv2 32)
                                        )
                                        (concat 
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv1 32)
                                                )
                                                (select 
                                                        SMRAM_SIZE
                                                        (_ bv0 32)
                                                )
                                        )
                                )
                        )
                 )
             )
            )
            (and 
                 (and 
                      (and 
                           (bvule 
                                  (_ bv3493855232 32)
                                  (bvsub 
                                         ?B2
                                         ?B1
                                  )
                           )
                           (bvult 
                                  (_ bv0 32)
                                  ?B1
                           )
                      )
                      (bvule 
                             ?B1
                             ?B2
                      )
                 )
                 (bvule 
                        (_ bv3493855232 32)
                        ?B2
                 )
            )
        )
)
(check-sat)
(get-value ( (select *CommBufferSize (_ bv0 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv1 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv2 32) ) ) )
(get-value ( (select *CommBufferSize (_ bv3 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_BASE (_ bv3 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv0 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv1 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv2 32) ) ) )
(get-value ( (select SMRAM_SIZE (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 7.465612e-03s
;   Solvable: true
;     *CommBufferSize = [0,0,64,0]
;     SMRAM_BASE = [255,255,255,211]
;     SMRAM_SIZE = [255,255,255,43]

