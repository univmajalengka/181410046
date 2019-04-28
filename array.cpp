#include <iostream>
using namespace std;
int main()
{
	int a [5][8], b[5][8], c[5][8];
	cout<<"Masukan Array #1:"<<endl;
	for (int i = 0; i < 5; i++)
	{
		for (int x = 0; x < 8; x++)
		{
			cin>>a[i][x];
		}
	}
	
	cout<<"Masukan array #2:"<<endl;
	for (int i = 0; i < 5; i++)
	{
		for (int x = 0; x < 8; x++)
		{
			cin>>b[i][x];
		}
	}

	//Hitungan
	for (int i = 0; i < 5; i++)
	{
		for (int x = 0; x < 8; x++) 
		{
			c[i][x] = a[i][x] + b[i][x];
		}
	}
	
	//Keluaran	
	cout<<"Keluaraan:"<<endl;
	for (int i = 0; i < 5; i++)
	{
		for (int x = 0 ; x < 8; x++)
		{
			cout<<c[i][x]<<"|";
		}
	cout<<"\n";
	}
	return 0;
}
