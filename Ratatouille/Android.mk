LOCAL_PATH := $(call my-dir) 
include $(CLEAR_VARS) 
LOCAL_MODULE := Ratatouille
LOCAL_SRC_FILES := Ratatouille.cpp gx_resampler.cc zita-resampler-1.1.0/resampler.cc zita-resampler-1.1.0/resampler-table.cc RtNeuralModel.cpp NeuralModel.cpp NAM/dsp.cpp NAM/activations.cpp NAM/get_dsp.cpp NAM/lstm.cpp NAM/wavenet.cpp NAM/convnet.cpp NAM/util.cpp
LOCAL_C_INCLUDES := ../NeuralAmpModelerCore/NAM/  ../NeuralAmpModelerCore/Dependencies/eigen/  ../NeuralAmpModelerCore/Dependencies/nlohmann/  ../RTNeural/RTNeural/  ../FFTConvolver/  zita-resampler-1.1.0/
LOCAL_F_FLAGS := -Ofast
LOCAL_CPPFLAGS := -DNDEBUG -Ofast -DRTNEURAL_DEFAULT_ALIGNMENT=32 -DRTNEURAL_USE_EIGEN=1 -DRTNEURAL_NAMESPACE=RTNeural         -DDSP_SAMPLE_FLOAT -DNAM_SAMPLE_FLOAT -Dneural_amp_modeler_EXPORTS 
LOCAL_LDFLAGS := -llog
LOCAL_LDLIBS := -llog -lRTNeural -lsndfile -lfftw3 -lzita-convolver -lsamplerate -lfftw3f -lfftconvolver 

LOCAL_CPP_FEATURES := exceptions
include $(BUILD_SHARED_LIBRARY) 
