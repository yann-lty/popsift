@echo off
echo Downloading CUDA toolkit 9
@rem appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_windows -FileName cuda_9.1.85_windows.exe
dir
@rem echo Installing CUDA toolkit 9
@rem cuda_9.1.85_windows.exe -s nvcc_9.1 ^
                           cublas_9.1 ^
                           cublas_dev_9.1 ^
                           cudart_9.1 ^
                           curand_9.1 ^
                           curand_dev_9.1

@rem echo CUDA toolkit 9 installed

@rem dir "%ProgramFiles%"

set CUDA_PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.1
set CUDA_BIN_PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.1\bin

set PATH=%CUDA_BIN_PATH%;%CUDA_PATH%\libnvvp;%PATH%

nvcc -V
