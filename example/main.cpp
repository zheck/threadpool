//
//  main.cpp
//  threadpool
//
//  Created by zheck on 02/06/15.
//  Copyright (c) 2015 zheck. All rights reserved.
//

#include <iostream>
#include <unistd.h>

#include "ThreadPool.hpp"

void hello(void * data)
{
    std::string *str = static_cast<std::string *>(data);

    sleep(1);
    usleep(random() % 300000);
    std::cout << "Executed: " << str->c_str() << std::endl;
}

int main(int argc, const char * argv[]) {
    ThreadPool pool(4);
    pool.init();

    for (int i = 0; i < 10; ++i) {
        std::string * str = new std::string("task: " + std::to_string(i));
        pool.addTask(new Task(&hello, str));
    }
    sleep(5);
    return 0;
}
