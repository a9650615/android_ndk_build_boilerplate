//
// Created by 蔡銘祐 on 2019/6/28.
//

#include <jni.h>
#include <stdio.h>
#include <opencv2/opencv.hpp>

#ifdef __cplusplus
extern "C" {
#endif

jstring Java_com_birdyo_usbcamera_view_USBCameraActivity_getJNi(JNIEnv *env, jobject instance) {
    printf("invoke get in c++, with openCV\n");
    return env->NewStringUTF("Hello from JNI in UsbCamera.cpp!");
}

#ifdef __cplusplus
}
#endif