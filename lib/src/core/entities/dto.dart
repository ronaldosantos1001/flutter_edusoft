abstract class IDto{
  /* DTO: Data Transfer Object */
  const IDto();

  /* Method that serialize this class data to a Map object */
  Map<String, dynamic> get map;

  /* Method that create a class instance from a serializable Map object */
  IDto fromMap(Map<String, dynamic> map);
}