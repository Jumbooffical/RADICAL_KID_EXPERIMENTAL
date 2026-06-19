varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 fog_color;
uniform float fog_strength;

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    float fog = clamp(v_vTexcoord.y * fog_strength, 0.0, 1.0);
    col.rgb = mix(col.rgb, fog_color, fog);

    gl_FragColor = col;
}