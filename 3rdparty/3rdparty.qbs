import qbs
import Stm32Library

Stm32Library {

    Group {
        name: "sources"
        prefix: "**/"
        files: [
            "*.c",
            "*.cpp",
            "*.h",
            "*.s"
        ]
    }

    cpp.defines: [
        "USE_STDPERIPH_DRIVER"
    ]
    cpp.includePaths: [
        "sources",
        "system",
        "STM32F2xx_StdPeriph_Driver/inc/",
        "../src"
    ]

    Export {
        Depends { name: "cpp" }
        cpp.defines: [
            "USE_STDPERIPH_DRIVER"
        ]
        cpp.includePaths: [
            "sources",
            "system",
            "STM32F2xx_StdPeriph_Driver/inc/",
        ]
    }
}


