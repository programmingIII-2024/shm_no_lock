#include <stdio.h>
#include <stdlib.h>
#include <sys/shm.h>

// 第一引数=口座番号(共有メモリID)、第二引数=入出金額
int main(int argc, char *argv[])
{
	int *balance;	//口座残高
	int shm_id;
	int now;
	int difference;	//残高増減値

	shm_id = atoi(argv[1]);
	difference = atoi(argv[2]);


	balance = shmat(shm_id,NULL,0);
	
	now = *balance;
	*balance = now + difference;

	printf("%d円入金しました。\n",difference);

	return 0;
}


