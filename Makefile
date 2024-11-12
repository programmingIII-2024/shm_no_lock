CC      = gcc
CFLAGS	= -g -O2 -Wall
LDFLAGS = -L/opt/local/lib
LIBS    = 

MANAGER_OBJS = ac_manager.c
MANAGER_HDRS = 
MANAGER   = ac_manager

MONITOR_OBJS = ac_monitor.c
MONITOR_HDRS = 
MONITOR   = ac_monitor 

WITHDRAW_OBJS = ac_withdrawal.c
WITHDRAW_HDRS = 
WITHDRAW   =  ac_withdrawal

all: $(MANAGER) $(MONITOR) $(WITHDRAW)

$(MANAGER):$(MANAGER_OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $(MANAGER_OBJS)

$(MONITOR):$(MONITOR_OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $(MONITOR_OBJS)

$(WITHDRAW):$(WITHDRAW_OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $(WITHDRAW_OBJS)

clean:; rm -f *.o $(MANAGER) $(MONITOR) $(WITHDRAW)

