import qbs
import Stm32Application

Stm32Application {

    Depends { name: "3rdparty" }
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

    cpp.linkerScripts: "../ldscripts/stm32_flash.ld"
    cpp.includePaths: base.concat(".")
}
