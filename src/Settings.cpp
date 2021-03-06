/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   Settings.cpp
 * Author: eugine
 *
 * Created on August 11, 2018, 6:14 PM
 */

#include "Settings.h"

Settings::Settings() {
}

Settings::Settings(const Settings& orig) {
}

Settings::~Settings() {
}

/**
 * Load settings from file
 * 
 * @return 
 */
int Settings::load() {
    int result = 0;
    //-- Каскады
    face_cascade_name = "data/lbpcascade_frontalface.xml";
    eyes_cascade_name = "data/haarcascade_eye_tree_eyeglasses.xml";
    //-- Алфавиты
    alfavit_eng = "abcdefghijklmnopqrstuvwxyz";
    alfavit_rus = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя";
    alfavit_rus_png = "data/alfavit_eng.png";
    alfavit_eng_png = "data/alfavit_rus.png";
    mouse_panel_png = "data/mousepanel.png";
    window_name = "PC control eyes";
    //-- Устанавливаем начальные значения
    glaz0 = 0;
    glaz1 = 0;
    glaz2 = 0;
    leftglaz = 0;
    rightglaz = 0;
    keynumberleft = 0;
    keynumberright = 0;
    regime = 1; //-- По-умолчанию - режим клавиатуры
    language = 1; //-- Язык по умолчанию - английский

    try {
        // Создаём поток
        ifstream FILE;
        // Открываем файл
        FILE.open("data/settings.dat", ios::in);
        char value[3];
        // Считываем данные
        FILE>>value;
        // Преобразуем в int
        glaztimekeyboard = atoi(value);
        FILE>>value;
        glaztime = atoi(value);
        FILE>>value;
        mousespeed = atoi(value);
        // Закрываем файл
        FILE.close();
        result = 1;
    } catch (int e) {
        cout << "Exception " << e << "\n";
    }
    return result;
}

/**
 * set counter for eyes in value
 * 
 * @param number eye's number
 * @param value new value
 * @return new value
 */
int Settings::setEye(int number, int value) {
    int* g = getEyePointer(number);
    *g = value;
    return *g;
}

/**
 * increase counter for eyes
 * 
 * @param number eye's number
 * @return new value
 */
int Settings::setEye(int number) {
    int* g = getEyePointer(number);
    *g = *g + 1;
    return *g;
}

/**
 * Get current value for an eye
 * 
 * @param eye's number 
 * @return value
 */
int Settings::getEye(int number) {
    int* g = getEyePointer(number);
    return *g;
}

int* Settings::getEyePointer(int number) {
    int* g;
    switch (number) {
        case 1:
        {
            g = &glaz1;
            break;
        }
        case 2:
        {
            g = &glaz2;
            break;
        }
        case 3:
        {
            g = &leftglaz;
            break;
        }
        case 4:
        {
            g = &rightglaz;
            break;
        }
        default:
        {
            g = &glaz0;
        }
    }
    return g;
}

/**
 * Change language
 * 
 * @return lang number
 */
int Settings::changeLanguage() {
    language = 3 - language;
    return language;
}

/**
 * Change language
 * 
 * @return lang number
 */
int Settings::getLanguage() {
    return language;
}

/**
 * Get letters for the current language
 * 
 * @return 
 */
String Settings::getAlfavit() {

}

/**
 * Get image of letters for the current language
 * 
 * @return 
 */
String Settings::getAlfavitImage() {
    String fileName;
    // Если текущая раскладка -- английская
    if (language == 1) {
        fileName = alfavit_eng_png;
    } else {
        // Отрисовка выбранной буквы, или пиктограммы
        fileName = alfavit_rus_png;
    }
    return fileName;
}
