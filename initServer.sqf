countDown = 10;

//hurts performance and bandwidth if done a lot
publicVariable "countDown";

while {countDown > -1} do 
{
countDown = countDown - 1;
publicVariable "countDown";

sleep 1;
};