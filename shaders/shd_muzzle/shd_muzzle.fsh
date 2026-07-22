varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_white;

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    vec3 yellow_white = vec3(1.0, 1.0, 0.5);
	col.rgb = mix(col.rgb, yellow_white, u_white);

    gl_FragColor = col;
}
