
out:GlShader.o glad.o stb_image.o
	g++ -g -o out GlShader.o glad.o stb_image.o -lGLEW -lglfw3 -lGL -lX11 -lXxf86vm -lpthread -ldl -lXrandr -lXinerama -lXcursor --std=c++11
GlShader.o:Shader.h GlShader.cpp 
	g++ -g -c GlShader.cpp
glad.o:glad.c 
	g++ -g -c glad.c
stb_image.o:stb_image.cpp stb_image.h
	g++ -g -c stb_image.cpp
clean:
	rm -f *.o out