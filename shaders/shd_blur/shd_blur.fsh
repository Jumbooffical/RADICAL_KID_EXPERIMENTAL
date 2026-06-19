varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 resolution;
uniform float blur_strength;

void main() {
    vec2 px = blur_strength / resolution;

    vec4 blur =
        texture2D(gm_BaseTexture, v_vTexcoord) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2( 1,  0)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2(-1,  0)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2( 0,  1)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2( 0, -1)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2( 1,  1)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2(-1,  1)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2( 1, -1)) +
        texture2D(gm_BaseTexture, v_vTexcoord + px * vec2(-1, -1));

    blur /= 9.0;

    gl_FragColor = blur * v_vColour;
}