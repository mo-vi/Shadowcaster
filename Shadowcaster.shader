Shader "My Shaders/Shadowcaster"
{
    SubShader
    {
        Tags
        {
            "Queue" = "Transparent"
            "LightMode" = "ShadowCaster"
        }
        
        Pass
        {
            CGPROGRAM
            #pragma vertex vertexFunction
            #pragma fragment fragmentFunction

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
            };

            v2f vertexFunction(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                return o;
            }

            fixed4 fragmentFunction(v2f i) : SV_Target
            {
                return 0;
            }
            ENDCG
        }
    }
}
