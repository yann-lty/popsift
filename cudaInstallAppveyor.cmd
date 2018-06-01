@echo off
echo Downloading CUDA toolkit 9
https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_win10
appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_win10 -FileName cuda_9.2.88_win10.exe
dir
echo Installing CUDA toolkit 9
cuda_9.2.88_windows.exe -s nvcc_9.2 ^
                           cublas_9.2 ^
                           cublas_dev_9.2 ^
                           cudart_9.2 ^
                           curand_9.2 ^
                           curand_dev_9.2

echo CUDA toolkit 9 installed

dir "%ProgramFiles%"

set CUDA_PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2
set CUDA_BIN_PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin

set PATH=%CUDA_BIN_PATH%;%CUDA_PATH%\libnvvp;%PATH%

nvcc -V
