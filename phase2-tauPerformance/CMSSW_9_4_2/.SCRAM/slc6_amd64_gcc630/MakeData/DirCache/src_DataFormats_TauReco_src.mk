ifeq ($(strip $(DataFormats/TauReco)),)
ALL_COMMONRULES += src_DataFormats_TauReco_src
src_DataFormats_TauReco_src_parent := DataFormats/TauReco
src_DataFormats_TauReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_TauReco_src,src/DataFormats/TauReco/src,LIBRARY))
DataFormatsTauReco := self/DataFormats/TauReco
DataFormats/TauReco := DataFormatsTauReco
DataFormatsTauReco_files := $(patsubst src/DataFormats/TauReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/TauReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsTauReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/TauReco/BuildFile
DataFormatsTauReco_LOC_USE := self  DataFormats/Common DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Math DataFormats/TrackReco DataFormats/JetReco DataFormats/ParticleFlowCandidate
DataFormatsTauReco_LCGDICTS  := x x1 x2 x3 
DataFormatsTauReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsTauReco,src/DataFormats/TauReco/src/classes_2.h src/DataFormats/TauReco/src/classes_1.h src/DataFormats/TauReco/src/classes_3.h src/DataFormats/TauReco/src/classes_hlt.h,src/DataFormats/TauReco/src/classes_def_2.xml src/DataFormats/TauReco/src/classes_def_1.xml src/DataFormats/TauReco/src/classes_def_3.xml src/DataFormats/TauReco/src/classes_def_hlt.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
DataFormatsTauReco_EX_LIB   := DataFormatsTauReco
DataFormatsTauReco_EX_USE   := $(foreach d,$(DataFormatsTauReco_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTauReco_PACKAGE := self/src/DataFormats/TauReco/src
ALL_PRODS += DataFormatsTauReco
DataFormatsTauReco_CLASS := LIBRARY
DataFormats/TauReco_forbigobj+=DataFormatsTauReco
DataFormatsTauReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsTauReco,src/DataFormats/TauReco/src,src_DataFormats_TauReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
