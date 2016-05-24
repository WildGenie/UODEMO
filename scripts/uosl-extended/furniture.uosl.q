// UOSL (enhanced)
inherits itemmanip;

trigger creation()
{
  if(hasObjVar(this, "LOCATION"))
  {
    removeObjVar(this, "LOCATION");
  }
  loc location = getLocation(this);
  setObjVar(this, "LOCATION", location);
  return(0x00);
}

trigger wasdropped(obj dropper)
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x09A9:
  case 0x0E7E:
    Q5J8(0x09A9, 0x0E7E, 0x09A9, 0x0E7E);
    break;
  case 0x09AA:
  case 0x0E7D:
    Q5J8(0x09AA, 0x0E7D, 0x09AA, 0x0E7D);
    break;
  case 0x0A9D:
  case 0x0A9E:
    Q5J8(0x0A9D, 0x0A9E, 0x0A9D, 0x0A9E);
    break;
  case 0x0B2C:
  case 0x0B2D:
    Q5J8(0x0B2D, 0x0B2C, 0x0B2D, 0x0B2C);
    break;
  case 0x0B2E:
  case 0x0B2F:
  case 0x0B30:
  case 0x0B31:
    Q5J8(0x0B31, 0x0B2F, 0x0B2E, 0x0B30);
    break;
  case 0x0B32:
  case 0x0B33:
    Q5J8(0x0B32, 0x0B33, 0x0B32, 0x0B33);
    break;
  case 0x0B34:
  case 0x0B35:
    Q5J8(0x0B35, 0x0B34, 0x0B35, 0x0B34);
    break;
  case 0x0B49:
  case 0x0B4A:
  case 0x0B4B:
  case 0x0B4C:
    Q5J8(0x0B49, 0x0B4C, 0x0B4B, 0x0B4A);
    break;
  case 0x0B4E:
  case 0x0B4F:
  case 0x0B50:
  case 0x0B51:
    Q5J8(0x0B50, 0x0B4E, 0x0B4F, 0x0B51);
    break;
  case 0x0B52:
  case 0x0B53:
  case 0x0B54:
  case 0x0B55:
    Q5J8(0x0B54, 0x0B52, 0x0B53, 0x0B55);
    break;
  case 0x0B56:
  case 0x0B57:
  case 0x0B58:
  case 0x0B59:
    Q5J8(0x0B59, 0x0B56, 0x0B57, 0x0B58);
    break;
  case 0x0B5A:
  case 0x0B5B:
  case 0x0B5C:
  case 0x0B5D:
    Q5J8(0x0B5C, 0x0B5A, 0x0B5B, 0x0B5D);
    break;
  case 0x0B7C:
  case 0x0B8F:
    Q5J8(0x0B8F, 0x0B7C, 0x0B8F, 0x0B7C);
    break;
  case 0x0B7D:
  case 0x0B90:
    Q5J8(0x0B90, 0x0B7D, 0x0B90, 0x0B7D);
    break;
  case 0x0E3E:
  case 0x0E3F:
    Q5J8(0x0E3F, 0x0E3E, 0x0E3F, 0x0E3E);
    break;
  case 0x0E42:
  case 0x0E43:
    Q5J8(0x0E43, 0x0E42, 0x0E43, 0x0E42);
    break;
  }
  return(0x01);
}