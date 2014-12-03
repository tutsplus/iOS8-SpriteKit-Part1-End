void main()
{
    gl_FragColor = texture2D(myTexture,v_tex_coord) * vec4(1, 0.2, 0.2, 1);
}