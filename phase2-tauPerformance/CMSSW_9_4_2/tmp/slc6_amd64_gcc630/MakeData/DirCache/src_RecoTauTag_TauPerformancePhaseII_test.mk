ALL_COMMONRULES += src_RecoTauTag_TauPerformancePhaseII_test
src_RecoTauTag_TauPerformancePhaseII_test_parent := RecoTauTag/TauPerformancePhaseII
src_RecoTauTag_TauPerformancePhaseII_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauPerformancePhaseII_test,src/RecoTauTag/TauPerformancePhaseII/test,TEST))
