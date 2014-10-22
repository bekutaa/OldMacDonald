
public void setup() 
{  
	for(int i = 0; i < 2; i++)
	{
		Farm barn = new Farm();
		barn.animalSounds();
	}
}

interface Animal
{
	public String getSound();
	public String getType();
}

//	FFFFF	  A 	RRRR 	MM   MM
//	F 		 A A 	R 	R 	M M M M
//	FFF 	AAAAA	RRRR 	M  M  M
//	F 		A   A 	RRR 	M     M
//	F 		A   A 	R  R 	M 	  M

class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("cow","Elsie","moo");          
   aBunchOfAnimals[1] = new Chick("chick","cheep","cluck");
   aBunchOfAnimals[2] = new Pig("pig","oink");    
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  } 
}

//		 CCCC	 OOO 	W	  W 
//		C 		O   O 	W	  W
//		C 		O   O 	W  W  W
//		C 		O   O 	W  W  W
//		 CCCC 	 OOO 	 WW WW


class Cow implements Animal 
{     
  protected String myType;     
  protected String mySound;  

  public Cow(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }

  public Cow()
  {
     myType = "unknown";         
     mySound = "unknown";     
  }

  public String getSound()
  {
  	return mySound;
  }     
  public String getType()
  {
  	return myType;
  } 
}

class NamedCow extends Cow
{
	private String cowName;

	public NamedCow(String type, String nameOfCow, String sound)
	{
		myType = type;
		mySound = sound;
		cowName = nameOfCow;
	}
	public String getName()
	{
		return cowName;
	}

}

//		PPP		IIIII	 GGGG
//		P  P 	  I 	G
//		PPP		  I 	G  GG
//		P 		  I 	G   G
//		P 		IIIII	 GGGG

class Pig implements Animal
{
	private String myType;
	private String mySound;

	public Pig(String type, String sound)
	{
		myType = type;
		mySound = sound;
	}

	public Pig()
	{
		myType = "unknown";
		mySound = "unknown";
	}

	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}

//		 CCCC	H   H 	IIIII	 CCCC	K  K
//		C 		H   H 	  I 	C 		K K
//		C 		HHHHH 	  I 	C 		KK
//		C 		H   H 	  I 	C 		K K
//		 CCCC 	H   H 	IIIII 	 CCCC	K  K

class Chick implements Animal
{
	private String myType;
	private String mySound;

	public Chick(String type, String sound, String sound2)
	{
		myType = type;
		if(Math.random() > 0.5)
		{
			mySound = sound;
		}
		else
		{
			mySound = sound2;
		}
	}

	public Chick()
	{
		myType = "unknown";
		mySound = "unknown";
	}

	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}