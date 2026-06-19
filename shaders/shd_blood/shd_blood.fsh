varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 fog_color;     // 0–1 range
uniform float fog_strength; // 0–1 intensity

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    float dist = distance(v_vTexcoord, vec2(0.5, 0.5));

    // Shape the vignette
    float fog_mask = smoothstep(0.2, 0.6, dist);

    // Apply intensity separately
    float fog = fog_mask * fog_strength;

    col.rgb = mix(col.rgb, fog_color, fog);
    gl_FragColor = col;
}