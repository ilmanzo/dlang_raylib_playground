import std.stdio;
import raylib;

struct Cat
{
    int x;
    int y;

    void draw() {
        // establish the origin
        rlPushMatrix();
        rlTranslatef(x, y, 0);

        // draw the head and ears
        DrawEllipse(0, 0, 50, 40, Colors.ORANGE);
        DrawTriangle(Vector2(0, -20), Vector2(-40, -50), Vector2(-20, 0), Colors.ORANGE);
        DrawTriangle(Vector2(0, -20), Vector2(20, 0), Vector2(40, -50), Colors.ORANGE);

        // draw eyes
        DrawCircleV(Vector2(-20, -15), 8, Colors.WHITE);
        DrawCircleV(Vector2(20, -15), 8, Colors.WHITE);
        DrawCircleV(Vector2(-20, -15), 3, Colors.BLACK);
        DrawCircleV(Vector2(20, -15), 3, Colors.BLACK);

        // nose
        DrawTriangle(Vector2(0, 0), Vector2(5, -5), Vector2(-5, -5), Colors.BLACK);
        DrawLineV(Vector2(0, 0), Vector2(0, 10), Colors.BLACK);
        DrawRing(Vector2(-10, 10), 7, 10, 0, 90, 10, Colors.BLACK);
        DrawRing(Vector2(10, 10), 7, 10, 0, -90, 10, Colors.BLACK);

        // whiskers
        DrawLineV(Vector2(10, 3), Vector2(70, -2), Colors.BLACK);
        DrawLineV(Vector2(10, 5), Vector2(70, 5), Colors.BLACK);
        DrawLineV(Vector2(10, 7), Vector2(70, 12), Colors.BLACK);
        DrawLineV(Vector2(-10, 3), Vector2(-70, -2), Colors.BLACK);
        DrawLineV(Vector2(-10, 5), Vector2(-70, 5), Colors.BLACK);
        DrawLineV(Vector2(-10, 7), Vector2(-70, 12), Colors.BLACK);

        // restore the original origin
        rlPopMatrix();
    }
}

struct MyThing // name this whatever you want
{
    int x;
    int y;

    void draw() {
        // insert your drawing code here, I'll just make a circle for now
        DrawCircle(x, y, 10, Colors.BLACK);
    }
}

void main()
{
    InitWindow(500, 500, "some stuff");
    SetTargetFPS(60);
    MyThing thing; // add one of your objects
    thing.x = 250; // put it in the middle of the screen
    thing.y = 250;
	Cat cat;
	cat.x = 100;
	cat.y=100;
    while(!WindowShouldClose)
    {

        BeginDrawing();
        ClearBackground(Colors.BLUE);
        thing.draw();
		cat.draw();
        EndDrawing();
    }
}