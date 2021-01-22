enum LocationEnum { api, backpack, cache, data }

class EnumHelper {
  static String locationEnumToString(LocationEnum locationEnum){
    switch (locationEnum) {
      case LocationEnum.api:
        return "API";
        break;
      case LocationEnum.backpack:
        return "BACKPACK";
        break;
      case LocationEnum.cache:
        return "CACHE";
        break;
      case LocationEnum.data:
        return "DATA";
        break;
      default:
        return "404 NOT FOUND";
    }
  }

}
