#version 330 core
out vec4 FragColor;

in vec3 outColor;
in vec2 TexCoord;

uniform sampler2D ourTexture;

uniform sampler2D texture1;
uniform sampler2D texture2;
uniform float visibility;

void main()
{
    //FragColor = texture(ourTexture, TexCoord);
    FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), visibility);
}
