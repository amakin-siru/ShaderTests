#version 320 es
#define _int_1 _GLF_uniform_int_values[0]
#define _int_0 _GLF_uniform_int_values[1]

precision highp float;

precision highp int;

// Contents of _GLF_uniform_int_values: [1, 0]
layout(set = 0, binding = 0) uniform buf0 {
 int _GLF_uniform_int_values[2];
};
layout(location = 0) out vec4 _GLF_color;

// Contents of resolution: 256.0
layout(push_constant) uniform buf_push {
 float resolution;
};
int func(float x)
{
 int a = 1;
 for(int i = 0; i < 2; i ++)
  {
   while(a < 200)
    {
     if(float(a) > x)
      {
       return _int_1;
      }
     a ++;
    }
  }
 return 0;
}
void main()
{
 if(func(resolution) == 0)
  {
   _GLF_color = vec4(_int_1, _int_0, _int_0, _int_1);
  }
 else
  {
   _GLF_color = vec4(_int_0);
  }
}
