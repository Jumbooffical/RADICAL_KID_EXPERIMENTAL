varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 fog_color;
uniform float fog_strength;
uniform vec2 mouse_uv;
uniform float aspect;   // width / height

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    // Aspect-corrected UVs
    vec2 uv = v_vTexcoord;
    vec2 m  = mouse_uv;

    uv.x *= aspect;
    m.x  *= aspect;

    float dist = distance(uv, m);

    float fog = smoothstep(0.1, 0.3, dist * fog_strength);
    col.rgb = mix(col.rgb, fog_color, fog);

    gl_FragColor = col;
}
