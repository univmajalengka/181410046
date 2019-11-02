#include <iostream>
#include <conio.h>
using namespace std;

int main()
{
	//Pendefinisian Array 3 Dimensi
	//& Pemberian Nilai Awal

	int huruf_A[2][8][8] =
	{
		{
			{0, 1, 1, 1, 1, 1, 0, 0},
			{0, 1, 0, 0, 0, 1, 0, 0},
			{0, 1, 0, 0, 0, 1, 0, 0},
			{1, 1, 1, 1, 1, 1, 1, 0},
			{1, 1, 0, 0, 0, 0, 1, 0},
			{1, 1, 0, 0, 0, 0, 1, 0},
			{1, 1, 0, 0, 0, 0, 1, 0},
			{0, 0, 0, 0, 0, 0, 0, 0}
		},
		{
			{1, 1, 1, 1, 1, 1, 0, 0},
			{1, 0, 0, 0, 0, 1, 0, 0},
			{1, 1, 0, 0, 0, 1, 0, 0},
			{1, 1, 1, 1, 1, 1, 1, 0},
			{1, 0, 0, 0, 0, 0, 1, 0},
			{1, 0, 0, 0, 0, 0, 1, 0},
			{1, 1, 1, 1, 1, 1, 1, 0},
			{0, 0, 0, 0, 0, 0, 0, 0}
		}
	};

	int i, j, k;
	clrscr();		//Hapus Layar

	for (i = 0; i<2; i++)
	{
		for (j = 0; i<8; j++)
		{
			for (k = 0; k<8; k++)
				if (huruf_A[i][j][k] == 1)
			cout<< '\x41';
			else
				cout<<'\x20';		//Spasi
		cout<<endl;		//Pindah baris
		}	
	}
	return 0;
}