import QtQuick 2.0
import Ubuntu.Components 1.1
import QtMultimedia 5.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "audio.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("Audio")

        SoundEffect {
            id: bubblepop
            source: "sounds/bubblepop.wav"
            volume: 1.0
        }

        MediaPlayer {
            id: backgroundMusic
            source: "sounds/background.mp3"
            autoPlay: true
            loops: MediaPlayer.Infinite
            volume: 1.0
        }

        Row {
            anchors.centerIn: parent
            Button {
                text: "Play bubble"

                onClicked: {
                    bubblepop.play();
                }
            }
        }

    }
}

