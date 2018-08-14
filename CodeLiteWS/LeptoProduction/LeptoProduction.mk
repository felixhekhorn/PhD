##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=LeptoProduction
ConfigurationName      :=Release
WorkspacePath          :=/home/Felix/Physik/PhD/CodeLiteWS
ProjectPath            :=/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Felix Hekhorn
Date                   :=14/08/18
CodeLitePath           :=/home/Felix/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LeptoProduction.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := `lhapdf-config --ldflags` $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o $(IntermediateDirectory)/src_Pdf_cteq3.f.o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o $(IntermediateDirectory)/src_Pdf_grv94.f.o $(IntermediateDirectory)/src_Pdf_mortungb.f.o -O3
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)m $(LibrarySwitch)gsl $(LibrarySwitch)gslcblas $(LibrarySwitch)gfortran $(LibrarySwitch)boost_system $(LibrarySwitch)boost_filesystem $(LibrarySwitch)dvegas $(LibrarySwitch)rk $(LibrarySwitch)yaml-cpp 
ArLibs                 :=  "m" "gsl" "gslcblas" "gfortran" "libboost_system" "libboost_filesystem" "dvegas" "rk" "yaml-cpp" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++11 `lhapdf-config --cflags` -O3  -Wall $(Preprocessors)
CFLAGS   :=  -O3  -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
DSSV2014_GRIDS:=/home/Felix/Physik/PhD/PDF/DSSV2014/grids/
GRSV96_GRIDS:=/home/Felix/Physik/PhD/PDF/GRSV96/
Objects0=$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release
PrePreBuild: $(IntermediateDirectory)/src_Pdf_all.d
$(IntermediateDirectory)/src_Pdf_all.d: $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o\
					$(IntermediateDirectory)/src_Pdf_cteq3.f.o\
					$(IntermediateDirectory)/src_Pdf_grsvpol.f.o\
					$(IntermediateDirectory)/src_Pdf_mortungb.f.o\
					$(IntermediateDirectory)/src_Pdf_grv94.f.o
	@echo "" > $(IntermediateDirectory)/src_Pdf_all.d

$(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o: $(IntermediateDirectory)/.d src/Pdf/DSSV_gluon_update.f
	gfortran -c src/Pdf/DSSV_gluon_update.f -O3 -w -o $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o

$(IntermediateDirectory)/src_Pdf_cteq3.f.o: $(IntermediateDirectory)/.d src/Pdf/cteq3.f
	gfortran -c src/Pdf/cteq3.f -O3 -w -o $(IntermediateDirectory)/src_Pdf_cteq3.f.o

$(IntermediateDirectory)/src_Pdf_grsvpol.f.o: $(IntermediateDirectory)/.d src/Pdf/grsvpol.f
	gfortran -c src/Pdf/grsvpol.f -O3 -w -o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o

$(IntermediateDirectory)/src_Pdf_grv94.f.o: $(IntermediateDirectory)/.d src/Pdf/grv94.f
	gfortran -c src/Pdf/grv94.f -O3 -w -o $(IntermediateDirectory)/src_Pdf_grv94.f.o

$(IntermediateDirectory)/src_Pdf_mortungb.f.o: $(IntermediateDirectory)/.d src/Pdf/mortungb.f
	gfortran -c src/Pdf/mortungb.f -O3 -w -o $(IntermediateDirectory)/src_Pdf_mortungb.f.o

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): src/main.cpp $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(DependSuffix): src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.cpp$(DependSuffix) -MM src/main.cpp

$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) src/main.cpp

$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix): src/InclusiveLeptoProduction.cpp $(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/InclusiveLeptoProduction.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(DependSuffix): src/InclusiveLeptoProduction.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(DependSuffix) -MM src/InclusiveLeptoProduction.cpp

$(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(PreprocessSuffix): src/InclusiveLeptoProduction.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(PreprocessSuffix) src/InclusiveLeptoProduction.cpp

$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(ObjectSuffix): src/FullyDiffLeptoProduction.cpp $(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiffLeptoProduction.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(DependSuffix): src/FullyDiffLeptoProduction.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(DependSuffix) -MM src/FullyDiffLeptoProduction.cpp

$(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(PreprocessSuffix): src/FullyDiffLeptoProduction.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiffLeptoProduction.cpp$(PreprocessSuffix) src/FullyDiffLeptoProduction.cpp

$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix): src/Pdf/PdfWrapper.cpp $(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Pdf/PdfWrapper.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(DependSuffix): src/Pdf/PdfWrapper.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(DependSuffix) -MM src/Pdf/PdfWrapper.cpp

$(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(PreprocessSuffix): src/Pdf/PdfWrapper.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(PreprocessSuffix) src/Pdf/PdfWrapper.cpp

$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix): src/Common/AbstractLeptoProduction.cpp $(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Common/AbstractLeptoProduction.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(DependSuffix): src/Common/AbstractLeptoProduction.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(DependSuffix) -MM src/Common/AbstractLeptoProduction.cpp

$(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(PreprocessSuffix): src/Common/AbstractLeptoProduction.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(PreprocessSuffix) src/Common/AbstractLeptoProduction.cpp

$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix): src/Common/AbstractIntKer.cpp $(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Common/AbstractIntKer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(DependSuffix): src/Common/AbstractIntKer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(DependSuffix) -MM src/Common/AbstractIntKer.cpp

$(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(PreprocessSuffix): src/Common/AbstractIntKer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(PreprocessSuffix) src/Common/AbstractIntKer.cpp

$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix): src/Inclusive/IntKer.cpp $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/IntKer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix): src/Inclusive/IntKer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix) -MM src/Inclusive/IntKer.cpp

$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(PreprocessSuffix): src/Inclusive/IntKer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(PreprocessSuffix) src/Inclusive/IntKer.cpp

$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(ObjectSuffix): src/FullyDiff/IntKer.cpp $(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/IntKer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(DependSuffix): src/FullyDiff/IntKer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(DependSuffix) -MM src/FullyDiff/IntKer.cpp

$(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(PreprocessSuffix): src/FullyDiff/IntKer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_IntKer.cpp$(PreprocessSuffix) src/FullyDiff/IntKer.cpp

$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(ObjectSuffix): src/FullyDiff/PhasespacePoint.cpp $(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/PhasespacePoint.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(DependSuffix): src/FullyDiff/PhasespacePoint.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(DependSuffix) -MM src/FullyDiff/PhasespacePoint.cpp

$(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(PreprocessSuffix): src/FullyDiff/PhasespacePoint.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_PhasespacePoint.cpp$(PreprocessSuffix) src/FullyDiff/PhasespacePoint.cpp

$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix): src/Common/ME/BQED.cpp $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Common/ME/BQED.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix): src/Common/ME/BQED.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix) -MM src/Common/ME/BQED.cpp

$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(PreprocessSuffix): src/Common/ME/BQED.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(PreprocessSuffix) src/Common/ME/BQED.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(ObjectSuffix): src/Inclusive/ME/IntA2.cpp $(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/ME/IntA2.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(DependSuffix): src/Inclusive/ME/IntA2.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(DependSuffix) -MM src/Inclusive/ME/IntA2.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(PreprocessSuffix): src/Inclusive/ME/IntA2.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(PreprocessSuffix) src/Inclusive/ME/IntA2.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(ObjectSuffix): src/Inclusive/ME/IntA1.cpp $(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/ME/IntA1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(DependSuffix): src/Inclusive/ME/IntA1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(DependSuffix) -MM src/Inclusive/ME/IntA1.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(PreprocessSuffix): src/Inclusive/ME/IntA1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(PreprocessSuffix) src/Inclusive/ME/IntA1.cpp

$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(ObjectSuffix): src/Inclusive/ME/SV.cpp $(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/ME/SV.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(DependSuffix): src/Inclusive/ME/SV.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(DependSuffix) -MM src/Inclusive/ME/SV.cpp

$(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(PreprocessSuffix): src/Inclusive/ME/SV.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(PreprocessSuffix) src/Inclusive/ME/SV.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(ObjectSuffix): src/Inclusive/ME/IntR.cpp $(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/ME/IntR.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(DependSuffix): src/Inclusive/ME/IntR.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(DependSuffix) -MM src/Inclusive/ME/IntR.cpp

$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(PreprocessSuffix): src/Inclusive/ME/IntR.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(PreprocessSuffix) src/Inclusive/ME/IntR.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(ObjectSuffix): src/FullyDiff/ME/A2.cpp $(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/A2.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(DependSuffix): src/FullyDiff/ME/A2.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(DependSuffix) -MM src/FullyDiff/ME/A2.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(PreprocessSuffix): src/FullyDiff/ME/A2.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_A2.cpp$(PreprocessSuffix) src/FullyDiff/ME/A2.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(ObjectSuffix): src/FullyDiff/ME/A1.cpp $(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/A1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(DependSuffix): src/FullyDiff/ME/A1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(DependSuffix) -MM src/FullyDiff/ME/A1.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(PreprocessSuffix): src/FullyDiff/ME/A1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_A1.cpp$(PreprocessSuffix) src/FullyDiff/ME/A1.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(ObjectSuffix): src/FullyDiff/ME/A1Counter.cpp $(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/A1Counter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(DependSuffix): src/FullyDiff/ME/A1Counter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(DependSuffix) -MM src/FullyDiff/ME/A1Counter.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(PreprocessSuffix): src/FullyDiff/ME/A1Counter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_A1Counter.cpp$(PreprocessSuffix) src/FullyDiff/ME/A1Counter.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(ObjectSuffix): src/FullyDiff/ME/RCounterX.cpp $(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/RCounterX.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(DependSuffix): src/FullyDiff/ME/RCounterX.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(DependSuffix) -MM src/FullyDiff/ME/RCounterX.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(PreprocessSuffix): src/FullyDiff/ME/RCounterX.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterX.cpp$(PreprocessSuffix) src/FullyDiff/ME/RCounterX.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(ObjectSuffix): src/FullyDiff/ME/RCounterY.cpp $(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/RCounterY.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(DependSuffix): src/FullyDiff/ME/RCounterY.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(DependSuffix) -MM src/FullyDiff/ME/RCounterY.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(PreprocessSuffix): src/FullyDiff/ME/RCounterY.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterY.cpp$(PreprocessSuffix) src/FullyDiff/ME/RCounterY.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(ObjectSuffix): src/FullyDiff/ME/RCounterXY.cpp $(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/RCounterXY.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(DependSuffix): src/FullyDiff/ME/RCounterXY.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(DependSuffix) -MM src/FullyDiff/ME/RCounterXY.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(PreprocessSuffix): src/FullyDiff/ME/RCounterXY.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_RCounterXY.cpp$(PreprocessSuffix) src/FullyDiff/ME/RCounterXY.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(ObjectSuffix): src/FullyDiff/ME/A3.cpp $(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/A3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(DependSuffix): src/FullyDiff/ME/A3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(DependSuffix) -MM src/FullyDiff/ME/A3.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(PreprocessSuffix): src/FullyDiff/ME/A3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_A3.cpp$(PreprocessSuffix) src/FullyDiff/ME/A3.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(ObjectSuffix): src/FullyDiff/ME/RQED.cpp $(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/RQED.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(DependSuffix): src/FullyDiff/ME/RQED.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(DependSuffix) -MM src/FullyDiff/ME/RQED.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(PreprocessSuffix): src/FullyDiff/ME/RQED.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_RQED.cpp$(PreprocessSuffix) src/FullyDiff/ME/RQED.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(ObjectSuffix): src/FullyDiff/ME/ROK.cpp $(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/ROK.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(DependSuffix): src/FullyDiff/ME/ROK.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(DependSuffix) -MM src/FullyDiff/ME/ROK.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(PreprocessSuffix): src/FullyDiff/ME/ROK.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_ROK.cpp$(PreprocessSuffix) src/FullyDiff/ME/ROK.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(ObjectSuffix): src/FullyDiff/ME/R.cpp $(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/R.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(DependSuffix): src/FullyDiff/ME/R.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(DependSuffix) -MM src/FullyDiff/ME/R.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(PreprocessSuffix): src/FullyDiff/ME/R.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_R.cpp$(PreprocessSuffix) src/FullyDiff/ME/R.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(ObjectSuffix): src/FullyDiff/ME/SV.cpp $(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/FullyDiff/ME/SV.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(DependSuffix): src/FullyDiff/ME/SV.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(DependSuffix) -MM src/FullyDiff/ME/SV.cpp

$(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(PreprocessSuffix): src/FullyDiff/ME/SV.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FullyDiff_ME_SV.cpp$(PreprocessSuffix) src/FullyDiff/ME/SV.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Release/


