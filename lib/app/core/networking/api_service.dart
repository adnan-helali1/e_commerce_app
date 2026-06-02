import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/models/login_response.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/offers/data/models/offers_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
// Auth Endpoints
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody request);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(@Body() RegisterRequestBody request);

  @POST(ApiConstants.logout)
  Future<void> logout();

  // Home Endpoints
  @GET(ApiConstants.homeDashboard)
  Future<HomeDashboardResponse> getHomeDashboard();

  // offers Endpoints
  @GET(ApiConstants.offers)
  Future<OffersResponse> getOffers(
      @Query('page') int page,
      @Query('category') int category,
      @Query('status') String status,
      @Query('search') String search);
}
