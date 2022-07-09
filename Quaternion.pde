class Quaternion
{
  	float a, b, c, d;
  
	Quaternion(float a, float b, float c, float d)
	{
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
	}

	String toString()
	{
		return this.a + " + " + this.b + "i + " + this.c + "j + " + this.d + "k\n";
	}

	Quaternion add(Quaternion a)
	{
		return new Quaternion (
			this.a + a.a,
			this.b + a.b,
			this.c + a.c,
			this.d + a.d
		);
	}

	Quaternion mult(Quaternion a)
	{
		return new Quaternion (
			this.a * a.a - this.b * a.b - this.c * a.c - this.d * a.d,
			this.a * a.b + this.b * a.a + this.c * a.d - this.d * a.c,
			this.a * a.c - this.b * a.d + this.c * a.a + this.d * a.b,
			this.a * a.d + this.b * a.c - this.c * a.b + this.d * a.a
		);
	}

	Quaternion sq()
	{
		return this.mult(this);
	}

	double magSq()
	{
		return this.a * this.a + this.b * this.b + this.c * this.c + this.d * this.d;
	}
}
