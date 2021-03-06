/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   Settings.h
 * Author: eugine
 *
 * Created on August 11, 2018, 6:14 PM
 */

#ifndef SETTINGS_H
#define SETTINGS_H
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <fstream>
#include <iostream>

using namespace std;
using namespace cv;

class Settings {
public:
    Settings();
    Settings(const Settings& orig);
    virtual ~Settings();
    int load();
    // Cascades
    String face_cascade_name;
    String eyes_cascade_name;
    //================== Глобальные переменные =====================
    int keynumberleft; // Номер позиции клавиши, когда закрыт левый глаз
    int keynumberright; // Номер позиции клавиши, когда закрыт правый глаз
    int regime; // Режим работы. 1 - клавиатура, 2 - мышь

    int glaztimekeyboard; // счётчик времени переключения раскладки клавиатуры
    int glaztime; // счётчик времени для срабатывания событий
    int mousespeed; // счётчик скорости передвижения мыши
    //-- Алфавиты
    String mouse_panel_png;
    String window_name;
    int setEye(int, int);
    int setEye(int);
    int getLanguage();
    int changeLanguage();
    int getEye(int);
    int getTime(int);
    String getAlfavit();
    String getAlfavitImage();
private:
    int language; // 1 - английский, 2 - русский
    int glaz0; // Счётчик, когда глаза не обнаружены (No eyes, 0)
    int glaz1; // Счётчик для одного глаза (One eye, 1)
    int glaz2; // Счётчик для двух глаз (Two eyes, 2)
    int leftglaz; // Условие, если это левый глаз (Left eye, 3)
    int rightglaz; // Условие, если это правый глаз (Right eye, 4)
    int* getEyePointer(int);
    String alfavit_eng;
    String alfavit_rus;
    String alfavit_rus_png;
    String alfavit_eng_png;
};

#endif /* SETTINGS_H */

