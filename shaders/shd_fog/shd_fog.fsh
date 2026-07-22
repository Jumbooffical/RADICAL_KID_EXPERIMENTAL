varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 fog_color;
uniform float fog_strength;
uniform float time;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);

    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));

    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(a, b, u.x) +
           (c - a) * u.y * (1.0 - u.x) +
           (d - b) * u.x * u.y;
}

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    vec2 center = vec2(0.5, 0.5);
    float dist = distance(v_vTexcoord, center);
    float n = noise(v_vTexcoord * 8.0 + time * 0.05);

    dist += (n - 0.5) * 0.12;

    float fog = smoothstep(0.15, 0.6, dist * fog_strength);
    col.rgb = mix(col.rgb, fog_color, fog);

    gl_FragColor = col;
}