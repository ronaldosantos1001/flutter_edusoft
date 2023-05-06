// import 'package:dio/dio.dart';
// import 'package:indoai/app/IoC/dependencys_containers.dart' as kiwi;

// import 'package:indoai/app/IoC/modules/dio/decorators/decorator.dart';
// import 'package:indoai/app/IoC/modules/dio/errors/invalid_token_error.dart';
// import 'package:indoai/app/IoC/modules/shared_preferences/repository/preferences_repository.dart';
// import 'package:indoai/app/auth/domain/usecases/auth/auth_request_token_usecase.dart';

// class AccessTokenDecorator extends IDecorator{
//   /* 
//     AccessTokenDecorator class must call an decoratee function that will make a http request, if that returns an 401 unathenticated error
//     this class will refresh the token by calling the _usecase param, it's must be a function that recover a new token and insert in the local 
//     preferences
//   */
//   final AuthTokenUsecase _usecase;

//   const AccessTokenDecorator(this._usecase, Function decoratee) : super(decoratee);

//   @override
//   Future call() async {
//     try{
//       return await decoratee.call();
//     } catch(error){
//       if(error is DioError){
//         if(error.error is InvalidTokenError){
//           final _prefs = kiwi.container.resolve<PreferencesRepository>();
//           await _usecase.call(_prefs.getCredentials()!);
//           return await decoratee.call();
//         }
//       }
//       rethrow;
//     }
//   }
// }