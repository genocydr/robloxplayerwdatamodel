#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[1];
in vec4 POSITION;
in vec3 TEXCOORD0;
in vec4 TEXCOORD1;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec3 VARYING3;
out vec3 VARYING4;

void main()
{
    vec2 v0 = vec2(0.0);
    v0.x = TEXCOORD0.x;
    vec2 v1 = v0;
    v1.y = TEXCOORD0.y;
    vec4 v2 = vec4(POSITION.xyz, 1.0);
    gl_Position = (POSITION + (CB0[10] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v1;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = (POSITION.yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING3 = vec3(dot(CB0[25], v2), dot(CB0[26], v2), dot(CB0[27], v2));
    VARYING4 = CB0[11].xyz - POSITION.xyz;
}

