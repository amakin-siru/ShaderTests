#version 320 es
#define _int_0 _GLF_uniform_int_values[0]
#define _int_10 _GLF_uniform_int_values[1]
#define _int_1 _GLF_uniform_int_values[2]
#define _int_2 _GLF_uniform_int_values[3]

precision highp float;

precision highp int;

// Contents of _GLF_uniform_int_values: [0, 10, 1, 2]
layout(set = 0, binding = 0) uniform buf0 {
 int _GLF_uniform_int_values[4];
};
layout(location = 0) out vec4 _GLF_color;

void main()
{
 int a = _int_0;
 int b = _int_10;
 int c = _int_1;
 while(a < b)
  {
   a ++;
   if(c == _int_1)
    {
     c *= _int_2;
    }
   else
    {
     if(true)
      {
       continue;
      }
    }
  }
 if(a == b && c == _int_2)
  {
   _GLF_color = vec4(_int_1, _int_0, _int_0, _int_1);
  }
 else
  {
   _GLF_color = vec4(_int_0);
  }
}
