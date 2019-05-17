#include<iostream>
#include<string>
#include<sstream>
using namespace std;

	struct Mobil
	{
		string Mobil1;
		int harga;
	}Mb1[3];

void printMb(Mobil Mb);

int main ()
{
     string kendaraan;
     int x;
             for(x=0; x<3;x++)
             {
             cout<<"Masukkan Nama Mobil : ";
             getline(cin,Mb1[x].Mobil1);
             cout<<"Masukkan Harga : Rp.";
             
             getline(cin,kendaraan);
             stringstream(kendaraan)>>Mb1[x].harga;                    }
             
       cout<<"\nMobil yang Telah Diinput :\n";
       for(x=0;x<3;x++)
       printMb(Mb1[x]);   
     
return 0;

}

void printMb(Mobil Mb)
{
	cout<<Mb.Mobil1<<"\t";
	cout<<"\tRp. "<<Mb.harga<<",-\n";
}
