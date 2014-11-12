public class NameTest
{
   public static void main(String[] args)
   {
       Name myName = new Name("Wojtek", "Pawel", "Stasinski");
       Name yourName = new Name("Some", "Guy");

       /*Name aName = new Name("Trololo");
       Name someName = new Name();

       System.out.println("myName: " + myName.toString());
       System.out.println("yourName: " + yourName.toString());
       System.out.println("aName: " + aName.toString());
       System.out.println("someName: " + someName.toString());*/

       System.out.println("myName: " + myName.getFirst());
       yourName.setLast("Dupa");
       System.out.println("yourName: " + yourName.toString());

   }
}