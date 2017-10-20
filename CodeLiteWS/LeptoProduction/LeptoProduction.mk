##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=LeptoProduction
ConfigurationName      :=Debug
WorkspacePath          :=/home/Felix/Physik/PhD/CodeLiteWS
ProjectPath            :=/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Felix Hekhorn
Date                   :=20/10/17
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
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LeptoProduction.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := `lhapdf-config --ldflags` $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o $(IntermediateDirectory)/src_Pdf_cteq3.f.o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o $(IntermediateDirectory)/src_Pdf_grv94.f.o $(IntermediateDirectory)/src_Pdf_mortungb.f.o 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)m $(LibrarySwitch)gsl $(LibrarySwitch)gslcblas $(LibrarySwitch)gfortran $(LibrarySwitch)boost_timer $(LibrarySwitch)boost_system $(LibrarySwitch)boost_filesystem $(LibrarySwitch)dvegas $(LibrarySwitch)rk 
ArLibs                 :=  "m" "gsl" "gslcblas" "gfortran" "libboost_timer" "libboost_system" "libboost_filesystem" "dvegas" "rk" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++11 `lhapdf-config --cflags` -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
DSSV2014_GRIDS:=/home/Felix/Physik/PhD/PDF/DSSV2014/grids/
GRSV96_GRIDS:=/home/Felix/Physik/PhD/PDF/GRSV96/
Objects0=$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_Integration.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) 



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
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug
PrePreBuild: $(IntermediateDirectory)/src_Pdf_all.d
$(IntermediateDirectory)/src_Pdf_all.d: $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o\
					$(IntermediateDirectory)/src_Pdf_cteq3.f.o\
					$(IntermediateDirectory)/src_Pdf_grsvpol.f.o\
					$(IntermediateDirectory)/src_Pdf_grv94.f.o\
					$(IntermediateDirectory)/src_Pdf_mortungb.f.o
	@echo "" > $(IntermediateDirectory)/src_Pdf_all.d

$(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o: $(IntermediateDirectory)/.d src/Pdf/DSSV_gluon_update.f
	gfortran -c src/Pdf/DSSV_gluon_update.f -g -w -o $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o

$(IntermediateDirectory)/src_Pdf_cteq3.f.o: $(IntermediateDirectory)/.d src/Pdf/cteq3.f
	gfortran -c src/Pdf/cteq3.f -g -w -o $(IntermediateDirectory)/src_Pdf_cteq3.f.o

$(IntermediateDirectory)/src_Pdf_grsvpol.f.o: $(IntermediateDirectory)/.d src/Pdf/grsvpol.f
	gfortran -c src/Pdf/grsvpol.f -g -w -o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o

$(IntermediateDirectory)/src_Pdf_grv94.f.o: $(IntermediateDirectory)/.d src/Pdf/grv94.f
	gfortran -c src/Pdf/grv94.f -g -w -o $(IntermediateDirectory)/src_Pdf_grv94.f.o

$(IntermediateDirectory)/src_Pdf_mortungb.f.o: $(IntermediateDirectory)/.d src/Pdf/mortungb.f
	gfortran -c src/Pdf/mortungb.f -g -w -o $(IntermediateDirectory)/src_Pdf_mortungb.f.o

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

$(IntermediateDirectory)/src_Common_Integration.cpp$(ObjectSuffix): src/Common/Integration.cpp $(IntermediateDirectory)/src_Common_Integration.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Common/Integration.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Common_Integration.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Common_Integration.cpp$(DependSuffix): src/Common/Integration.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Common_Integration.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Common_Integration.cpp$(DependSuffix) -MM src/Common/Integration.cpp

$(IntermediateDirectory)/src_Common_Integration.cpp$(PreprocessSuffix): src/Common/Integration.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Common_Integration.cpp$(PreprocessSuffix) src/Common/Integration.cpp

$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix): src/Inclusive/IntKer.cpp $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Inclusive/IntKer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix): src/Inclusive/IntKer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(DependSuffix) -MM src/Inclusive/IntKer.cpp

$(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(PreprocessSuffix): src/Inclusive/IntKer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(PreprocessSuffix) src/Inclusive/IntKer.cpp

$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix): src/Common/ME/BQED.cpp $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Common/ME/BQED.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix): src/Common/ME/BQED.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(DependSuffix) -MM src/Common/ME/BQED.cpp

$(IntermediateDirectory)/src_Common_ME_BQED.cpp$(PreprocessSuffix): src/Common/ME/BQED.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(PreprocessSuffix) src/Common/ME/BQED.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


