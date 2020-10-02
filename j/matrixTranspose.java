import java.util.*;
import java.lang.*;
import java.io.*;
class matrixTranspose
{
  public static void main(String args[])
  {
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter the size of the matrix in the order of rows and then columns");
    int m,n;
    m=sc.nextInt();
    n=sc.nextInt();
    int a[][]=new int[m][n];
    for(int i=0;i<m;i++)
    {
      for(int j=0;j<n;j++)
      a[i][j]=sc.nextInt();
    }
    System.out.println("Entered Matrix is :-");
    for(int i =0;i<m;i++)
    {
     for(int j=0;j<n;j++)
     System.out.print(a[i][j]);
     System.out.println();
     }
    int b[][]=new int[m][n];
    int k=0;
    for(int i=0;i<m;i++)
    {
     for(int j=0;j<n;j++)
      b[j][k]=a[i][j];
      k++;
    }
    System.out.println("Transposed Matrix is :- ");
    for(int i=0;i<m;i++)
    {
     for(int j=0;j<n;j++)
     System.out.print(b[i][j]);
     System.out.println();
     
     }
    }
   }
      
