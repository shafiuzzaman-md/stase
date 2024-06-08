; This file conforms to SMTLIBv2 and was generated by KLEE
(set-logic QF_AUFBV )
; Array declarations
(declare-fun *CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun CommBuffer->Command () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun mSmmMemLibInternalMaximumSupportAddress () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 *CommBufferSize
                                 (_ bv7 32)
                         )
                         (concat 
                                 (select 
                                         *CommBufferSize
                                         (_ bv6 32)
                                 )
                                 (concat 
                                         (select 
                                                 *CommBufferSize
                                                 (_ bv5 32)
                                         )
                                         (concat 
                                                 (select 
                                                         *CommBufferSize
                                                         (_ bv4 32)
                                                 )
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
                         )
                 )
             )
             (?B2
                 (concat 
                         (select 
                                 mSmmMemLibInternalMaximumSupportAddress
                                 (_ bv7 32)
                         )
                         (concat 
                                 (select 
                                         mSmmMemLibInternalMaximumSupportAddress
                                         (_ bv6 32)
                                 )
                                 (concat 
                                         (select 
                                                 mSmmMemLibInternalMaximumSupportAddress
                                                 (_ bv5 32)
                                         )
                                         (concat 
                                                 (select 
                                                         mSmmMemLibInternalMaximumSupportAddress
                                                         (_ bv4 32)
                                                 )
                                                 (concat 
                                                         (select 
                                                                 mSmmMemLibInternalMaximumSupportAddress
                                                                 (_ bv3 32)
                                                         )
                                                         (concat 
                                                                 (select 
                                                                         mSmmMemLibInternalMaximumSupportAddress
                                                                         (_ bv2 32)
                                                                 )
                                                                 (concat 
                                                                         (select 
                                                                                 mSmmMemLibInternalMaximumSupportAddress
                                                                                 (_ bv1 32)
                                                                         )
                                                                         (select 
                                                                                 mSmmMemLibInternalMaximumSupportAddress
                                                                                 (_ bv0 32)
                                                                         )
                                                                 )
                                                         )
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
                           (and 
                                (and 
                                     (= 
                                        false
                                        (bvult 
                                               ?B1
                                               (_ bv16 64)
                                        )
                                     )
                                     (= 
                                        false
                                        (bvult 
                                               ?B2
                                               ?B1
                                        )
                                     )
                                )
                                (= 
                                   false
                                   (bvult 
                                          ?B2
                                          (_ bv133461272690688 64)
                                   )
                                )
                           )
                           (= 
                              false
                              (bvult 
                                     (bvadd 
                                            (_ bv1 64)
                                            (bvsub 
                                                   ?B2
                                                   ?B1
                                            )
                                     )
                                     (_ bv133461272690688 64)
                              )
                           )
                      )
                      (= 
                         (_ bv2 32)
                         (concat 
                                 (select 
                                         CommBuffer->Command
                                         (_ bv3 32)
                                 )
                                 (concat 
                                         (select 
                                                 CommBuffer->Command
                                                 (_ bv2 32)
                                         )
                                         (concat 
                                                 (select 
                                                         CommBuffer->Command
                                                         (_ bv1 32)
                                                 )
                                                 (select 
                                                         CommBuffer->Command
                                                         (_ bv0 32)
                                                 )
                                         )
                                 )
                         )
                      )
                 )
                 (bvult 
                        ?B1
                        (_ bv56 64)
                 )
            )
        )
)
(check-sat)
(exit)
