; This file conforms to SMTLIBv2 and was generated by KLEE
(set-logic QF_AUFBV )
; Array declarations
(declare-fun CommBuffer->Function () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun CommBufferSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun mSmmMemLibInternalMaximumSupportAddress () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun mVariableBufferPayloadSize () (Array (_ BitVec 32) (_ BitVec 8) ) )
; Constraints
; Constraints and QueryExpr
(assert
        (let
            (
             (?B1
                 (concat 
                         (select 
                                 CommBuffer->Function
                                 (_ bv3 32)
                         )
                         (concat 
                                 (select 
                                         CommBuffer->Function
                                         (_ bv2 32)
                                 )
                                 (concat 
                                         (select 
                                                 CommBuffer->Function
                                                 (_ bv1 32)
                                         )
                                         (select 
                                                 CommBuffer->Function
                                                 (_ bv0 32)
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
                                     (and 
                                          (and 
                                               (and 
                                                    (and 
                                                         (and 
                                                              (and 
                                                                   (and 
                                                                        (and 
                                                                             (and 
                                                                                  (and 
                                                                                       (and 
                                                                                            (and 
                                                                                                 (= 
                                                                                                    (_ bv0 32)
                                                                                                    (concat 
                                                                                                            (select 
                                                                                                                    mVariableBufferPayloadSize
                                                                                                                    (_ bv3 32)
                                                                                                            )
                                                                                                            (concat 
                                                                                                                    (select 
                                                                                                                            mVariableBufferPayloadSize
                                                                                                                            (_ bv2 32)
                                                                                                                    )
                                                                                                                    (concat 
                                                                                                                            (select 
                                                                                                                                    mVariableBufferPayloadSize
                                                                                                                                    (_ bv1 32)
                                                                                                                            )
                                                                                                                            (select 
                                                                                                                                    mVariableBufferPayloadSize
                                                                                                                                    (_ bv0 32)
                                                                                                                            )
                                                                                                                    )
                                                                                                            )
                                                                                                    )
                                                                                                 )
                                                                                                 (= 
                                                                                                    false
                                                                                                    (bvult 
                                                                                                           ?B2
                                                                                                           (_ bv0 64)
                                                                                                    )
                                                                                                 )
                                                                                            )
                                                                                            (= 
                                                                                               false
                                                                                               (bvult 
                                                                                                      ?B2
                                                                                                      (_ bv3193962496 64)
                                                                                               )
                                                                                            )
                                                                                       )
                                                                                       (= 
                                                                                          (_ bv0 32)
                                                                                          (concat 
                                                                                                  (select 
                                                                                                          CommBufferSize
                                                                                                          (_ bv3 32)
                                                                                                  )
                                                                                                  (concat 
                                                                                                          (select 
                                                                                                                  CommBufferSize
                                                                                                                  (_ bv2 32)
                                                                                                          )
                                                                                                          (concat 
                                                                                                                  (select 
                                                                                                                          CommBufferSize
                                                                                                                          (_ bv1 32)
                                                                                                                  )
                                                                                                                  (select 
                                                                                                                          CommBufferSize
                                                                                                                          (_ bv0 32)
                                                                                                                  )
                                                                                                          )
                                                                                                  )
                                                                                          )
                                                                                       )
                                                                                  )
                                                                                  (= 
                                                                                     false
                                                                                     (= 
                                                                                        (_ bv1 32)
                                                                                        ?B1
                                                                                     )
                                                                                  )
                                                                             )
                                                                             (= 
                                                                                false
                                                                                (= 
                                                                                   (_ bv2 32)
                                                                                   ?B1
                                                                                )
                                                                             )
                                                                        )
                                                                        (= 
                                                                           false
                                                                           (= 
                                                                              (_ bv3 32)
                                                                              ?B1
                                                                           )
                                                                        )
                                                                   )
                                                                   (= 
                                                                      false
                                                                      (= 
                                                                         (_ bv4 32)
                                                                         ?B1
                                                                      )
                                                                   )
                                                              )
                                                              (= 
                                                                 false
                                                                 (= 
                                                                    (_ bv5 32)
                                                                    ?B1
                                                                 )
                                                              )
                                                         )
                                                         (= 
                                                            false
                                                            (= 
                                                               (_ bv6 32)
                                                               ?B1
                                                            )
                                                         )
                                                    )
                                                    (= 
                                                       false
                                                       (= 
                                                          (_ bv7 32)
                                                          ?B1
                                                       )
                                                    )
                                               )
                                               (= 
                                                  false
                                                  (= 
                                                     (_ bv8 32)
                                                     ?B1
                                                  )
                                               )
                                          )
                                          (= 
                                             false
                                             (= 
                                                (_ bv9 32)
                                                ?B1
                                             )
                                          )
                                     )
                                     (= 
                                        false
                                        (= 
                                           (_ bv10 32)
                                           ?B1
                                        )
                                     )
                                )
                                (= 
                                   false
                                   (= 
                                      (_ bv11 32)
                                      ?B1
                                   )
                                )
                           )
                           (= 
                              false
                              (= 
                                 (_ bv12 32)
                                 ?B1
                              )
                           )
                      )
                      (= 
                         false
                         (= 
                            (_ bv13 32)
                            ?B1
                         )
                      )
                 )
                 (= 
                    false
                    (= 
                       (_ bv14 32)
                       ?B1
                    )
                 )
            )
        )
)
(check-sat)
(exit)
