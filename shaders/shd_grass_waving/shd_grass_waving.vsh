attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

uniform float u_time;
uniform float u_strength;

void main()
{
    vec3 pos = in_Position;

    // Only move top of sprite
    float offset = sin(u_time + pos.x * 0.05) * u_strength;

    pos.x += offset * (pos.y / 64.0); // 64 = sprite height

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(pos, 1.0);
    v_vTexcoord = in_TextureCoord;
}