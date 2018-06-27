##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Py27
ProjectName            :=LeptoProduction
ConfigurationName      :=Py27
WorkspacePath          :=/home/Felix/Physik/PhD/CodeLiteWS
ProjectPath            :=/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction
IntermediateDirectory  :=./Py27
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Felix Hekhorn
Date                   :=27/06/18
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).so
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LeptoProduction.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := -Wl,--export-dynamic, -O3 `lhapdf-config --ldflags` $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o $(IntermediateDirectory)/src_Pdf_cteq3.f.o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o $(IntermediateDirectory)/src_Pdf_grv94.f.o $(IntermediateDirectory)/src_Pdf_mortungb.f.o
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/usr/include/python2.7 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)python2.7 $(LibrarySwitch)boost_python $(LibrarySwitch)m $(LibrarySwitch)gsl $(LibrarySwitch)gslcblas $(LibrarySwitch)gfortran $(LibrarySwitch)boost_system $(LibrarySwitch)boost_filesystem $(LibrarySwitch)dvegas $(LibrarySwitch)rk $(LibrarySwitch)yaml-cpp 
ArLibs                 :=  "python2.7" "boost_python" "m" "gsl" "gslcblas" "gfortran" "libboost_system" "libboost_filesystem" "dvegas" "rk" "yaml-cpp" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++11 `lhapdf-config --cflags` -O3 -Wall  -fPIC $(Preprocessors)
CFLAGS   :=  -O3 -Wall  -fPIC $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/src_Python.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_InclusiveLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Pdf_PdfWrapper.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractLeptoProduction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_AbstractIntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_IntKer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Common_ME_BQED.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_IntA2.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_IntA1.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Inclusive_ME_SV.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_Inclusive_ME_IntR.cpp$(ObjectSuffix) 



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
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "/home/Felix/Physik/PhD/CodeLiteWS/.build-py27"
	@echo rebuilt > "/home/Felix/Physik/PhD/CodeLiteWS/.build-py27/LeptoProduction"

MakeIntermediateDirs:
	@test -d ./Py27 || $(MakeDirCommand) ./Py27


$(IntermediateDirectory)/.d:
	@test -d ./Py27 || $(MakeDirCommand) ./Py27
PrePreBuild: $(IntermediateDirectory)/src_Pdf_all.d
$(IntermediateDirectory)/src_Pdf_all.d: $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o\
					$(IntermediateDirectory)/src_Pdf_cteq3.f.o\
					$(IntermediateDirectory)/src_Pdf_grsvpol.f.o\
					$(IntermediateDirectory)/src_Pdf_grv94.f.o\
					$(IntermediateDirectory)/src_Pdf_mortungb.f.o
	@echo "" > $(IntermediateDirectory)/src_Pdf_all.d

$(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o: $(IntermediateDirectory)/.d src/Pdf/DSSV_gluon_update.f
	gfortran -c src/Pdf/DSSV_gluon_update.f -O3 -fPIC -w -o $(IntermediateDirectory)/src_Pdf_DSSV_gluon_update.f.o

$(IntermediateDirectory)/src_Pdf_cteq3.f.o: $(IntermediateDirectory)/.d src/Pdf/cteq3.f
	gfortran -c src/Pdf/cteq3.f -O3 -fPIC -w -o $(IntermediateDirectory)/src_Pdf_cteq3.f.o

$(IntermediateDirectory)/src_Pdf_grsvpol.f.o: $(IntermediateDirectory)/.d src/Pdf/grsvpol.f
	gfortran -c src/Pdf/grsvpol.f -O3 -fPIC -w -o $(IntermediateDirectory)/src_Pdf_grsvpol.f.o

$(IntermediateDirectory)/src_Pdf_grv94.f.o: $(IntermediateDirectory)/.d src/Pdf/grv94.f
	gfortran -c src/Pdf/grv94.f -O3 -fPIC -w -o $(IntermediateDirectory)/src_Pdf_grv94.f.o

$(IntermediateDirectory)/src_Pdf_mortungb.f.o: $(IntermediateDirectory)/.d src/Pdf/mortungb.f
	gfortran -c src/Pdf/mortungb.f -O3 -fPIC -w -o $(IntermediateDirectory)/src_Pdf_mortungb.f.o

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_Python.cpp$(ObjectSuffix): src/Python.cpp $(IntermediateDirectory)/src_Python.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/Felix/Physik/PhD/CodeLiteWS/LeptoProduction/src/Python.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Python.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Python.cpp$(DependSuffix): src/Python.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Python.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Python.cpp$(DependSuffix) -MM src/Python.cpp

$(IntermediateDirectory)/src_Python.cpp$(PreprocessSuffix): src/Python.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Python.cpp$(PreprocessSuffix) src/Python.cpp

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


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Py27/


