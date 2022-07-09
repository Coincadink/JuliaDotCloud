int julia(Quaternion z)
{
	int iteration = 0;
	int maxIter = 1000;

	while (z.magSq() < (r * r) && iteration < maxIter)
	{
		z = z.sq().add(c);

		iteration += 1;
	}

	if (iteration == maxIter)
	{
		return 0;
	}
	else
	{
		return iteration;
	}
}