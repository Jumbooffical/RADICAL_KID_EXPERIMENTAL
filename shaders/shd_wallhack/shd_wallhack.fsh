varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution;

uniform float u_grid;
uniform float u_thickness;

uniform vec2 u_offset;

uniform vec3 u_rgb;

uniform float u_strength;

void main()
{
    vec4 tex = texture2D(gm_BaseTexture, v_vTexcoord);
    vec2 screenUV = (gl_FragCoord.xy / u_resolution) + u_offset;
    vec2 grid = fract(screenUV * u_grid);

    float line = 0.0;

    line += step(grid.x, u_thickness);
    line += step(grid.y, u_thickness);

    line = clamp(line, 0.0, 1.0);

    vec3 base = tex.rgb * 0.03;

    vec3 glow = u_rgb * line;

	vec3 xray = base + glow;

	vec3 finalCol = mix(tex.rgb, xray, u_strength);
	gl_FragColor = vec4(finalCol, tex.a);
}