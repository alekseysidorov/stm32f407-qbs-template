import qbs

Project {
    name: "stm32-template"

    qbsSearchPaths: "qbs"

    references: [
        "3rdparty/3rdparty.qbs",
        "src/app.qbs",
    ]
}

