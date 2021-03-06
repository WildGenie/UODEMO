// Real-C
#include "ENGINE.hpp"

#include "teleportbase.h"

TRIGGER( use )(obj user)
{
  Q4M9(this, user);
  return(0x00);
}

TRIGGER( message , "castspell" )(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  targetLoc(user, this);
  return(0x00);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  place = loc( Q4TC(user, place) );
  if(getZ(place) == (0x00 - 0x80))
  {
    return(0x00);
  }
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if(Q4LT(user, place, this))
  {
    Q4MM(user, place);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

TRIGGER( creation )()
{
  return(0x00);
}