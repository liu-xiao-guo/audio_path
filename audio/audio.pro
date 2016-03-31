TEMPLATE = aux
TARGET = audio

#SUBDIRS += sounds

RESOURCES += audio.qrc

QML_FILES += $$files(*.qml,true) \
             $$files(*.js,true) \
             sounds

#QML_SOUNDS += $$files(sounds/*.mp3,true) \
#             $$files(sounds/*.wav,true)

CONF_FILES +=  audio.apparmor \
               audio.desktop \
               audio.png

OTHER_FILES += $${CONF_FILES} \
               $${QML_FILES}

#specify where the qml/js files are installed to
qml_files.path = /audio
qml_files.files += $${QML_FILES}

#qm_sounds.path = /audio/sounds
#qm_sounds.files += $${QML_SOUNDS}

#specify where the config files are installed to
config_files.path = /audio
config_files.files += $${CONF_FILES}

INSTALLS+=config_files qml_files

