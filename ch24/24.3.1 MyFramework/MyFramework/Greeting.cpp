//
//  Greeting.cpp
//  HelloWorld
//
//  Created by 关东升 on 2017-1-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//
#include "Greeting.h"
#include <iostream>

using namespace std;

const char *sayHello(const char *greeting, const char *name) {

    string strGreeting(greeting);
    string strName(name);
    string str = "Hi," + strName + " " + strGreeting;

    char *result = strcpy((char *) malloc(str.length() + 1), str.c_str());

    return result;

}