// Real-C
#include "ENGINE.hpp"

TRIGGER( message , "trapCheck" )(obj sender, list args)
{
  list Q5IT;
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    getPlayersInRange(Q5IT, getLocation(this), 0x03);
    for(int i = 0x00; i < numInList(Q5IT); i ++)
    {
      damage = dice(0x03, 0x05);
      setCurHP(Q5IT[i], getCurHP(Q5IT[i]) - damage);
    }
  }
  return(0x00);
}

TRIGGER( message , "PPdisarm" )(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

TRIGGER( message , "PPreload" )(obj sender, list args)
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}