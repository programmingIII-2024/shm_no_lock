#include <stdio.h>
#include <sys/shm.h>
#include <unistd.h>

int main(void)
{
	int *balance;	//口座残高
	int shm_id,temp;

	shm_id = shmget(IPC_PRIVATE, sizeof(int), IPC_CREAT|0666);

	balance = shmat(shm_id,NULL,0);
	printf("account number is %d\n",shm_id);

	*balance = 10000;	//初期残高一万円

	while(1)
	{
		sleep(10);
		temp = *balance;			//共有メモリから残高読みだし
		sleep(0);
		*balance = temp * 1.01;		//共有メモリへ残高書きだし
	}

	return 0;
}

