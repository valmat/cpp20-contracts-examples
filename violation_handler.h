#pragma once

#include <iostream>
#include "contract"

void violation_handler(const std::contract_violation& info)
{
    std::cerr << "line_number     : " << info.line_number()     << std::endl;
    std::cerr << "file_name       : " << info.file_name()       << std::endl;
    std::cerr << "function_name   : " << info.function_name()   << std::endl;
    std::cerr << "comment         : " << info.comment()         << std::endl;
    std::cerr << "assertion_level : " << info.assertion_level() << std::endl;
    std::cerr << std::endl;
}
