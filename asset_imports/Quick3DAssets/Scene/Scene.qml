import QtQuick
import QtQuick3D

Node {
    // Materials
    PrincipledMaterial {
        id: glass_material
        baseColor: "#40e53d06"
        baseColorMap: Texture {
            source: "maps/glass_baseColor.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        opacityChannel: Material.A
        metalness: 0.781762
        roughness: 0.269015
        normalMap: Texture {
            source: "maps/glass_normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        normalStrength: 0.254219
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Blend
        transmissionFactor: 1
    }
    PrincipledMaterial {
        id: main_mat_material
        baseColorMap: Texture {
            source: "maps/main_mat_baseColor.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        opacityChannel: Material.A
        metalnessMap: Texture {
            source: "maps/main_mat_metallicRoughness.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        metalnessChannel: Material.B
        roughnessMap: Texture {
            source: "maps/main_mat_metallicRoughness.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        roughnessChannel: Material.G
        metalness: 1
        roughness: 1
        normalMap: Texture {
            source: "maps/main_mat_normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        occlusionMap: Texture {
            source: "maps/main_mat_metallicRoughness.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        occlusionChannel: Material.R
        cullMode: Material.NoCulling
        alphaMode: PrincipledMaterial.Opaque
        clearcoatAmount: 0.488397
        clearcoatRoughnessAmount: 1
        clearcoatMap: Texture {
            source: "maps/main_mat_clearcoat.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        clearcoatRoughnessMap: Texture {
            source: "maps/main_mat_clearcoat_roughness.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        clearcoatNormalMap: Texture {
            source: "maps/main_mat_clearcoat_normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
    }
    PrincipledMaterial {
        id: _material
        metalness: 1
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    // end of Materials

    Node {
        id: sketchfab_model
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        Node {
            id: test_robot_baby_obj_cleaner_materialmerger_gles
            Model {
                id: object_2
                source: "meshes/object_2.mesh"
                materials: [
                    glass_material
                ]
            }
            Model {
                id: object_3
                source: "meshes/object_3.mesh"
                materials: [
                    main_mat_material
                ]
            }
            Model {
                id: object_4
                source: "meshes/object_4.mesh"
                materials: [
                    main_mat_material
                ]
            }
            Model {
                id: object_5
                source: "meshes/object_5.mesh"
                materials: [
                    main_mat_material
                ]
            }
            Model {
                id: object_6
                source: "meshes/object_6.mesh"
                materials: [
                    main_mat_material
                ]
            }
            Model {
                id: object_7
                source: "meshes/object_7.mesh"
                materials: [
                    main_mat_material
                ]
            }
        }
    }
}
