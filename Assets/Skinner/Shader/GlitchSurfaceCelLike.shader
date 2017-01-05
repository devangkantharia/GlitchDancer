// Custom surface shader for Skinner Glitch
Shader "Skinner/Glitch (CelLike)"
{
    Properties
    {
        _Albedo("Albedo", Color) = (0.5, 0.5, 0.5)

        [Header(Self Illumination)]
        _BaseHue("Base Hue", Range(0, 1)) = 0
        _HueRandomness("Hue Randomness", Range(0, 1)) = 0.2
        _Saturation("Saturation", Range(0, 1)) = 1
        _Brightness("Brightness", Range(0, 6)) = 0.8

        [Header(Color Modifier (By Time))]
        _ModDuration("Duration", Range(0, 1)) = 0.5
        _BrightnessOffs("Brightness Offset", Range(0, 6)) = 1.0
        _HueShift("Hue Shift", Range(-1, 1)) = 0.2

        [HideInInspector] _PositionBuffer("", 2D) = ""{}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        Cull Off
        CGPROGRAM
        #pragma surface surf CelLike2 vertex:vert nolightmap fullforwardshadows addshadow
        #pragma target 3.0
        #include "GlitchSurfaceCelLike.cginc"
        ENDCG
    }
}
