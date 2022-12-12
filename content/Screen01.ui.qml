/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import QtQuick3D
import RobotDemo3D
import Quick3DAssets.Scene
import QtQuick.Timeline

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene

            PerspectiveCamera {
                id: sceneCamera
                x: 1.339
                y: 129.753
                z: 233.15338
            }

            Scene {
                id: robot
                eulerRotation.y: slider.value
            }


            DirectionalLight {
                id: lightDirectional
                x: -352.737
                y: -58.289
                brightness: 3.72
                eulerRotation.z: -26.53669
                eulerRotation.y: -26.53671
                eulerRotation.x: -6.36529
                z: 211.84549
            }

        }

        Slider {
            id: slider
            opacity: 0
            anchors.fill: parent
            to: 180
            from: -180
            value: 0.5
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 1000
                running: true
                loops: 1
                to: 1000
                from: 0
            }
        ]
        endFrame: 1000
        startFrame: 0
        enabled: true

        KeyframeGroup {
            target: sceneCamera
            property: "x"
            Keyframe {
                frame: 600
                value: -1.13554
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "y"
            Keyframe {
                frame: 600
                value: -8.86087
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "z"
            Keyframe {
                frame: 600
                value: 357.98859
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:5}D{i:10}
}
##^##*/
