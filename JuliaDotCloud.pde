import peasy.*;
PeasyCam cam;

int DIM = 720;
int LIM = 10;

float r = 6;
Quaternion c = new Quaternion(-0.3, 0.8, 0.1, 0.2);

ArrayList<PVector> julia = new ArrayList<PVector>();

void setup()
{
    size(1000, 1000, P3D);
    cam = new PeasyCam(this, 500);

    for (int i = 0; i < DIM; i++)
    {
        for (int j = 0; j < DIM; j++)
        {
            for (int k = 0; k < DIM; k++)
            {
                Quaternion z = new Quaternion (
                    map(i, 0, DIM, -r, r),
                    map(j, 0, DIM, -r, r),
                    map(k, 0, DIM, -r, r),
                    0
                );

                float r = map(i, 0, DIM, -300, 300);
                float s = map(j, 0, DIM, -300, 300);
                float t = map(k, 0, DIM, -300, 300);

                if (julia(z) == LIM)
                {
                    julia.add(new PVector(r, s, t));
                }
            }
        }
    }
}

void draw()
{
    background(12);
    strokeWeight(1);
    stroke(255);
    
    for(PVector p : julia)
    {
        point(p.x, p.y, p.z);
    }
}